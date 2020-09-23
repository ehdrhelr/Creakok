<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
      <!-- Node.js -->
      <script>
        var express = require('express');
        var app = express();
        var axios = require('axios');
        /* ... 중략 ... */
        app.post('/payments/cancel', async (req, res, next) => {
          try {
            /* 액세스 토큰(access token) 발급 */
            const getToken = await axios({
              url: "https://api.iamport.kr/users/getToken",
              method: "post", // POST method
              headers: { 
                "Content-Type": "application/json" 
              },
              data: {
                imp_key: "imp_apikey", // [아임포트 관리자] REST API키
                imp_secret: "ekKoeW8RyKuT0zgaZsUtXXTLQ4AhPFW3ZGseDA6bkA5lamv9OqDMnxyeB9wqOsuO9W3Mx9YSJ4dTqJ3f" // [아임포트 관리자] REST API Secret
              }
            });
            const { access_token } = getToken.data.response; // 엑세스 토큰
            /* 결제정보 조회 */
          } catch (error) {
            res.status(400).send(error);
          }
        });
      </script>
</head>

<body>
    <button onclick="cancelPay()">환불하기</button>
  <script
    src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script><!-- jQuery CDN --->
  <script>
    function cancelPay() {
      jQuery.ajax({
        "url": "goods_order_delete.do",
        "type": "POST",
        "contentType": "application/json",
        "data": JSON.stringify({
          "merchant_uid": "mid_" + new Date().getTime(), // 주문번호
          "cancel_request_amount": 2000, // 환불금액
          "reason": "테스트 결제 환불" // 환불사유
          "refund_holder": "홍길동", // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
          "refund_bank": "88" // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(ex. KG이니시스의 경우 신한은행은 88번)
          "refund_account": "56211105948400" // [가상계좌 환불시 필수입력] 환불 수령계좌 번호
        }),
        "dataType": "json"
      });
    }
  </script>
</body>

</html>