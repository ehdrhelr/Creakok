<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import ="creakok.com.domain.Language, creakok.com.domain.IdxLang"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">

function saveSessionLanguage(language) {
    let xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() {
         if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
         }
    };
    xmlHttp.open("GET", "saveLanguage.do?language="+language, true); // true for asynchronous
    xmlHttp.send();
}

    
setLanguage();
function setLanguage(sLang){
    if(sLang==null){
        let tValue = '${selectLanguage}'; //sessionStorage.getItem("selectLanguage");
        if(tValue == ''){
            setLanguage('${Language.KOREAN}');
        }   
    } else {
        saveSessionLanguage(sLang);
        location.reload(true);
    }
}


translatePage('<%=request.getParameter("page_name")%>');
function translatePage(pageName){
    //header는 기본적으로 다국어 적용
    document.getElementById("makeProject").innerHTML = "${Language.arrayLang[idxLang.CREATE_PROJECT][selectLanguage]}";
    document.getElementById("dropdownMenuButton").innerHTML = "${Language.arrayLang[idxLang.LANGUAGE][selectLanguage]}";
    <c:choose>
        <c:when test="${empty member}">
            document.getElementById("header_login").innerHTML = "${Language.arrayLang[idxLang.LOGIN][selectLanguage]}";
            document.getElementById("header_join").innerHTML = "${Language.arrayLang[idxLang.JOIN][selectLanguage]}";
        </c:when>
        <c:otherwise>
            document.getElementById("header_logout").innerHTML = "${Language.arrayLang[idxLang.LOGOUT][selectLanguage]}";
            document.getElementById("header_mypage").innerHTML = "${Language.arrayLang[idxLang.MYPAGE][selectLanguage]}";
            document.getElementById("header_cart").innerHTML = "${Language.arrayLang[idxLang.CART][selectLanguage]}";
        </c:otherwise>
    </c:choose>
    
    document.getElementById("header_funding").innerHTML = "${Language.arrayLang[idxLang.FUNDING][selectLanguage]}";
    document.getElementById("header_goods").innerHTML = "${Language.arrayLang[idxLang.GOODS][selectLanguage]}";
    document.getElementById("header_community").innerHTML = "${Language.arrayLang[idxLang.COMMUNITY][selectLanguage]}";
    document.getElementById("header_about").innerHTML = "${Language.arrayLang[idxLang.ABOUT][selectLanguage]}";
    //header는 기본적으로 다국어 적용 끝
    
    //footer는 기본적으로 다국어 적용
    document.getElementById("footer_working_time").innerHTML = "${Language.arrayLang[idxLang.footer_working_time][selectLanguage]}";
    document.getElementById("footer_working_close").innerHTML = "${Language.arrayLang[idxLang.footer_working_close][selectLanguage]}";
    document.getElementById("footer_company_name").innerHTML = "${Language.arrayLang[idxLang.footer_company_name][selectLanguage]}";
    document.getElementById("footer_company_address").innerHTML = "${Language.arrayLang[idxLang.footer_company_address][selectLanguage]}";
    //footer는 기본적으로 다국어 적용 끝
    
    console.log("pagaName" + pageName);
    switch(pageName){
        case "/": addTranslate_index(); break; //index
        case "/funding_list.do":
        
        break; //펀딩
    }
}

function addTranslate_index(){
	
}


</script>


