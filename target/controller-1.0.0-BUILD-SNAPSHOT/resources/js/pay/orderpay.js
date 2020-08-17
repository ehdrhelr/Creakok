// php number_format와 같은함수
String.prototype.number_format = function() {
    return this.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,');
}

/**
 * 리턴결과처리 함수
 * 암호화해야 되는 값들은 삭제처리 -> orderpay form을 이용하면서 필요 없게됨.
 */
var use_cashbill = false;
var is_neogift = false;
function get_return_data(frm_name) {
    if (undefined == frm_name) { frm_name = 'orderpay'; }
    if (0  == frm_name.length) { frm_name = 'orderpay'; }

    // 암호화해야되는 필드들
    var _op_data = [];
    var _cashbill_obligatory = '';

    // 계산용이라는 의미의 변수 calculate_return.
    jQuery('form[name='+ frm_name +']').append("<input type='hidden' name='calculate_return' value='true'>");

    // 유효성 검사 -> 아직 없음. 
    jQuery.each(jQuery('form[name='+ frm_name +']').serializeArray(), function() {
        var val = {
            'name' : this.name,
            'value': this.value
        };
        _op_data.push(val);

        // 현금영수증 의무발행
        if (this.name == 'cashbill_obligatory') {
            _cashbill_obligatory = this.value;
            _cashbill_obligatory = _cashbill_obligatory.split('|');
        }
    });

    jQuery.ajax({
        type : 'POST',
        dataType : 'json',
        async : false,
        url : '/shop/order_verification.html',
        data : _op_data,
        success : function(response) {
            // orderpay.common을 다녀올경우 새로시작!
            jQuery('#smart_orderpage_pricelist').children().remove(); 

            // 최종결제금액이 0원인 경우 무통장을 제외하고 전부 숨김처리
            if (response.total_price <= 0) {
                onlyBankSelect('hide');
            }

            // 적립예정 적립금
            showExpectReserve(response.expect_reserve);

            if(response.order_success === true) {
                var total_list = {
                        'delivery' : response.op_delivery_price['total']
                        , 'sale' : response.op_sale_price['total']
                        , 'add' : response.op_add_price['total']
                    },
                    list_list = {
                        'delivery' : response.op_delivery_price['list']
                        , 'sale' : response.op_sale_price['list']
                        , 'add' : response.op_add_price['list']
                    };
                // 결제수단별 할인.(현금할인)
                jQuery('.op-bank-dc-price').text('');
                if (jQuery('.op-bank-dc-price').length > 0 && response.op_bank_dc_price.text != undefined) {
                    jQuery('.op-bank-dc-price').text('(' + response.op_bank_dc_price.text + ')').attr('price', response.op_bank_dc_price.price).show();
                }
                // 카드수수료.
                jQuery('.op-card-dc-price').text('');
                if (jQuery('.op-card-dc-price').length > 0 && response.op_bank_dc_price.card != undefined) {
                    jQuery('.op-card-dc-price').text('(' + response.op_bank_dc_price.card.text + ')').attr('price', response.op_bank_dc_price.card.price).show();
                }
                // 핸드폰
                jQuery('.op-hp-dc-price').text('');
                if (jQuery('.op-hp-dc-price').length > 0 && response.op_bank_dc_price.hp != undefined) {
                    jQuery('.op-hp-dc-price').text('(' + response.op_bank_dc_price.hp.text + ')').attr('price', response.op_bank_dc_price.hp.price).show();
                }
                // 현금 영수증 발행 여부 체크                                                     
                if (response.pay_method == 'B' && response.cashbill_ok) {
                    use_cashbill = true;
                } else {
                    use_cashbill = false;
                }

                // grep 용
                // .block-op-delivery-price .block-op-sale-price .block-op-add-price 
                // #block_op_tooltip_delivery #block_op_tooltip_sale #block_op_tooltip_add

                // 배송비, 할인금액, 추가금액 총합, 레이어 금액 넣어주기
                var _layer_arr = new Array('delivery', 'sale', 'add');
                for(var idx=0; idx < _layer_arr.length; idx++) {
                    var _temp = _layer_arr[idx];

                    //총합 금액
                    if (jQuery('.block-op-'+_layer_arr[idx]+'-price').length > 0 && jQuery.isNumeric(total_list[_temp]) === true) {
                        jQuery('.block-op-'+_layer_arr[idx]+'-price').text(total_list[_temp]);
                        jQuery('.block-op-'+_layer_arr[idx]+'-price').attr('price', total_list[_temp]);
                    }

                    // 레이어 금액
                    var _value = [];
                    for(var op_title in list_list[_temp]) {
                        var _op_price = list_list[_temp][op_title];
                        if (1 <= _op_price.toString().length && 0 != parseInt(_op_price)) {
                            _value.push({ 'name' : op_title, 'value' : _op_price });
                        }
                    }
                    smart_orderpage_refresh_tooltip(_layer_arr[idx], _value, response.total_price);
                }

                // ktprice 재계산. -> OKCASHBAG 포인트 사용 기준이 된다.
                if (response.op_add_price && Math.abs(parseInt(response.op_add_price.list['추가정보 금액']))) {
                    var _add_price = parseInt(response.op_add_price.list['추가정보 금액']);
                    var _ktprice   = document.form1.ktprice;
                    document.form1.ktprice.value = parseInt(_ktprice.getAttribute('origin-data-value')) + _add_price;
                }

                // 결제예정금액 계산 후 적용.
                var _usereserve = jQuery('#usereserve');
                var _okreserve  = jQuery('#okreserve');
                var _useemoney  = jQuery('#useemoney');
                var _okemoney   = jQuery('#okemoney');
                // 최종결제금액 호출 후 적립금 변경 있을 경우
                if (_usereserve.length > 0 && Math.abs(parseInt(_usereserve.val())) != Math.abs(parseInt(response.op_sale_price.list['적립금 사용']))) {
                    var _reserve_total = parseInt(_usereserve.val()) + parseInt(_okreserve.val());
                    _usereserve.val(Math.abs(parseInt(response.op_sale_price.list['적립금 사용'])));
                    reservecheck(_reserve_total);
                    _usereserve.trigger('focusout');
                }
                // 최종결제금액 호출 후 예치금 변경 있을 경우
                if (_useemoney.length > 0 && Math.abs(parseInt(_useemoney.val())) != Math.abs(parseInt(response.op_sale_price.list['예치금 사용']))) {
                    var _emoney_total = parseInt(_useemoney.val()) + parseInt(_okemoney.val());
                    _useemoney.val(Math.abs(parseInt(response.op_sale_price.list['예치금 사용'])));
                    emoneycheck(_emoney_total);
                    _useemoney.trigger('focusout');
                }
                // 현금영수증 의무 발행
                if (response.pay_method == 'B' && jQuery('#cashbill').length > 0) {
                    if (_cashbill_obligatory[0] == 'Y' || (_cashbill_obligatory[0] == 'U' && (Number(response.total_price) >= Number(_cashbill_obligatory[1])))) {
                        jQuery('#cashbill').addClass('obligatory');
                        if (jQuery('div#cashbill_data').hasClass('have_str') === false) { 
                            jQuery('div#cashbill_data').addClass('have_str').after("<div id='obligatory_noti' style='color:red; font-size:8pt; padding-top:10px; padding-left:10px;'>* 투명한 온라인 거래를 위해서 현금영수증 의무발행을 사용하고 있습니다.<br/>* 현금영수증을 신청하지 않아도 의무발행제도에 의하여 '국세청 발급번호 010-000-1234'로 발행 됩니다.</div>");
                            jQuery('#obligatory_noti').css('display', 'none');
                        }
                    }
                }

                // 간단가입 할인 금액 변경.
                // TODO:: 본문소스로 옮기고 싶다.
                if (document.form1.apply_simple_join && document.form1.apply_simple_join.value == 'Y') {
                    if (Math.abs(response.op_sale_price.list['간단가입 할인']) > 0) {
                        jQuery('#join_benefit').val(Math.abs(response.op_sale_price.list['간단가입 할인']));
                    } else {
                        jQuery('#join_benefit').val(0);    
                    }
                }

                // 추가배송비 계산. // list['당일 배송'], list['추가 배송'] // 추가 배송비 제외
                if (response.op_delivery_price) {
                    var _add_deli_price = 0;
                    _add_deli_price += (response.op_delivery_price.list['지역별 추가 배송'] != undefined) ? parseInt(response.op_delivery_price.list['지역별 추가 배송']) : 0; 
                    document.form1.add_deli_price.value = _add_deli_price;
                }

                // 쿠폰 혜택 문구 변경.
                jQuery('.coupon-description').text('');
                if (response.op_sale_price.select_coupon_desc) {
                    jQuery('.coupon-description').text('(' + response.op_sale_price.select_coupon_desc + ')');
                }

                // 캐쉬백 사용금액 쿠폰으로 인해 조정되었을 경우 금액 변경 적용.
                if (typeof document.form1.ocb_msecure_key != 'undefined') { // OK캐쉬백 사용
                    var okcashbag = document.form1.ocb_trans_price.value;
                    if (okcashbag.length > 0 && parseInt(Number(okcashbag)) != parseInt(Number(response.ocb_trans_price))) {
                        okcashbag = parseInt(Number(response.ocb_trans_price));
                        if (okcashbag <= 0) { 
                            alert('포인트를 사용할 수 없습니다. - 판매가격이 0원 입니다.(배송비 제외)');
                            cancel_point(); 
                        }
                        document.form1.okcashbag.value = okcashbag;
                        document.form1.ocb_trans_price.value = okcashbag;
                    }
                }

            } else {
                // 최종결제금액 : 결제 예정금액 +(-) 결제수단별 가격
                jQuery('#op_total_price').text(response.total_price.toString().number_format());
                pay_agree_init();
                alert(response.message);
                if (response.return_basket === true) {
                    document.location.href='basket.html';
                }
            }
        },
        error: function() { 
            //alert('에러 : 잠시 후 다시 시도해주시기 바랍니다.'); 
        }
    });
    jQuery('form[name='+ frm_name +'] input:hidden[name=calculate_return]').remove();
}

