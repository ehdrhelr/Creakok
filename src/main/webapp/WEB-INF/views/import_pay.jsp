<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
var IMP = window.IMP;
IMP.init('imp94223712');
IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '${payInfo.product_name}',
    amount : '${payInfo.price_amount}',
    buyer_email : '${payInfo.email}',
    buyer_name : '${payInfo.delivery_name}',
    buyer_tel : '${payInfo.delivery_phone}',
    buyer_addr : '${payInfo.address_road}'+'${payInfo.address_detail}',
    buyer_postcode : '${payInfo.address_num}'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
       	
        location.href="goods_pay_success.do?success_num="+rsp.imp_uid+"&success_id="+rsp.merchant_uid+"&success_amount="+rsp.paid_amount+"&success_card_num="+rsp.apply_num+"&success_pay="+rsp.success+
        		"&buyer_name="+rsp.buyer_name+"&product_name="+rsp.name+"&amount="+rsp.amount+"&buyer_email="+rsp.buyer_email+"&buyer_phone="+rsp.buyer_tel+
        		"&buyer_addr="+rsp.buyer_addr+"&buyer_postcode="+rsp.buyer_postcode;
        
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        
        location.href="goods_pay_fail.do?error_msg="+rsp.error_msg;
    }
});


</script>
  </body>
</html>