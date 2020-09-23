package creakok.com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import creakok.com.domain.Order_Info;
import creakok.com.service.GoodsService;
import creakok.com.service.PayService;
import creakok.com.vo.PayInfoVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class PaymentController {
	@Autowired
	private PayService payservice;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("goods_pay.do")
	public ModelAndView goods_pay(HttpServletRequest request) {
		String buyer_name = request.getParameter("name");
		String buyer_phone = request.getParameter("phone_number");
		String buyer_email = request.getParameter("email");
		
		
		String delivery_name = request.getParameter("delivery_name");
		String delivery_phone = request.getParameter("delivery_phone");
		String address_num = request.getParameter("address_num");
		String address_road = request.getParameter("address_road");
		String address_detail = request.getParameter("address_detail");
		String address_land = request.getParameter("address_land");
		
		String price_amountStr = request.getParameter("price_amount");
		String product_qtyStr = request.getParameter("product_qty");
		String product_name = request.getParameter("product_name");
		String email =  request.getParameter("email");
		
		String rec_addr = address_num+address_road+address_detail+address_land;
		
		long price_amount = Long.parseLong(price_amountStr);
		long product_qty = Long.parseLong(product_qtyStr);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&name: "+delivery_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&delivery_phone: "+delivery_phone);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_num: "+address_num);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_road: "+address_road);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_detail: "+address_detail);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_land: "+address_land);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&price_amount: "+price_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_qty: "+product_qty);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		

		PayInfoVo payInfo = new PayInfoVo(delivery_name, delivery_phone, address_num, address_road, address_detail, address_land, price_amountStr, product_qtyStr, product_name, email);

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("import_pay_post");
		mv.addObject("payInfo", payInfo);	 //order_index 같이 넘겨쥼
		
		return mv;
	} 
	
	@ResponseBody
	@RequestMapping("cart_goods_pay.do")
	public ModelAndView cart_goods_pay(HttpServletRequest request) {
		String buyer_name = request.getParameter("name");
		String buyer_phone = request.getParameter("phone_number");
		String buyer_email = request.getParameter("email");
		
		
		String delivery_name = request.getParameter("delivery_name");
		String delivery_phone = request.getParameter("delivery_phone");
		String address_num = request.getParameter("address_num");
		String address_road = request.getParameter("address_road");
		String address_detail = request.getParameter("address_detail");
		String address_land = request.getParameter("address_land");
		String rec_addr = address_num+address_road+address_detail+address_land;

		String email =  request.getParameter("email");
		
		//상품명, 수량, 총 가격 받기
		String[] product_name_list = request.getParameterValues("product_name");
		String[] product_qty_list = request.getParameterValues("product_qty");
		String price_amountStr = request.getParameter("price_amount");
		
		
		
		long price_amount = Long.parseLong(price_amountStr);
		//long product_qty = Long.parseLong(product_qtyStr);
		
		String product_name2 = "";
		String product_name = "";
		for(int i=0; i<product_name_list.length; i++) {
			product_name2 += product_name_list[i]+", ";
			product_name = product_name2.substring(0, product_name2.length()-2);
		}
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		
		long one_product_qty;
		long qty_amount = 0L;
		String amount_product_qtyStr = "";
		for(int a=0; a<product_qty_list.length; a++) {
			one_product_qty = Long.parseLong(product_qty_list[a]);
			qty_amount += one_product_qty;
			amount_product_qtyStr = Long.toString(qty_amount);
		}
		String product_qtyStr = "총 "+amount_product_qtyStr+"개";
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_qtyStr: "+product_qtyStr);

		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&name: "+delivery_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&delivery_phone: "+delivery_phone);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_num: "+address_num);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_road: "+address_road);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_detail: "+address_detail);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_land: "+address_land);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&price_amount: "+price_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_qty: "+product_qty);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&orderList: "+orderList);
		

		PayInfoVo payInfo = new PayInfoVo(delivery_name, delivery_phone, address_num, address_road, address_detail, address_land, 
				price_amountStr, product_qtyStr, product_name, email);

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("import_pay_post");
		mv.addObject("payInfo", payInfo);	 //order_index 같이 넘겨쥼
		
		return mv;
	} 	
	
	
	
	@ResponseBody
	@RequestMapping("goods_pay_success.do")
	public ModelAndView goods_pay_success(Order_Info order_info2, @RequestParam("buyer_postcode") String buyer_postcode) {
		//String buyer_name = request.getParameter("buyer_name");
		//String buyer_phone = request.getParameter("buyer_phone");
		//String member_email = request.getParameter("buyer_email");

		//String buyer_addrStr = request.getParameter("buyer_addr");
		//String buyer_postcode = request.getParameter("buyer_postcode");
		
		//String buyer_addr = buyer_addrStr+buyer_postcode;
		
		//String product_name = request.getParameter("product_name");
		//String amount = request.getParameter("amount");
		
		//String success_num = request.getParameter("success_num"); //고유ID
		//String success_id = request.getParameter("success_id"); //상점 거래ID
		//String success_amountStr = request.getParameter("success_amount"); //결제 금액 
		//String success_card_num = request.getParameter("success_card_num"); //카드 승인번호
		//String success_pay = request.getParameter("success_pay"); //결제 성공 여부		

		//Long success_amount = Long.parseLong(success_amountStr);
		//Long amount = Long.parseLong(amountStr);
		
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&고유 ID: "+success_num);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&상점 거래ID: "+success_id);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&결제 금액: "+success_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&success_pay: "+success_pay);	
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_name: "+buyer_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&amount: "+amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_email: "+member_email);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_phone: "+buyer_phone);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_addr: "+buyer_addr);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_postcode: "+buyer_postcode);
		
	    // Post 방식  
	    String addr = order_info2.getBuy_addr();
	    String buyer_addr = addr + " " + buyer_postcode;
	    
	    order_info2.setOrder_index(-1);
	    order_info2.setBuy_addr(buyer_addr);
	    
		String product_name = order_info2.getBuy_product_name();
		String success_num = order_info2.getBuyer_merid();
		String member_email = order_info2.getMember_email();
		
		// 토큰 가져오기
		String token = getImportToken(); 
		
		// 결제 내역 가져오기
		String mId = order_info2.getBuyer_merid();
		Order_Info real_order_info = getPayInfo(token, mId);
		
		// 주문내역에 추가
		payservice.insertOneOrder(real_order_info); 
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		// 상품이 여러개일때, 한개일때 
		long goods_index = 0L;
		if(product_name.contains(", ")) {
			String[] product_name_list = product_name.split(", "); //상품명 이름 분리
			for(int i=0; i<product_name_list.length; i++) {
				//굿즈 이름으로 goods_index 뽑아서 판매 수 +1
				goods_index = goodsService.getGoodsIndex(product_name_list[i]);
				goodsService.plusSaleNumber(goods_index);		
				
				//굿즈 재고 수량 -1
				goodsService.minusStockNumber(goods_index);
			}
		} else {
			//굿즈 이름으로 goods_index 뽑아서 판매 수 +1
			goods_index = goodsService.getGoodsIndex(product_name);
			goodsService.plusSaleNumber(goods_index);		
			
			//굿즈 재고 수량 -1
			goodsService.minusStockNumber(goods_index);
		}

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay_success");
		mv.addObject("success_num", success_num);	
		mv.addObject("member_email", member_email);	
		
		return mv;
	}	
	
	@RequestMapping("goods_pay_fail.do")
	public ModelAndView goods_pay_fail(HttpServletRequest request) {
		String fail_msg = request.getParameter("error_msg");
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&fail_msg: "+fail_msg);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay_fail");
		mv.addObject("fail_msg", fail_msg);	
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("goods_pay_cancel.do") //환불창 연결
	public ModelAndView goods_pay_cancel(@RequestParam("order_index") String order_index) {    
		long order_index2 = Long.parseLong(order_index);
		
		Order_Info order_info = payservice.selectByOrderIndex(order_index2);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay_cancel");
		mv.addObject("order_info", order_info);
		
		return mv;
	}	
	
	
	@RequestMapping("goods_order_delete.do") //환불 요청, 주문내역 삭제
	public String goods_order_delete(@RequestParam("order_index") String order_index, @RequestParam("order_number") String order_number) {
		long order_index2 = Long.parseLong(order_index);
		log.info("#################환불 요청할거임 order_index2: "+order_index2);
		
		//토큰 받아오기 & 환불요청
		String token = getImportToken();
		cancelPayment(token, order_number);
		
		// 주문내역 삭제
		payservice.deleteOneOrder(order_index2);
		
		return "pay_cancel_ok";
	}	
	
	public static final String IMPORT_TOKEN_URL = "https://api.iamport.kr/users/getToken"; 
	public static final String IMPORT_PAYMENTINFO_URL = "https://api.iamport.kr/payments/find/"; 
	public static final String IMPORT_CANCEL_URL = "https://api.iamport.kr/payments/cancel"; 
	public static final String IMPORT_PREPARE_URL = "https://api.iamport.kr/payments/prepare"; 
	public static final String KEY = "8590091630616548"; 
	public static final String SECRET = "lzAk6F3ZfY2gS8XfeDrR9TK7o3lHMwX75xsbdwbsueJmmGCBk3suWdBlgW22tZ9yxBKK8VcC9WYwCA7X"; 
		
	// 아임포트 인증(토큰)을 받아주는 함수 
	public String getImportToken() { 
		String result = ""; 
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(IMPORT_TOKEN_URL); 
		Map<String,String> m =new HashMap<String,String>(); 
		m.put("imp_key", KEY); 
		m.put("imp_secret", SECRET); 
		try { post.setEntity(new UrlEncodedFormEntity(convertParameter(m))); 
			HttpResponse res = client.execute(post); 
			ObjectMapper mapper = new ObjectMapper(); 
			String body = EntityUtils.toString(res.getEntity()); 
			JsonNode rootNode = mapper.readTree(body); 
			JsonNode resNode = rootNode.get("response"); 
			result = resNode.get("access_token").asText(); 
		} catch (Exception e) { 
			e.printStackTrace(); 
		} 
		
		log.info("#################################################### TOKEN :"+result);
		return result;
	} 
	
	// Map을 사용해서 Http요청 파라미터를 만들어 주는 함수 
	private List<NameValuePair> convertParameter(Map<String,String> paramMap){ 
		List<NameValuePair> paramList = new ArrayList<NameValuePair>(); 
		Set<Entry<String,String>> entries = paramMap.entrySet(); 
		for(Entry<String,String> entry : entries) { 
			paramList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
			} 
		return paramList; 
	} 
	// 결제취소 
	public int cancelPayment(String token, String mid) { 
		HttpClient client = (HttpClient)HttpClientBuilder.create().build(); 
		HttpPost post = new HttpPost(IMPORT_CANCEL_URL); 
		Map<String, String> map = new HashMap<String, String>(); 
		post.setHeader("Authorization", token); 
		map.put("merchant_uid", mid); 
		String asd = ""; 
		try { 
			post.setEntity(new UrlEncodedFormEntity(convertParameter(map))); 
			HttpResponse res = client.execute(post); 
			ObjectMapper mapper = new ObjectMapper(); 
			String enty = EntityUtils.toString(res.getEntity()); 
			JsonNode rootNode = mapper.readTree(enty); asd = rootNode.get("response").asText();
		} catch (Exception e) { 
			e.printStackTrace(); 
		} if (asd.equals("null")) { 
			System.err.println("환불실패"); return -1; 
		} else { 
			System.err.println("환불성공"); return 1; 
		}
	} 
	
	// 결제정보
	public Order_Info getPayInfo(String token, String mId) { 
		String buyer_name = "";
		String buyer_phone = "";
		String member_email = "";
		String buyer_addrStr = "";
		String buyer_postcode = "";
		String buyer_addr = "";
		String paid_at = "";
		String buy_product_name = "";
		String buyer_buyid = "";
		String buyer_merid = "";
		String amount = "";
		String buyer_card_num = "";
		String buyer_pay_ok = "";
		long buyer_pay_price;
		long paid_atLong;
		long unixTime;
		Date buy_date;
		
		HttpClient client = HttpClientBuilder.create().build(); 
		HttpGet get = new HttpGet(IMPORT_PAYMENTINFO_URL + mId + "/paid"); 
		get.setHeader("Authorization", token); 
		try { 
			HttpResponse res = client.execute(get);
			ObjectMapper mapper = new ObjectMapper(); 
			String body = EntityUtils.toString(res.getEntity()); 
			JsonNode rootNode = mapper.readTree(body); 
			JsonNode resNode = rootNode.get("response"); 
			//amount = resNode.get("amount").asText(); 
			buyer_name = resNode.get("buyer_name").asText(); 
			buyer_phone = resNode.get("buyer_tel").asText(); 
			member_email = resNode.get("buyer_email").asText(); 
			
			buyer_addrStr = resNode.get("buyer_addr").asText(); 
			buyer_postcode = resNode.get("buyer_postcode").asText(); 
			buyer_addr = buyer_addrStr+" "+buyer_postcode; //주소에 우편번호 합치기
			
			paid_at = resNode.get("paid_at").asText(); //결제시간
			buy_product_name = resNode.get("name").asText(); 
			buyer_buyid = resNode.get("imp_uid").asText(); 
			buyer_merid = resNode.get("merchant_uid").asText(); 
			amount = resNode.get("amount").asText(); 
			buyer_card_num = resNode.get("apply_num").asText(); 
			buyer_pay_ok = resNode.get("status").asText(); 
			
		    // 형식 바꾸기
		    //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    //sdf.setTimeZone(TimeZone.getTimeZone("GMT+9")); // GMT(그리니치 표준시 +9 시가 한국의 표준시
		    //String formattedDate = sdf.format(date);
		    //log.info("++++++++++++++++++++++++++++++++++++import date: "+formattedDate);
		    
			log.info("++++++++++++++++++++++++++++++++++++import buyer_name: "+buyer_name);
			log.info("++++++++++++++++++++++++++++++++++++import paid_at: "+paid_at);
			
		} catch (Exception e) { 
			e.printStackTrace(); 
		} 
		
		buyer_pay_price = Long.parseLong(amount);
		
		// 카드 결제 시간 - 형식 바꾸기
		paid_atLong = Long.parseLong(paid_at);
	    unixTime = paid_atLong * 1000;
		buy_date = new Date(paid_atLong);
	    Order_Info order_info = new Order_Info(-1L, buyer_name, buyer_phone, member_email, 
	    		buyer_addr, buy_date, buy_product_name, buyer_buyid, buyer_merid, 
	    		buyer_pay_price, buyer_card_num, buyer_pay_ok);
	    
		return order_info;
	}
}