/**
 * 무통장만 선택가능 처리
 * ex) 최종결제금액이 0원이면 무통장만 가능
 * 
 * type - show / hide
 * show 모든 결제수단 선택가능
 * hide 무통장만 선택가능
 */
function onlyBankSelect(type) {
    jQuery('form[name=form1] input:radio[name=radio_paymethod]').each(function() {
        if (type == 'show') {
            jQuery(this).attr('disabled', false);
        } else {
            var _temp_exists_b = false;
            if (jQuery(this).val() == 'B') {
                jQuery(this).attr('checked', true);
                jQuery('form[name=form1] input[name=paymethod]').val('B');
                jQuery('form[name=form1] select[name=pay_data]').prop('disabled', false);
                jQuery('form[name=form1] select[name=pay_data]').trigger('change');
                showHidePayUnit('won');
                _temp_exists_b = true;
            } else {
                jQuery(this).attr('disabled', true);
            }

            // 카드결제전용인 경우 카드외 수단(적립금,예치금,쿠폰)으로 전액결제하면 무통장으로 넘겨야됨
            if (_temp_exists_b === false) {
                jQuery('form[name=form1] input[name=paymethod]').val('B');
            }

            // 주의문구 다른건 숨기고 무통장 주의문구만 노출
            if (jQuery('#order .payment-info').length > 0) {
                jQuery('#order .payment-info').each(function() {
                    jQuery(this).css('display', 'none');
                });
                jQuery('#order #payinfo_B').css('display', 'block');
            }
        }
    });
    // 금액 변경시 고급형 사은품 관련 처리
    if (is_neogift === true) {
        if (jQuery.isFunction(neogift_order.get_gift_list) === true) {
            var _paymethod = jQuery('form[name=form1] input[name=radio_paymethod]:checked');
            if (_paymethod && _paymethod.length > 0) {
                neogift_order.get_gift_list(_paymethod.val(), 'N');
            }
        }
    }
}

