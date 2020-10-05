<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.LikeType"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!--텀블벅추가-->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">


    <meta name="apple-mobile-web-app-title" content="tumblbug">
    <meta name="application-name" content="tumblbug">

      <!-- Title -->
    <title>CREAKOK</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/creakok.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- BOTO TEST -->
    <meta name="description" content="Boto Photo Studio HTML Template">
    <meta name="keywords" content="photo, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/css_boto/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/css_boto/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/css_boto/slicknav.min.css"/>
    <link rel="stylesheet" href="css/css_boto/fresco.css"/>
    <link rel="stylesheet" href="css/css_boto/slick.css"/>
  
    <!-- Main Stylesheets -->
    <link rel="stylesheet" href="css/css_boto/style.css"/>
    
    <!-- hcbae Stylesheets -->
    <link rel="stylesheet" href="css/hcbae_tumblbug_part.css"/>
    <link rel="stylesheet" href="css/hcbae_wadiz_part.css">
    <link rel="stylesheet" href="css/hcbae_css.css">

    <script src="/js/summernote/summernote-lite.js"></script>
    <script src="/js/summernote/lang/summernote-ko-KR.js"></script>

    <link rel="stylesheet" href="/css/summernote/summernote-lite.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

    
     <style data-styled="etlKsY QGKgG jOcSCe iSuAdB jDMeTv MskhC fMekoE fbsOED hLwNNy cAHVaf jkgXDu gMdHoi hbKGuE iDsnca cLNJqs iJpZic fWpQcH zoWUI bgEfGq irjBzn dgBlAy hGAcLm jLeKfP jKakao uEieK grrCSr gqtUOr iWoXIb ijDFDl bKTrQD gVuNGp gUfPmS ilwNes erxKKA cDdnng bmduJF fpKouC dKBthp" data-styled-version="4.4.1">
      /* sc-component-id: SiteFooter__SROnlyLabel-sc-160ijjw-0 */
      .dKBthp {
          position: absolute;
          margin: -1px;
          padding: 0;
          height: 1px;
          width: 1px;
          border: 0;
          -webkit-clip: rect(0 0 0 0);
          clip: rect(0 0 0 0);
          overflow: hidden;
      }
      
      /* sc-component-id: SiteFooter__StatusNewLabel-sc-160ijjw-1 */
      .bmduJF {
          display: inline-block;
          line-height: 1;
          background: url(/wpa/0fe7f664ad2d3caab7bd4f461a884e97.png) 50% 50% no-repeat;
          background-size: cover;
          text-indent: -1000em;
          overflow: hidden;
          width: 12px;
          height: 12px;
          margin: 0 0 0 3px;
      }
      
      /* sc-component-id: SiteFooter__FooterWrapper-sc-160ijjw-2 */
      .gVuNGp {
          classname: _2nkoQovCMNDdKtTjNi5W_x;
          padding: 34px 0 3em !important;
      }
      
      /* sc-component-id: SiteFooter__FooterColumnWrapper-sc-160ijjw-3 */
      .gUfPmS {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-flex-direction: row;
          -ms-flex-direction: row;
          flex-direction: row;
          -webkit-flex-wrap: wrap;
          -ms-flex-wrap: wrap;
          flex-wrap: wrap;
          -webkit-align-items: stretch;
          -webkit-box-align: stretch;
          -ms-flex-align: stretch;
          align-items: stretch;
          padding: 0 1rem;
      }
      
      .gUfPmS .footer-column {
          border-top: 1px solid rgba(0, 0, 0, 0.1);
          padding: 2rem 0;
      }
      
      .gUfPmS .grid-three,
      .gUfPmS .grid-four,
      .gUfPmS .grid-nine,
      .gUfPmS .grid-sixteen {
          width: 100%;
      }
      
      @media (min-width:768px) {
          .gUfPmS {
              margin-left: 0 !important;
              margin-right: 0 !important;
              padding: 0 !important;
          }
      
          .gUfPmS .footer-column {
              border-top: none;
              padding: 1rem;
          }
      
          .gUfPmS .grid-three {
              width: 18.75%;
          }
      
          .gUfPmS .grid-four {
              width: 25%;
          }
      
          .gUfPmS .grid-nine {
              width: 56.25%;
          }
      }
      
      @media (min-width:1080px) {
          .gUfPmS {
              width: 1080px;
              margin: 0 auto !important;
          }
      }
      
      /* sc-component-id: SiteFooter__FooterSubColumn-sc-160ijjw-4 */
      .ilwNes {
          classname: footer-column grid-three _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ;
          width: 100%;
          padding-top: 2rem !important;
          padding-bottom: 2rem !important;
      }
      
      .ilwNes:first-of-type {
          border-top: none;
      }
      
      .erxKKA {
          classname: footer-column grid-four _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ;
          width: 100%;
          padding-top: 2rem !important;
          padding-bottom: 2rem !important;
      }
      
      .erxKKA:first-of-type {
          border-top: none;
      }
      
      .cDdnng {
          classname: footer-column grid-nine _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ _2h2Lxt21YmZS8bCMfCUMnE;
          width: 100%;
          padding-top: 2rem !important;
          padding-bottom: 2rem !important;
      }
      
      .cDdnng:first-of-type {
          border-top: none;
      }
      
      /* sc-component-id: SiteFooter__SocialLinkWrapper-sc-160ijjw-5 */
      .fpKouC {
          line-height: 1rem;
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-pack: end;
          -webkit-justify-content: flex-end;
          -ms-flex-pack: end;
          justify-content: flex-end;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          height: 22px;
      }
      
      .fpKouC a {
          width: 22px;
          display: block;
          text-align: center;
          margin: 0 3px;
      }
      
      .fpKouC a>i {
          width: auto;
          margin: 0;
      }
      
      .fpKouC .brunch-link svg {
          width: 19px;
          height: 19px;
          fill: #757575;
      }
      
      .fpKouC .brunch-link svg.dark {
          fill: #fff;
      }
      
      .fpKouC .brunch-link:hover svg {
          fill: #000;
      }
      
      .fpKouC .brunch-link:hover svg.dark {
          fill: #757575;
      }
      
      /* sc-component-id: Container-gci8y7-0 */
      .MskhC {
          width: 100%;
          margin: 0 auto;
          position: relative;
          padding: 0;
      }
      
      @media (min-width:1080px) {
          .MskhC {
              width: 1080px;
              margin: 0 auto;
          }
      }
      
      /* sc-component-id: ProfileImg__StyledProfileImg-sc-1vio56c-0 */
      .bgEfGq {
          display: inline-block;
          background-image: url(https://tumblbug-assets.imgix.net/assets/user-account.png?s=08b1f9ecf24209994ac9b81900936c0e);
          background-size: cover;
          background-position: 50% 38%;
          width: 28px;
          height: 28px;
          border-radius: 50%;
          box-shadow: 0 0 1px 0 rgba(208, 208, 208, 1) inset, 0 0 1px 0 rgba(208, 208, 208, 1);
          margin-right: 0;
      }
      
      @media (min-width:1080px) {
          .bgEfGq {
              width: 38px;
              height: 38px;
          }
      }
      
      /* sc-component-id: Header-ou4e17-0 */
      .jDMeTv {
          width: 100%;
          height: 58px;
          background-color: #ffffff;
          box-shadow: 0px 1px 2px 0px rgba(10, 10, 10, 0.1);
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          position: relative;
          z-index: 999;
      }
      
      @media (min-width:1080px) {
          .jDMeTv {
              height: 65px;
          }
      }
      
      /* sc-component-id: TumblbugLogo-sc-5rx33z-0 */
      .iDsnca {
          fill: #000000;
          width: 70px;
          height: 18.41px;
      }
      
      @media (min-width:1080px) {
          .iDsnca {
              width: 85px;
              height: 22.36px;
          }
      }
      
      /* sc-component-id: Button-sc-1x93b2b-0 */
      .ijDFDl {
          cursor: pointer;
          display: inline-block;
          min-height: 1em;
          outline: none;
          border: none;
          vertical-align: baseline;
          box-shadow: 0px 0px 0px 1px transparent inset, 0px 0em 0px 0px rgba(0, 0, 0, 0.1) inset;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
          -webkit-transition: opacity 0.1s ease, background-color 0.1s ease, color 0.1s ease, box-shadow 0.1s ease, background 0.1s ease;
          transition: opacity 0.1s ease, background-color 0.1s ease, color 0.1s ease, box-shadow 0.1s ease, background 0.1s ease;
          -webkit-tap-highlight-color: transparent;
          margin: 0 .25em 0 0;
          border-radius: 0.28571429rem;
          text-transform: none;
          text-shadow: none;
          font-weight: bold;
          line-height: 1em;
          font-style: normal;
          text-align: center;
          -webkit-text-decoration: none;
          text-decoration: none;
          color: rgba(0, 0, 0, .6);
          background-color: #e7e7e7;
          background-color: #fa6462;
          color: #fff;
          padding: 1em 1.5em;
          font-size: 1em;
          width: 100%;
          opacity: 1;
      }
      
      .ijDFDl>i {
          margin: 0 .42857143em 0 -.21428571em;
      }
      
      .ijDFDl:hover,
      .ijDFDl:focus,
      .ijDFDl:active {
          background-color: #d9d9d9;
          color: rgba(0, 0, 0, 8);
      }
      
      .ijDFDl:hover,
      .ijDFDl:focus,
      .ijDFDl:active {
          background-color: #ff4543;
          color: #fff;
      }
      
      /* sc-component-id: SiteHeader__SiteHeaderWrapper-q8dvod-0 */
      .iSuAdB {
          position: relative;
      }
      
      /* sc-component-id: SiteHeader__SiteHeaderMenu-q8dvod-1 */
      .fMekoE {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          -webkit-box-pack: justify;
          -webkit-justify-content: space-between;
          -ms-flex-pack: justify;
          justify-content: space-between;
          position: relative;
      }
      
      /* sc-component-id: SiteHeader__LeftMenu-q8dvod-2 */
      .fbsOED {
          -webkit-flex: 1 0 25%;
          -ms-flex: 1 0 25%;
          flex: 1 0 25%;
          text-align: center;
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
      }
      
      /* sc-component-id: SiteHeader__CenterMenu-q8dvod-3 */
      .hbKGuE {
          width: 10rem;
          position: absolute;
          left: 0;
          right: 0;
          top: 0;
          bottom: 0;
          margin: 0 auto;
          padding: 0 1rem;
          cursor: pointer;
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-pack: center;
          -webkit-justify-content: center;
          -ms-flex-pack: center;
          justify-content: center;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
      }
      
      .hbKGuE:hover>div {
          fill: #757575;
      }
      
      /* sc-component-id: SiteHeader__RightMenu-q8dvod-4 */
      .cLNJqs {
          -webkit-flex: 1 0 25%;
          -ms-flex: 1 0 25%;
          flex: 1 0 25%;
          text-align: right;
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          -webkit-box-pack: end;
          -webkit-justify-content: flex-end;
          -ms-flex-pack: end;
          justify-content: flex-end;
      }
      
      /* sc-component-id: SiteHeader__BlockLink-q8dvod-6 */
      .fWpQcH {
          color: inherit;
          display: -webkit-inline-box;
          display: -webkit-inline-flex;
          display: -ms-inline-flexbox;
          display: inline-flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          color: black;
          font-weight: bold;
          font-size: 1rem;
          cursor: pointer;
          line-height: 58px;
          padding: 0 1rem;
      }
      
      .fWpQcH:hover {
          color: inherit;
      }
      
      /* sc-component-id: SiteHeader__LinkButton-q8dvod-7 */
      .hLwNNy {
          border: none;
          background: transparent;
          outline: none;
          color: black;
          font-weight: bold;
          font-size: 1rem;
          cursor: pointer;
          line-height: 58px;
          padding: 0 1rem;
      }
      
      .hLwNNy>i {
          font-size: 1.25em;
      }
      
      @media (min-width:1080px) {
          .hLwNNy {
              line-height: 65px;
          }
      
          .hLwNNy>i {
              font-size: 1em;
              margin-right: 0.5em;
          }
      }
      
      .hLwNNy:hover,
      .hLwNNy:active {
          color: #757575;
      }
      
      /* sc-component-id: SiteHeader__LinkItem-q8dvod-8 */
      .gMdHoi {
          diplay: block;
          border: none;
          background: transparent;
          outline: none;
          color: black;
          font-weight: bold;
          font-size: 1rem;
          cursor: pointer;
          line-height: 58px;
          padding: 0 1rem;
      }
      
      .gMdHoi>i {
          font-size: 1.25em;
      }
      
      @media (min-width:1080px) {
          .gMdHoi {
              line-height: 65px;
          }
      
          .gMdHoi>i {
              font-size: 1em;
              margin-right: 0.5em;
          }
      }
      
      .gMdHoi:hover {
          color: #757575;
      }
      
      /* sc-component-id: SiteHeader__ItemLabel-q8dvod-9 */
      @media (max-width:1079px) {
          .cAHVaf {
              display: none;
          }
      }
      
      /* sc-component-id: SiteHeader__ForMobile-q8dvod-10 */
      .jkgXDu {
          display: none;
      }
      
      @media (min-width:1080px) {
          .jkgXDu {
              display: inline;
          }
      }
      
      /* sc-component-id: SiteHeader__ProfileImageWrapper-q8dvod-12 */
      .zoWUI {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          position: relative;
          margin-left: 0.75rem;
      }
      
      /* sc-component-id: SiteHeader__SearchButton-q8dvod-15 */
      .iJpZic {
          cursor: pointer;
          display: inline-block;
          min-height: 1em;
          outline: none;
          border: none;
          vertical-align: baseline;
          box-shadow: 0px 0px 0px 1px transparent inset, 0px 0em 0px 0px rgba(0, 0, 0, 0.1) inset;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          user-select: none;
          -webkit-transition: opacity 0.1s ease, background-color 0.1s ease, color 0.1s ease, box-shadow 0.1s ease, background 0.1s ease;
          transition: opacity 0.1s ease, background-color 0.1s ease, color 0.1s ease, box-shadow 0.1s ease, background 0.1s ease;
          -webkit-tap-highlight-color: transparent;
          margin: 0 .25em 0 0;
          border-radius: 0.28571429rem;
          text-transform: none;
          text-shadow: none;
          font-weight: bold;
          line-height: 1em;
          font-style: normal;
          text-align: center;
          -webkit-text-decoration: none;
          text-decoration: none;
          color: rgba(0, 0, 0, .6);
          background-color: #e7e7e7;
          padding: 1em 1.5em;
          font-size: 1em;
          opacity: 1;
          background-color: transparent;
          border: 0;
          padding: 0;
          margin-right: -0.8rem;
          z-index: 9;
      }
      
      .iJpZic>i {
          margin: 0 .42857143em 0 -.21428571em;
      }
      
      .iJpZic:hover,
      .iJpZic:focus,
      .iJpZic:active {
          background-color: #d9d9d9;
          color: rgba(0, 0, 0, 8);
      }
      
      .iJpZic:before {
          content: '';
          display: block;
          margin-right: -10px;
          margin: 0;
          width: 20px;
          height: 20px;
          background-image: url(/wpa/e5aa161342e919b420a40fc6e34cce08.png);
          background-size: cover;
          background-repeat: no-repeat;
          background-position: 50% 50%;
      }
      
      @media (min-width:1080px) {
          .iJpZic:before {
              margin: 0;
              width: 24px;
              height: 24px;
          }
      }
      
      .iJpZic:focus,
      .iJpZic:hover,
      .iJpZic:active {
          background-color: transparent;
      }
      
      @media (min-width:1080px) {
          .iJpZic {
              margin: 0 0.5rem 0 0;
              padding: 5px;
          }
      }
      
      /* sc-component-id: Membership__MembershipWrapper-o1o1he-0 */
      .irjBzn {
          padding: 50px 0;
          background-color: #ffffff;
          border-bottom: 1px solid #efefef;
      }
      
      @media (max-width:767px) {
          .irjBzn {
              padding: 25px 0;
          }
      }
      
      /* sc-component-id: Input-sc-1x48dls-0 */
      .iWoXIb {
          border: 1px solid #e4e4e4;
          border-radius: 4px;
          background: #fff;
          width: 100%;
          padding: 0.5em;
          margin-bottom: 5px;
          outline: none;
          font: inherit;
          color: inherit;
          padding: 0.75em;
          margin-bottom: 8px;
      }
      
      .iWoXIb:hover,
      .iWoXIb:active,
      .iWoXIb:focus {
          border: 1px solid #fa6462;
      }
      
      .iWoXIb:required {
          box-shadow: none;
      }
      
      /* sc-component-id: Wrapper__MembershipBody-sc-140yq7-0 */
      .dgBlAy {
          box-shadow: 0 1px 2px 1px #efefef;
          width: 318px;
          margin: 0 auto;
          padding: 40px 35px;
          border: 1px solid #e4e4e4;
          border-radius: 5px;
          font-size: 13px;
      }
      
      @media (max-width:767px) {
          .dgBlAy {
              width: 100%;
              border: none;
              box-shadow: none;
          }
      }
      
      /* sc-component-id: Divider-sc-1wyk970-0 */
      .uEieK {
          padding: 10px 0;
          overflow: hidden;
          text-align: center;
      }
      
      .uEieK>span {
          position: relative;
          padding: 16px;
      }
      
      .uEieK>span::before,
      .uEieK>span::after {
          content: '';
          position: absolute;
          border-bottom: 1px solid #e4e4e4;
          top: 50%;
          width: 5000px;
      }
      
      .uEieK>span::before {
          right: 100%;
      }
      
      .uEieK>span::after {
          left: 100%;
      }
      
      .uEieK>span>span {
          color: #757575;
          font-size: 0.9em;
      }
      
      /* sc-component-id: SocialButton__SocialLink-sc-7k5r2h-0 */
      .hGAcLm {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          -webkit-box-pack: center;
          -webkit-justify-content: center;
          -ms-flex-pack: center;
          justify-content: center;
          margin-bottom: 8px;
          background: white;
          width: 100%;
          height: 45px;
          border-radius: 3px;
          border:black 1px solid;
          color: black !important;
          outline: none;
          text-align: center;
          font-weight: 600;
          cursor: pointer;
      }
      
      .hGAcLm:hover,
      .hGAcLm:focus,
      .hGAcLm:active {
          padding: 0;
          background-color: white;
          color: black;
      }
      
      .hGAcLm svg {
          margin: 0em 0.7rem 0em 0em;
      }
      
      .hGAcLm i {
          font-size: 1em;
          font-weight: 600;
      }
      
      .jLeKfP {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          -webkit-box-pack: center;
          -webkit-justify-content: center;
          -ms-flex-pack: center;
          justify-content: center;
          margin-bottom: 8px;
          background: #1ec800;
          width: 100%;
          height: 45px;
          border-radius: 3px;
          color: #fff;
          outline: none;
          text-align: center;
          font-weight: 600;
          cursor: pointer;
      }
      
      .jLeKfP:hover,
      .jLeKfP:focus,
      .jLeKfP:active {
          padding: 0;
          background-color: #1baa01;
          color: #fff;
      }
      
      .jLeKfP svg {
          margin: 0em 0.7rem 0em 0em;
      }
      
      .jLeKfP i {
          font-size: 1em;
          font-weight: 600;
      }
      
      /* sc-component-id: SignIn__HiddenLabel-sc-9xfg6a-0 */
      .gqtUOr {
          position: absolute;
          left: -9999em;
      }
      
      /* sc-component-id: SignIn__StyledLink-sc-9xfg6a-1 */
      .bKTrQD {
          display: inline-block;
          line-height: 32px;
          padding: 0.7em 0;
          margin-bottom: 15px;
          text-align: center;
          width: 100%;
      }
      
      /* sc-component-id: SignIn__Form-sc-9xfg6a-2 */
      .grrCSr {
          border-bottom: 1px solid #e4e4e4;
      }
      
      /* sc-component-id: ScrollTop__StyledIcon-j9uqn7-0 */
      .jOcSCe {
          display: -webkit-box !important;
          display: -webkit-flex !important;
          display: -ms-flexbox !important;
          display: flex !important;
          opacity: 0 !important;
          position: absolute;
          cursor: pointer;
          left: 0;
          top: 0;
          width: 100% !important;
          height: 100% !important;
          border-radius: 50%;
          background: #fff;
          border: 1px solid #D0D0D0;
          margin: 0 !important;
          -webkit-transition-property: opacity, border;
          transition-property: opacity, border;
          -webkit-transition-duration: 0.2s;
          transition-duration: 0.2s;
          -webkit-transition-timing-function: ease-in;
          transition-timing-function: ease-in;
          -webkit-box-pack: center;
          -webkit-justify-content: center;
          -ms-flex-pack: center;
          justify-content: center;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          overflow: hidden;
      }
      
      .jOcSCe svg {
          fill: #0D0D0D;
          width: 18px;
          opacity: 0;
          -webkit-transition-property: opacity;
          transition-property: opacity;
          -webkit-transition-duration: 0.2s;
          transition-duration: 0.2s;
          -webkit-transition-timing-function: ease-in;
          transition-timing-function: ease-in;
      }
      
      @media only screen and (min-width:1080px) {
          .jOcSCe svg {
              width: 24px;
          }
      }
      
      /* sc-component-id: ScrollTop__ScrollTopBtnWrapper-j9uqn7-1 */
      .etlKsY {
          position: fixed;
          width: 42px;
          height: 42px;
          right: 16px;
          bottom: 72px;
          bottom: calc(constant(safe-area-inset-bottom) + 72px);
          bottom: calc(env(safe-area-inset-bottom) + 72px);
          z-index: 999;
          display: none;
      }
      
      .etlKsY.animate .ScrollTop__StyledIcon-j9uqn7-0 {
          opacity: 0.8 !important;
      }
      
      .etlKsY.animate .ScrollTop__StyledIcon-j9uqn7-0 svg {
          opacity: 0.5;
      }
      
      .etlKsY:hover .ScrollTop__StyledIcon-j9uqn7-0 svg {
          opacity: 1;
      }
      
      @media only screen and (min-width:1080px) {
          .etlKsY {
              width: 56px;
              height: 56px;
              bottom: 24px;
              right: 24px;
          }
      }
      
      /* sc-component-id: ScrollTop__ScrollTopBtn-j9uqn7-2 */
      .QGKgG {
          width: 0;
          height: 0;
          border: 0;
          border-radius: 50%;
          text-indent: -100em;
          overflow: hidden;
          padding: 0;
          outline: none;
          position: absolute;
          background: transparent;
          z-index: 2;
      }
      
      .QGKgG span {
          position: relative;
      }
      
      .QGKgG:active {
          outline: none;
      }
      
      .jKakao {
          display: -webkit-box;
          display: -webkit-flex;
          display: -ms-flexbox;
          display: flex;
          -webkit-align-items: center;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          -webkit-box-pack: center;
          -webkit-justify-content: center;
          -ms-flex-pack: center;
          justify-content: center;
          margin-bottom: 8px;
          background: #fee500;
          width: 100%;
          height: 45px;
          border-radius: 3px;
          color: black !important;
          outline: none;
          text-align: center;
          font-weight: 600;
          cursor: pointer;
      }
      
      .jKakao:hover,
      .jKakao:focus,
      .jKakao:active {
          padding: 0;
          background-color: #cebb16;
          color: black;
      }
      
      .jKakao svg {
          margin: 0em 0.7rem 0em 0em;
      }
      
      .jKakao i {
          font-size: 1em;
          font-weight: 600;
      }

        .three {
            flex:0 0 33%;!important;
        }
        .ranking{
            flex:0 0 35%;!important;
        }
        .howAbout{
            flex:0 0 70%;!important;
            max-width:63%;!important;
        }
        
        .stars{
            background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAABaCAYAAACv+ebYAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNXG14zYAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDcvMDMvMTNJ3Rb7AAACnklEQVRoge2XwW3bMBSGPxa9NxtIGzTAW8DdRL7o3A0qb+BrdNIm9QAm0G7gbJBMwB5MoVJNUSRFIXGqHwhkmXr68hOPNH9ljOEt9OlNqBs4RlrrSmtdpdZ/Ti0EGnvtUoqTHFunBVCkuk6d6mbi83rggdteSa5THDeB3+UDO9z2inatXFum1roESuAReAB29vp15n2/gRfgZK+/gIuIXLxgrfUO+Bnzn0fom4ic+pvRVNuB/QrQ/RB6A7bwLjN8b985krO5MsKd0ElwJvgk1AteCPdCYWI5/SutddQxRUTU3DOzG4hd01EKqQnZuaLBITUh4F0CeLYm5CDw6PjuFTjaz9+BLwE1I8VO9StwAEoRaUSkseMHO+aqcWq2qwcdfQCOIvIy8dwDV/c/YL6zvWDbnQ3QuH5hltQEreM1dH/n6g28gT8eWLVUqqVKrb+vtGidFkCR6vp+0uLAba8k1/eRFh1ue0W7dv4sqpaSjGnR1Fy8YNWyY8W0aGpO/c1oqu3AKmlxCL0BW3iXGb637xzJ2VwZ4U7oJDgTfBLqBS+Ee6EQeMpULVFHUVOzPC3aNR2lkJotLbr0vtKiqWlMTcNaaXHQ0QfgaGqcaVG1jNLibGcbYyb/eDIlT6bjyZS+51JqtrS4gTfw/wzWqkKrKrU8fQPR6gKAmDKlPM3x1WkBFKmu0xxf3fZR5jnFdbzjv257JbmOdzx22yvadZzjW7e9ol27HWtVkjEtIubiB2u1Y8W0iJhTfzOe6uvAKmlxCL0FX+FdZvjevnMkd3Plgzuh0+A88EmoH7wM7oVC6AaiVdwuI2Z5WrRrOk4BNVtadOl9pUXENIhpWCstDjr6ABwR40yLaDVKi7Od7U1/Z0pzpjNngtNiaM2WFj8++A+motm0NTqjmwAAAABJRU5ErkJggg==") repeat-x 0 0;
            width:150px;
        }

    .jQspcv {
        cursor: pointer;
        display: inline-block;
        min-height: 1em;
        vertical-align: baseline;
        box-shadow: transparent 0px 0px 0px 1px inset, rgba(0, 0, 0, 0.1) 0px 0em 0px 0px inset;
        user-select: none;
        -webkit-tap-highlight-color: transparent;
        text-transform: none;
        text-shadow: none;
        font-weight: bold;
        line-height: 1em;
        font-style: normal;
        text-align: center;
        color: rgba(0, 0, 0, 0.6);
        background-color: rgb(231, 231, 231);
        font-size: 1em;
        width: 100%;
        opacity: 1;
        outline: none;
        border-width: initial;
        border-style: none;
        border-color: initial;
        border-image: initial;
        transition: opacity 0.1s ease 0s, background-color 0.1s ease 0s, color 0.1s ease 0s, box-shadow 0.1s ease 0s, background 0.1s ease 0s;
        margin: 0px 0.25em 0px 0px;
        border-radius: 0.285714rem;
        text-decoration: none;
        padding: 1em 1.5em;
    }
        
    .hQGkMf {
        font-size: 13px;
        text-align: center;
        margin-top: 20px;
        padding-top: 40px;
        border-top: 1px solid rgb(239, 239, 239);
    }
        
    </style>
 
</head>

<body>
    <c:if test="${empty member}">
      <script>
      console.log("empty member");
      </script>
    </c:if>
    <c:if test="${!empty member}">
      <script>
      console.log("member exist");
      console.log('email: ${member.member_email}');
      console.log('name: ${member.member_name}');
      console.log('pass: ${member.member_password}');
      </script>
    </c:if>
    
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="img/core-img/creakok.png" alt="">
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
    <div id="header_div">
    <jsp:include page="creakok_header.jsp" flush="true"/>
    </div>
    </header>
    <!-- ##### Header Area End ##### -->
    
    <!-- ##### Hero Area Start ##### -->
    <section class="team-area section-padding-100-0" style="margin-top:100px;">
        
         <div class="container">
            <div class="row" style="width:80%;margin:0 auto">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 class="text-center" style="margin-bottom:30px">게시글</h2>
                        <div style="text-align:center">
                            <label class="control-label">작성 날짜</label>
                            <span style="margin-right:30px"><fmt:formatDate value="${board.board_wdate}" pattern="yyyy-MM-dd" /></span>
                            <label for="view">조회</label>
                            <span style="margin-right:30px">${board.board_view}</span>
                            <label for="like">좋아요</label>
                            <span id="board_like">${board.board_like}</span>
                            &nbsp;&nbsp;&nbsp;
                            <a href="#" class="wishlist-btn" onclick="testhcbae('${board.board_index}')">
                            <i class="board_list_like icon_heart_alt"></i>
                            </a>
                        </div>
                        
                        <table class="table" style="margin:0 auto;width:100%;margin:0 auto;margin-bottom:10px;">
                           <tbody><tr><td>작성자</td><td>
                                <input type="text" class="form-control" name="member_name" value="${board.member_name}" readonly=""></td></tr>
                                  <tr><td>Email</td><td>
                                    <input type="text" class="form-control" name="member_email" value="${board.member_email}" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text" class="form-control" name="board_subject" value="${board.board_subject}" readonly></td></tr>
                                        <tr>
                                            <td>글내용</td>
                                                <td>
                                                    <span id="textarea" style="overflow:auto; width:100%; height:500px; text-align:left" name="board_content" class="form-control" readonly>${board.board_content}</span>
                                                </td>
                                        </tr>
                              </tbody>
                         </table>
                         
                        <p style="text-align:center">
                        <c:if test="${!empty member}">
                            <c:if test="${member.member_email == board.member_email}">
                                
                                    <input type="reset" value="수정" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="location.href='board_update?board_index=${board.board_index}';">
                                    <input type="reset" value="삭제" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="deleteBoard()">
                            
                            </c:if>
                            <!-- for oracle 
                                <input type="reset" value="답글 쓰기" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="location.href='board_answer?board_index=${board.board_index}';">
                             -->
                            </c:if>
                           
                             <button type="button" class="" style="background-color:black !important; color:white;width:133px;height:38px;border-radius:.25rem;display:inline-block" onclick="location.href='board_page?creator_name=${board.creator_name}#fix_point'">전체 게시글보기</button>
                        </p>
                    
                        <!----------------------- 댓글 조회 부분 --------------------->
                        <table class="table" style="margin:0 auto;margin-bottom:10px;">         
                            <c:forEach items="${commentList}" var="repList">
                            <div style="margin-top:40px;margin-bottom:40px">
                                <p style="text-align:left; margin-bottom:10px"><img src="img/member_profile_pics/${repList.member_profile_pic}" style="margin-right:5px;width:50px;display:inline-block">${repList.member_name}
                                (<fmt:formatDate value="${repList.comment_wdate}" pattern="yyyy-MM-dd" />)</p> 
                                <input type="text" class="form-control" name="comment_content" value="${repList.comment_content}" style="height:40px;width:100%" readonly>
                                
                                <c:if test="${!empty member}">
                                    <c:if test="${member.member_email == repList.member_email}">
                                        <input type="hidden" id="board_index" value="${repList.board_index}">
                                        
                                        <p style="text-align:left;margin-top:10px">
                                            <input type="reset" value="수정" class="commentUpdateBtn" style="background-color:black !important; 
                                            color:white;width:70px;font-size:1em;height:30px;border-radius:.25rem;"
                                            onclick="updateComment('${repList.comment_index}')">
                                            <input type="reset" value="삭제" class="commentDelBtn" style="background-color:black !important; 
                                            color:white;width:80px;font-size:1em;height:30px;border-radius:.25rem;" 
                                            onclick="deleteComment('${repList.comment_index}')">
                                        </p>
                                    </c:if>
                                </c:if>
                            </div>
                            </c:forEach> 
                            
                        </table>      


<!----------------------------------- 댓글 작성 부분 ---------------------------------------->
                                <div style="margin-top:40px;margin-bottom:40px">
                                    <c:if test="${empty member}">                           
                                        <p style="text-align:left;">댓글 작성하기</p>
                                        <p style="text-align:left;margin-top:10px">
                                        <input type="text" class="form-control" id="comment_content" name="comment_content" value="로그인 후 이용해주세요." style="height:40px" readonly>                              
                                        </p>
                                    </c:if>
                                    
                                    <c:if test="${!empty member}">
                                        <section class="replyForm">
                                            <form role="form" method="post" autocomplete="off" class="form-horizontal">
                                                <input type="hidden" id="board_index" name="board_index" value="${board.board_index}" readonly="readonly" />
                                                <input type="hidden" id="member_email" name="member_email" value="${member.member_email}" readonly="readonly" />
                                                <input type="hidden" class="form-control" name="member_name" value="${member.member_name}" readonly="readonly"/>
                                                <input type="hidden" class="form-control" name="member_profile_pic" value="${member.member_profile_pic}" readonly="readonly"/>
                                                
                                                <div class="form-group" style="margin-top:40px;margin-bottom:40px">
                                                    
                                                        <p style="text-align:left;">댓글 작성하기</p>
                                                        <p style="text-align:left;margin-top:10px">
                                                            <input id="comment_content" type="text" class="form-control" name="comment_content" value="" style="height:40px;">                           
                                                        </p>
                                                    
                                                        <p style="text-align:left;margin-top:10px">
                                                        <button type="button" class="repSubmit btn-success" style="background-color:black !important; color:white;width:50px;font-size:1em;height:30px;border-radius:.25rem;" onclick="check()">작성</button>
                                                        </p>
                                                        <script>
                                                          var formObj = $(".replyForm form[role='form']");
                                                           
                                                          $(".repSubmit").click(function(){
                                                           var comment_content = $("#comment_content").val();
                                                           if (comment_content == '') {
                                                               Toast.fire({
                                                                    icon: 'info',
                                                                    title: '내용을 입력해주세요.'
                                                                })
                                                                return false;
                                                           }   
                                                           formObj.attr("action", "comment_write");                                                    
                                                           formObj.submit();
                                                          });
                                                         </script>
                                                </div>
                                            </form>
                                        </section>
                                        </c:if>
                                    </div>
                                    

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- 맨 아래 여백 -->
    <div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
    </div>                  
   <!-- 맨 아래 여백 end -->

    <!-- Footer Bottom Area -->
    <div id="footer_div">
    <jsp:include page="creakok_footer.jsp" flush="true"/>
    </div>
    <!-- Footer Bottom Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    
    <script src="/js/summernote/summernote-lite.js"></script>
    <script src="/js/summernote/lang/summernote-ko-KR.js"></script>
    <!-- sweet alert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    
    <script>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })
        function check_login() {
            Toast.fire({
                icon: 'error',
                title: '로그인 후 이용해주세요.'
            })
        }
        function no_right() {
            Toast.fire({
                icon: 'error',
                title: '수정 권한이 없어요.'
            })
        }
            
        function deleteComment(comment_index) {
            Swal.fire({
                title: '정말 삭제하시겠어요?',
                text: "삭제하면 되돌릴 수 없어요",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#2da498',
                cancelButtonColor: '#fc5230',
                confirmButtonText: '지워주세요!',
                cancelButtonText: '아니요'         
            }).then((result) => {
                if (result.value) {
                    location.href = "comment_delete?board_index=${board.board_index}&comment_index="+comment_index;
                }
            })          
        }
        
        function deleteBoard() {
            Swal.fire({
                title: '정말 삭제하시겠어요?',
                text: "삭제하면 되돌릴 수 없어요",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#2da498',
                cancelButtonColor: '#fc5230',
                confirmButtonText: '지워주세요!',
                cancelButtonText: '아니요'         
            }).then((result) => {
                if (result.value) {
                    location.href = "board_delete?board_index=${board.board_index}&creator_name=${board.creator_name}";
                }
            })          
        }
        
        function check() {
            for(var i=0; i<document.form.elements.length; i++) {
                if(document.form.elements[i].value == "") {
                     alert("모든 값을 입력 하셔야 합니다. ");
                     return false;
                }
            }
            document.form.submit();
        }
        
        function updateComment(comment_index) {(async () => {
            const { value: text } = await Swal.fire({
              input: 'textarea',
              inputPlaceholder: '이곳에 새로운 댓글을 작성해주세요...',
              inputAttributes: {
                'aria-label': 'Type your message here'
              },
              showCancelButton: true,
              confirmButtonColor: '#2da498',
              cancelButtonColor: '#fc5230',
              confirmButtonText: '이렇게 수정할래요',
              cancelButtonText: '수정 안할래요'
                })
            if (text) {  
                  var board_indexId = document.getElementById("board_index").value;
                  location.href="comment_update?board_index="+board_indexId+"&comment_index="+comment_index+"&comment_content="+text;                         
                }
            })()
        }
    </script>
    
    <script>
    function testhcbae(index){
        if('${member.member_email}' == '') {
            check_login();
            return;
        }
        
        let formData = new FormData();
        formData.append('like_content_index',index);
        formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        let xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                makeBoardLikeList();
               
            }
       };
       xmlHttpLike.open("POST", "clickLike.do", true); // true for asynchronous
       xmlHttpLike.send(formData); 

    }
    
    function makeBoardLikeList(){
        
        if('${member.member_email}' == '') {
            return;
        }
        let likeList = document.querySelectorAll('.board_list_like'); // list 여러개다.
        let tmep_count=0;
        let formData = new FormData();
        let xmlHttpLike = new XMLHttpRequest();

        
        formData = new FormData();
        formData.append('like_content_index','${board.board_index}');
        formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                if(xmlHttpLike.responseText == '${LikeType.LIKE_NOT_EXIST}'){ //responseText는 ajax의 결과물
                    likeList[tmep_count].classList.remove('icon_heart');
                    likeList[tmep_count].classList.add('icon_heart_alt');
                } else if(xmlHttpLike.responseText == '${LikeType.LIKE_EXIST}') {
                    likeList[tmep_count].classList.remove('icon_heart_alt');
                    likeList[tmep_count].classList.add('icon_heart');
                }  
                readBoardLike();
            }
       };
       xmlHttpLike.open("POST", "readLike.do", false); // true for asynchronous
       xmlHttpLike.send(formData);
       tmep_count++;
       
    }
    makeBoardLikeList();
    </script>
        
        <script>
            function updateBoardLike() {
                var like = document.getElementById('board_like');

                like.innerHTML = ${board.board_like+1};
            }
            
            function readBoardLike() {
                if('${member.member_email}' == '') {
                    check_login();
                    return;
                }
                    
                let formData = new FormData();
                formData.append('like_content_index','${board.board_index}');
                formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');           
                    
                let xmlHttpLike = new XMLHttpRequest();
                xmlHttpLike.onreadystatechange = function() {
                    if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                        console.log(xmlHttpLike.responseText);   
                        document.getElementById("board_like").innerHTML = xmlHttpLike.responseText;
                         }
                };
                xmlHttpLike.open("POST", "getNewBoardLike", true); // true for asynchronous
                xmlHttpLike.send(formData);
            }
            
        </script>   
   
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
</body>
</html>