/*
 * 최종결제금액 단위 show, hide 처리
 * type - won / dollar
 */
function showHidePayUnit(type) {
    if (jQuery('#block_unit_won').length > 0 && jQuery('#block_unit_dollar').length > 0) {
        var _block_unit_won     = jQuery('#block_unit_won');
        var _block_unit_dollar  = jQuery('#block_unit_dollar');

        if (type == 'won') {
            _block_unit_won.css('display', '');
            _block_unit_dollar.css('display', 'none');
        } else if (type == 'dollar') {
            _block_unit_dollar.css('display', '');
            _block_unit_won.css('display', 'none');
        }
    }
}
        
// 결제 예정금액 - price로만 change
function showExpectReserve(price) {
    if (price == undefined) price = 0;
    if (jQuery("#block_expect_reserve").length > 0) {
        jQuery("#block_expect_reserve").text(price.toString().number_format());
    }
}

// 해외결제 나라별 주의문구 이미지 변경
function ch_paypalimg(temp){
    if (jQuery("#payinfo_A").length > 0) {
        jQuery("#payinfo_A img").attr("src", "/images/common/paypal_text_"+temp+".gif");
    }
}

/**
 * '주문하기' 눌렀을때 엑티브엑스 설치 확인
 * TODO:: 문구 수정필요
 * TODO:: checkActivex 함수 여부
 */
function ActiveXSendCheck() {
    if (document.form1.simplepay_type.value == '') {
        if (checkActivex() == false) {
            alert('플러그인을 설치하셔야 다음으로 결제진행이 가능합니다.\n플러그인을 설치하시고 결제를 선택해주세요');
            return false;
        }
    }
}

// '뱅킹' 링크
function linkvalue(){
    var bank_url = document.form1.link_value[document.form1.pay_data.options.selectedIndex].value;
    if(bank_url.length>0){
       window.open(bank_url,"_blank");
    }else if(document.form1.pay_data.options.selectedIndex>0) alert('바로가기가 존재하지 않습니다.');
    else alert('은행계좌를 선택해주세요');
}

// tooltip layer refresh
// 주문상품 할인적용 레이어 새로고침
function smart_orderpage_refresh_tooltip(layer_name, append_el, orderpay_total) {
    var _tooltip    = jQuery('#block_op_tooltip_' + layer_name), 
        _nowtotal   = jQuery('.block-op-'+ layer_name +'-price'),
        _total = 0, _append = '', _field = [];
    var _pricelist  = jQuery('#smart_orderpage_pricelist'),
        _pricelist2 = jQuery('input[name^=smart_op_' + layer_name + ']', _pricelist),
        _append2    = '';

    jQuery.each(append_el, function(i) {
        if ('' != this.name) {
            var _this_name = this.name,
                _this_val  = this.value,
                _field_skip = false;
            // hidden 버전.
            jQuery.each(_pricelist2, function(j) {
                if (_this_name == jQuery(this).attr('data-field-name')) { // 동일한 field 명은 삭제 후 재추가!
                    jQuery(this).remove();
                }
                if (0 == parseInt(_this_val)) { _this_val = 0; }
            });
            // 유효성 검사 통과한 것들만.
            if (!_field_skip) {
                _append2 += '<input type="hidden" name="smart_op_' + layer_name + '[]" data-field-name="' + _this_name + '" value="' + _this_val + '">';
            }
        }
    });
    _pricelist.append(_append2);
    // 최종 금액 
    smart_orderpage_refresh_sum(layer_name, orderpay_total);
} // END func

// sum field refresh
// 주문상품 할인적용 각 레이어별 총 합, 결제 예정금액 새로고침.
// TODO:: sum 각 영역별 합계금액도 input hidden 으로 따로 처리해야함.
// TODO:: sum 각 영역별 합계금액도 input hidden 으로 따로 처리해야함.
// TODO:: sum 각 영역별 합계금액도 input hidden 으로 따로 처리해야함.
function smart_orderpage_refresh_sum(layer_name, orderpay_total) {
    var _tooltip  = jQuery('#block_op_tooltip_' + layer_name), 
        _nowtotal = jQuery('.block-op-'+ layer_name +'-price'),
        _sumtotal = jQuery('.block-op-sum-price'),
        _base     = _nowtotal.closest('div .base'), 
        _total    = 0;
    var _pricelist  = jQuery('#smart_orderpage_pricelist'),
        _pricelist2 = jQuery('input[name^=smart_op_' + layer_name + ']', _pricelist);
    var _op_deli_after_def  = jQuery('input[name=op_deli_after]').val(), // 기본배송비가 착불
        _op_deli_after      = 'N';                                       // 배송비 결제여부 착불여부
    var _op_freedeli_coupon = document.orderpay.op_freedeli_coupon.value;// 배송비 무료쿠폰

    // 배송비 결제여부 - 착불이면 _op_deli_after 가 Y!!
    if (layer_name == 'delivery' && jQuery('select[name=choice_delivery]').length > 0) {
        jQuery('select[name=choice_delivery] option').each(function() {
            if (jQuery(this).is(':selected') === true && jQuery(this).val() == 'after_payment') {
                _op_deli_after = 'Y';
            }
        }); // END each
    }

    // 총합 제거
    jQuery('p.total', _tooltip).remove();

    // hidden 버전. 추가된 field 계산하여 총합 구함.
    jQuery.each(_pricelist2, function(j) {
        var _temp = jQuery(this).val();

        // 배송비 결제여부가 착불이면 배송비들을 0으로
        if (layer_name == 'delivery' && _op_deli_after == 'Y') {
            _temp = 0;
        }

        if (typeof _temp != 'undefined' && jQuery.isNumeric(_temp)) {
            _total += parseInt(_temp);
        }
    });
    _nowtotal.attr('price', _total).text(Math.abs(_total).toString().number_format());

    // 배송비 무료, 착불 표시
    if (layer_name == 'delivery') {
        if (_total == 0) {
            _nowtotal.text((_op_deli_after == 'Y' || _op_deli_after_def == 'Y' || _op_deli_after_def == 'EY') ? '착불' : '무료');
            if (_op_freedeli_coupon == 'N' || _op_freedeli_coupon == 'Y' || _op_freedeli_coupon == 'A') _nowtotal.text('무료');
            jQuery('#block_op_delivery_unit').css('display', 'none');
        } else {
            jQuery('#block_op_delivery_unit').css('display', '');
        }
        // 쿠폰 폼에 배송비 값 넣어줌. (배송비 무료쿠폰 구분위해서)
        if (typeof document.coupon != 'undefined') {
            document.coupon.deli_price.value = _total; 
        }
    }

    // ico change
    if (_total < 0) {
        jQuery('a.plus',  _base).hide();
        jQuery('a.minus', _base).show();
    } else {
        jQuery('a.plus',  _base).show();
        jQuery('a.minus', _base).hide();
    }

    var _sum_total = 0;
    var _chk_flag = [];
    jQuery('span.op-total').each(function(i) {
        var _temp = jQuery(this).attr('price');
        var _class = jQuery(this).attr('class').split(' ')[1];

        if (_class.indexOf('block-op-') >= 0 && _chk_flag.join(',').indexOf(_class) < 0) {
            _chk_flag.push(_class);

            if (typeof _temp != 'undefined' && jQuery.isNumeric(_temp)) {
                _temp = _temp.split(',').join('');
                _sum_total += parseInt(_temp);
            }
        }
    });
    if (_sum_total < 0) _sum_total = 0;
    _sumtotal.attr('price', _sum_total);
    _sumtotal.text(_sum_total.toString().number_format());

    // 최종 결제 금액
    smart_orderpage_refresh_total(orderpay_total);
} // END func

// final total field refresh
// 최종 결제 금액 새로고침.
function smart_orderpage_refresh_total(total_price) {
    var _total = 0, _paymethod_sale = 0;
    var _ktprice = 0, _cardprice = 0;
    var _chk_flag = [];
    //if (total_price == undefined) {
    jQuery('span.op-total').each(function(i) {
            var _temp = jQuery(this).attr('price');
            var _class = jQuery(this).attr('class').split(' ')[1];

            if (_class.indexOf('block-op-') >= 0 && _chk_flag.join(',').indexOf(_class) < 0) {
                _chk_flag.push(_class);

                if (typeof _temp != 'undefined' && jQuery.isNumeric(_temp)) {
                    _temp = _temp.split(',').join('');
                    _total += parseInt(_temp);
                    // 할인제외.
                    if (true !== jQuery(this).hasClass('block-op-sale-price')) { 
                        _cardprice += parseInt(_temp);
                        // ktprice 배송비 제외.
                        if (true !== jQuery(this).hasClass('block-op-delivery-price')) { _ktprice += parseInt(_temp); }
                    }
                }
            }
        });

        // 결제수단별 할인 금액 적용.
        var _paymethod      = jQuery('input:radio[name=radio_paymethod]:checked');
        var _paymethod_dctext = 'bank';

        jQuery('#paypal_list').hide(); // 페이팔. 국가언어 선택.
        switch(_paymethod.val()) {
            case 'B':
                // 현금영수증
                if (typeof MOBILE_USE != 'undefined' && MOBILE_USE != 1) {
                    if (use_cashbill) { // 현금영수증 사용 가능이면
                        if (_total <= 0) {
                            jQuery('#cashbill').css('display', 'none');
                        } else {
                            if (jQuery('#evidence').css('display') != 'block') {
                                jQuery('#cashbill').css('display', '');
                            } 
                        }
                    } else {
                        jQuery('#cashbill').css('display', 'none');
                    }
                }
            case 'V': // ???
            case 'S': // ??? 
            case 'Y' :
            case 'M' :
                _paymethod_sale = _paymethod.parent().find('.op-'+ _paymethod_dctext +'-dc-price').attr('price');
                if (_paymethod_sale != undefined) { _paymethod_sale *= -1; } // B만 할인.
                break;
            case 'A':
                jQuery('#paypal_list').show();  // 페이팔. 국가언어 선택.
                showHidePayUnit('dollar');
                if (total_price == undefined) { // total_price 가 없는 경우 무통장으로 선택처리 - $ 금액 표시때문에....
                    onlyBankSelect('hide');
                }
                break;
            case 'C':
            case 'PAYCO':
            case 'KAKAOPAY':
            case 'SAMSUNGPAY':
            case 'SSGPAY' :
            case 'SETTLE_BANK' :
            case 'SMILEPAY' :
            case 'TOSS' :
                _paymethod_dctext = 'card';
                _paymethod_sale = _paymethod.parent().find('.op-'+ _paymethod_dctext +'-dc-price').attr('price');
                break;
            case 'D':
                _paymethod_dctext = 'hp';
                _paymethod_sale = _paymethod.parent().find('.op-'+ _paymethod_dctext +'-dc-price').attr('price');
                break;
        }
        onlyBankSelect('show');
        if (_total <= 0) { // 결제금액이 0 보다 작아지는 경우 0으로 치환하고 무통장만 보이도록 처리
            _total = 0;
            onlyBankSelect('hide');
        } else {
            if (_paymethod_sale != undefined) { 
                _total = parseInt(_total) + parseInt(_paymethod_sale); 
            } // 결제수단 할인.
        }
    //}

    // orderpay.common 에서 리턴받은 total_price 와 스크립트 계산한 _total 이 다른경우 total_price 로 출력
    if (total_price != undefined && total_price != _total) {
        _total = total_price;
    }

    // 최종 결제 금액 0보다 작아지면 0으로 출력
    if (_total < 0) _total = 0;

    // 금액 변경시 고급형 사은품 관련 처리
    if (is_neogift === true) {
        if (jQuery.isFunction(neogift_order.change_order_price) === true) {
            neogift_order.change_order_price(_total);
        }
    }

    // 최종결제금액 : 결제 예정금액 +(-) 결제수단별 가격
    jQuery('#op_total_price').text(_total.toString().number_format()).attr('price', _total);

//    // ie 하위버전에서 strong태그 안보이는 경우 있어서 focus줌
//    jQuery('.block-op-total-price').focus();
} // END func

// 할인 초기화
var smart_orderpage_disc_init = function() {
    var frm = document.form1;
    if (guest_type != 'guest') { // 회원
        // 즉시할인/적립 
        if (typeof frm.choice_reserve != 'undefined') {
            jQuery('#mk_re_opt_sel option:eq(' + frm.org_choice_reserve_select.value + ')').prop('selected', true);
            pre_choice_reserve_select = frm.org_choice_reserve_select.value; // 초기화시 최초 설정값으로 저장.
            jQuery('#choice_reserve_table').show();
            jQuery('.select-reserve-discount').show();
        }
        // 적립금 사용 
        if (typeof frm.usereserve != 'undefined') {
            var _usereserve = frm.usereserve.value;
            var _okreserve  = (typeof frm.okreserve != 'undefined') ? frm.okreserve.value : 0;
            frm.usereserve.value = 0;
            if (typeof frm.okreserve != 'undefined') {
                frm.okreserve.value = parseInt(_usereserve) + parseInt(_okreserve);
            }
            if (typeof frm.all_check_reserve != 'undefined') frm.all_check_reserve.checked = false; // 전액사용 해제
        }
        // 예치금 사용
        if (typeof frm.okemoney  != 'undefined') {
            var _useemoney = frm.useemoney.value;
            var _okemoney  = (typeof frm.okemoney != 'undefined') ? frm.okemoney.value : 0;
            frm.useemoney.value = 0;
            if (typeof frm.okemoney != 'undefined') {
                frm.okemoney.value = parseInt(_useemoney) + parseInt(_okemoney);
            }
            if (typeof frm.all_check_emoney != 'undefined') frm.all_check_emoney.checked = false; // 전액사용 해제
        }
        // 쿠폰 사용  
        if (typeof frm.couponnum != 'undefined') {
            if (MOBILE_USE == '1') { // 모바일
                $('input[name="couponnum"]', 'form[name="orderpay"]').val('');
                $('input[name="op_freedeli_coupon"]', 'form[name="orderpay"]').val('');
                $('#coupon input[name="selected_coupon"]').prop('checked', false);
                $('input[name="couponnum"]', 'form[name="form1"]').val('');
                frm.bankonly.value = 'N';
                choice_reserve_show('show'); // 적립금 즉시 할인 show
                if ($('.coupon .coupon_cancel').length > 0 && !$('input[name="couponnum"]', 'form[name="form1"]').val()) { // 쿠폰선택 취소 버튼 있을경우 숨김.
                    $('.coupon .coupon_cancel').hide();
                }
            } else { // PC
                frm.couponnum.value = '';
                document.orderpay.op_freedeli_coupon.value='';
            }
        }
    } else { // 비회원
        if (typeof frm.user_id != 'undefined') { // 비회원::간단가입 할인 취소.
            cancel_join_simple();
        }
    }
    if (typeof frm.ocb_msecure_key != 'undefined') { // OK캐쉬백 사용
        cancel_point();
    }
    pay_agree_init();
    // 결제 예정금액, 최종 결제금액
    orderpay();
    if (guest_type != 'guest') { // 회원
        // 적립금/예치금 전액사용 해제 체크, 최종 결제금액 호출 후로 이동.
        allCheckUse('reserve');
        allCheckUse('emoney');

        // 할인 초기화 이후 결제예정금액 0원일 경우 적립금/예치금 사용불가.
        var _block_op_sum_price = (typeof jQuery('.block-op-sum-price').attr('price') == 'undefined') ? 0 : jQuery('.block-op-sum-price').attr('price');
        if (parseInt(_block_op_sum_price) == 0) {
            all_check_disable('reserve', true);
            all_check_disable('emoney',  true);
        }
    }
} // END function

// smart_orderpage_refresh_tooltip 전달 temp_value 만드는 func
function make_smartop_tempvalue(name, value) {
    if (name.length == 0 ) { return ''; }
    if (value.length == 0) { return ''; }
    var _ret = [{ 'name' : name, 'value' : value }];
    return _ret;
} // END func.

// 주문동의 체크 해제
function pay_agree_init() {
    if (jQuery('input[name="pay_agree"]').length > 0) {
        jQuery('input[name="pay_agree"]').prop('checked', false);
    }
}

// 배송비 영역 - 무료, 착불 표시
function chg_delivery_title(op_deli_after) {
    if (jQuery('.block-op-delivery-price') !== 'undefined') { 
        if (op_deli_after == 'Y' || op_deli_after == 'EY') {
            jQuery('.block-op-delivery-price').text('착불');
            jQuery('#block_op_delivery_unit').css('display', 'none');
        } else {
            jQuery('.block-op-delivery-price').text('무료');
            jQuery('#block_op_delivery_unit').css('display', 'none');
        }
    }
}
