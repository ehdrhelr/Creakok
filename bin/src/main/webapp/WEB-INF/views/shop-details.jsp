<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Alazea - Gardening &amp; Landscaping HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="img/core-img/leaf.png" alt="">
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- ***** Top Header Area ***** -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between">
                            <!-- Top Header Content -->
                            <div class="top-header-meta">
                                <a href="#" data-toggle="tooltip" data-placement="bottom" title="infodeercreative@gmail.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email: infodeercreative@gmail.com</span></a>
                                <a href="#" data-toggle="tooltip" data-placement="bottom" title="+1 234 122 122"><i class="fa fa-phone" aria-hidden="true"></i> <span>Call Us: +1 234 122 122</span></a>
                            </div>

                            <!-- Top Header Content -->
                            <div class="top-header-meta d-flex">
                                <!-- Language Dropdown -->
                                <div class="language-dropdown">
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle mr-30" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language</button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">USA</a>
                                            <a class="dropdown-item" href="#">UK</a>
                                            <a class="dropdown-item" href="#">Bangla</a>
                                            <a class="dropdown-item" href="#">Hindi</a>
                                            <a class="dropdown-item" href="#">Spanish</a>
                                            <a class="dropdown-item" href="#">Latin</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Login -->
                                <div class="login">
                                    <a href="#"><i class="fa fa-user" aria-hidden="true"></i> <span>Login</span></a>
                                </div>
                                <!-- Cart -->
                                <div class="cart">
                                    <a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span>Cart <span class="cart-quantity">(1)</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Navbar Area ***** -->
        <div class="alazea-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="alazeaNav">

                        <!-- Nav Brand -->
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Navbar Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="shop.html">Shop</a>
                                                <ul class="dropdown">
                                                    <li><a href="shop.html">Shop</a></li>
                                                    <li><a href="shop-details.html">Shop Details</a></li>
                                                    <li><a href="cart.html">Shopping Cart</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="portfolio.html">Portfolio</a>
                                                <ul class="dropdown">
                                                    <li><a href="portfolio.html">Portfolio</a></li>
                                                    <li><a href="single-portfolio.html">Portfolio Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog.html">Blog</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="single-post.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="portfolio.html">Portfolio</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>

                                <!-- Search Icon -->
                                <div id="searchIcon">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                            </div>
                            <!-- Navbar End -->
                        </div>
                    </nav>

                    <!-- Search Form -->
                    <div class="search-form">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
                            <button type="submit" class="d-none"></button>
                        </form>
                        <!-- Close Icon -->
                        <div class="closeIcon"><i class="fa fa-times" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/24.jpg);">
            <h2>SHOP DETAILS</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           <a href="/discover?category=drinks"><span class="ProjectIntroduction__ProjectCategory-sc-1o2ojgb-4 fNvuiJ">음료</span></a><h1 class="ProjectIntroduction__ProjectTitle-sc-1o2ojgb-5 cWQlcy">홈카페로 즐기는 나만의 향긋한 꽃차, 꽃코디얼 5종!</h1><div class="ProjectIntroduction__Creators-sc-1o2ojgb-6 fsPnxP"><span class="ProfileImg__StyledProfileImg-sc-1vio56c-0 fBzCLY"></span><a target="_blank" rel="noopener noreferrer" class="ProjectIntroduction__CreatorName-sc-1o2ojgb-7 jDbkqK" href="/u/cconlab">우리꽃연구소</a></div>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Single Product Details Area Start ##### -->
    <section class="single_product_details_area mb-50">
        <div class="produts-details--content mb-50">
            <div class="container">
                <div class="row justify-content-between">

                    <div class="col-12 col-md-6 col-lg-5">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <a class="product-img" href="img/bg-img/49.jpg" title="Product Image">
                                        <img class="d-block w-100" src="img/bg-img/49.jpg" alt="1">
                                    </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="product-img" href="img/bg-img/49.jpg" title="Product Image">
                                        <img class="d-block w-100" src="img/bg-img/49.jpg" alt="1">
                                    </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="product-img" href="img/bg-img/49.jpg" title="Product Image">
                                        <img class="d-block w-100" src="img/bg-img/49.jpg" alt="1">
                                    </a>
                                    </div>
                                </div>
                                <ol class="carousel-indicators">
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(img/bg-img/49.jpg);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(img/bg-img/49.jpg);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(img/bg-img/49.jpg);">
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="single_product_desc">
                             <style data-styled="etlKsY QGKgG jOcSCe iSuAdB jDMeTv MskhC fMekoE fbsOED hLwNNy cAHVaf jkgXDu gMdHoi hbKGuE iDsnca cLNJqs iJpZic fWpQcH zoWUI bgEfGq fBzCLY uLRxw gsZkXT bnFLKn jbdzfG fFIyMZ fNvuiJ cWQlcy fsPnxP jDbkqK ZOwbJ fUBtAC cDjrSm jJfDnO fXnYci fHdIrJ gGVEjs cZUBTY hrvSQV lgJcVA lnSbIU cNDicH lZmZZ ccBEhl fHOYOE jHbICj knPvZB krUjgk oNWny bUoWGM kPQaEe fnDZVR jUCdsF dFOIsS neDEf fGephg llyixJ cVaVMe bmUMcp OvVKa buZwam cjInbB jXWmuN lbhpFL ftClLq hzJfoW kGPPtA iZjgMf giOSQG fmUbqI grRhAt eoTJxb cyLtIc kPEpmH egbEFv qujmm lfTmkG iubrbI erXxPv bnLQVO ksslMx kTXqqU eUqLBU dhVdtT jpHksr jQspcv bOxgXY cGivWn iMKXgj cqDukZ fOhVGs iEMnVQ kQrkKE djTeYd jMitNs bYRImX fNFchR gXpwLE" data-styled-version="4.4.1">
/* sc-component-id: LoadingIndicator__CenteringContainer-sc-1fjj6mw-1 */
.fmUbqI{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;height:100%;}
/* sc-component-id: LoadingIndicator__Wrapper-sc-1fjj6mw-3 */
.grRhAt{position:relative;vertical-align:middle;margin:2rem 0;}
/* sc-component-id: LoadingIndicator__Circle-sc-1fjj6mw-4 */
.eoTJxb{background:black;float:left;width:8px;height:8px;border-radius:50%;margin-right:5px;-webkit-animation:cXdlcp 0.65s infinite;animation:cXdlcp 0.65s infinite;}
/* sc-component-id: LoadingIndicator__Circle2-sc-1fjj6mw-5 */
.cyLtIc{background:black;float:left;width:8px;height:8px;border-radius:50%;margin-right:5px;-webkit-animation:cXdlcp 0.65s infinite;animation:cXdlcp 0.65s infinite;-webkit-animation-delay:-0.1s;animation-delay:-0.1s;}
/* sc-component-id: LoadingIndicator__Circle3-sc-1fjj6mw-6 */
.kPEpmH{background:black;float:left;width:8px;height:8px;border-radius:50%;margin-right:5px;-webkit-animation:cXdlcp 0.65s infinite;animation:cXdlcp 0.65s infinite;-webkit-animation-delay:-0.2s;animation-delay:-0.2s;}
/* sc-component-id: ProjectIntroductionVideoPlayer__PlayerControl-sc-1rpvirp-0 */
.fXnYci{display:block;width:64px;height:64px;position:absolute;left:50%;top:50%;-webkit-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);transform:translate(-50%,-50%);background:url(/wpa/4d2fb85dac2b98b00eafc4c4e4249e06.png) 50% 50% no-repeat;background-size:contain;} @media (min-width:1079px){.fXnYci{width:80px;height:80px;}}
/* sc-component-id: ProjectIntroductionVideoPlayer__OverlayComponent-sc-1rpvirp-1 */
.jJfDnO{opacity:1 !important;} .jJfDnO:hover{opacity:0.7 !important;}
/* sc-component-id: Icon__SVGICON-sc-1xkf9cp-0 */
.cVaVMe{display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-align-self:center;-ms-flex-item-align:center;align-self:center;} .cVaVMe svg{height:1em;width:1em;} .cVaVMe.baseline svg{top:0.125em;position:relative;}
/* sc-component-id: LoadingIndicator__Wrapper-sc-116vx96-0 */
.bYRImX{display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;width:100%;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;}
/* sc-component-id: LoadingIndicator__InnerWrapper-sc-116vx96-1 */
.fNFchR{position:relative;}
/* sc-component-id: LoadingIndicator__Indeterminate-sc-116vx96-2 */
.gXpwLE{position:relative;} .gXpwLE .spectrum-CircleLoader{display:inline-block;width:32px;height:32px;position:relative;direction:ltr;} .gXpwLE .spectrum-CircleLoader-track{box-sizing:border-box;border-radius:100%;border-style:solid;width:32px;height:32px;border-width:4px;border-color:#E6E6E6;} .gXpwLE .spectrum-CircleLoader-fills{position:absolute;top:0;left:0;width:100%;height:100%;will-change:transform;-webkit-transform:translateZ(0);-ms-transform:translateZ(0);transform:translateZ(0);-webkit-animation:1s infinite cubic-bezier(0.25,0.78,0.48,0.89) hQbPce;animation:1s infinite cubic-bezier(0.25,0.78,0.48,0.89) hQbPce;-webkit-transform-origin:center;-ms-transform-origin:center;transform-origin:center;} .gXpwLE .spectrum-CircleLoader-fill{box-sizing:border-box;border-style:solid;border-radius:100%;width:32px;height:32px;border-width:4px;border-color:#6D6D6D;} .gXpwLE .spectrum-CircleLoader-fillMask1,.gXpwLE .spectrum-CircleLoader-fillMask2{width:50%;height:100%;-webkit-transform-origin:100% center;-ms-transform-origin:100% center;transform-origin:100% center;-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);overflow:hidden;position:absolute;} .gXpwLE .spectrum-CircleLoader-fillSubMask1,.gXpwLE .spectrum-CircleLoader-fillSubMask2{width:100%;height:100%;-webkit-transform-origin:100% center;-ms-transform-origin:100% center;transform-origin:100% center;overflow:hidden;-webkit-transform:rotate(-180deg);-ms-transform:rotate(-180deg);transform:rotate(-180deg);} .gXpwLE .spectrum-CircleLoader-fillMask2{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);} .gXpwLE .spectrum-CircleLoader-fillSubMask1{will-change:transform;-webkit-transform:translateZ(0);-ms-transform:translateZ(0);transform:translateZ(0);-webkit-animation:1s infinite linear cMgaQF;animation:1s infinite linear cMgaQF;} .gXpwLE .spectrum-CircleLoader-fillSubMask2{will-change:transform;-webkit-transform:translateZ(0);-ms-transform:translateZ(0);transform:translateZ(0);-webkit-animation:1s infinite linear enpUnr;animation:1s infinite linear enpUnr;}
/* sc-component-id: LikeButton__Wrapper-whittq-0 */
.dFOIsS{position:relative;cursor:pointer;}
/* sc-component-id: LikeButton__LikedBtn-whittq-1 */
.neDEf{border:0;padding:0;overflow:hidden;background:transparent;position:relative;z-index:2;outline:none;width:100%;height:100%;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;} .neDEf:hover{background-color:#f2f2f2;} .neDEf::before{content:'';display:block;width:100%;height:100%;position:absolute;left:50%;top:50%;-webkit-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);transform:translate(-50%,-50%);background:url(/wpa/f3a4eacaa8d02982fa511cc08290ab6c.png) 0 0 no-repeat;background-size:cover;} .neDEf.isLiked::before{background:url(/wpa/78a0723f80e514e470cda540f80e09e8.png) 0 0 no-repeat;-webkit-animation:jPJrHq ease 0.5s;animation:jPJrHq ease 0.5s;-webkit-animation-iteration-count:1;animation-iteration-count:1;-webkit-transform-origin:0 0;-ms-transform-origin:0 0;transform-origin:0 0;background-size:cover;} .neDEf span{position:absolute;text-indent:-1000em;overflow:hidden;}
/* sc-component-id: Container-gci8y7-0 */
.MskhC{width:100%;margin:0 auto;position:relative;padding:0;} @media (min-width:1080px){.MskhC{width:1080px;margin:0 auto;}}
/* sc-component-id: Container__ContainerComponent-sc-1ey2h1l-0 */
.cqDukZ{width:100%;} @media only screen and (min-width:1080px){.cqDukZ{width:1080px;margin:0 auto;}}
/* sc-component-id: ProjectListWithCard__StyledLoadingIndicator-sc-80ruv-3 */
.jMitNs{background:#fff;padding:32px 0 0;} @media only screen and (min-width:1080px){.jMitNs{padding:48px 0 0;}}
/* sc-component-id: ProjectListWithCard__ListWrapper-sc-80ruv-4 */
.djTeYd{width:100%;}
/* sc-component-id: ProfileImg__StyledProfileImg-sc-1vio56c-0 */
.bgEfGq{display:inline-block;background-image:url(https://tumblbug-assets.imgix.net/assets/user-account.png?s=08b1f9ecf24209994ac9b81900936c0e);background-size:cover;background-position:50% 38%;width:28px;height:28px;border-radius:50%;box-shadow:0 0 1px 0 rgba(208,208,208,1) inset,0 0 1px 0 rgba(208,208,208,1);margin-right:0;} @media (min-width:1080px){.bgEfGq{width:38px;height:38px;}}.fBzCLY{display:inline-block;background-image:url(https://tumblbug-upi.imgix.net/4f23f414-c94b-4f02-af7d-b65281ab04c0.jpg?ixlib=rb-1.1.0&w=200&h=200&auto=format%2Ccompress&fit=facearea&facepad=2.0&ch=Save-Data&mask=ellipse&s=a1f182797751ebeaa6a51213ae807979);background-size:cover;background-position:50% 38%;width:25px;height:25px;border-radius:50%;box-shadow:0 0 1px 0 rgba(208,208,208,1) inset,0 0 1px 0 rgba(208,208,208,1);margin-right:.5rem;} @media (min-width:1080px){}.uLRxw{display:inline-block;background-image:url(https://tumblbug-upi.imgix.net/4f23f414-c94b-4f02-af7d-b65281ab04c0.jpg?ixlib=rb-1.1.0&w=200&h=200&auto=format%2Ccompress&fit=facearea&facepad=2.0&ch=Save-Data&mask=ellipse&s=a1f182797751ebeaa6a51213ae807979);background-size:cover;background-position:50% 38%;width:40px;height:40px;border-radius:50%;box-shadow:0 0 1px 0 rgba(208,208,208,1) inset,0 0 1px 0 rgba(208,208,208,1);margin-right:1rem;} @media (min-width:1080px){}
/* sc-component-id: Header-ou4e17-0 */
.jDMeTv{width:100%;height:58px;background-color:#ffffff;box-shadow:0px 1px 2px 0px rgba(10,10,10,0.1);display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;position:relative;z-index:999;} @media (min-width:1080px){.jDMeTv{height:65px;}}
/* sc-component-id: TumblbugLogo-sc-5rx33z-0 */
.iDsnca{fill:#000000;width:70px;height:18.41px;} @media (min-width:1080px){.iDsnca{width:85px;height:22.36px;}}
/* sc-component-id: Button-sc-1x93b2b-0 */
.jQspcv{cursor:pointer;display:inline-block;min-height:1em;outline:none;border:none;vertical-align:baseline;box-shadow:0px 0px 0px 1px transparent inset,0px 0em 0px 0px rgba(0,0,0,0.1) inset;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;-webkit-tap-highlight-color:transparent;margin:0 .25em 0 0;border-radius:0.28571429rem;text-transform:none;text-shadow:none;font-weight:bold;line-height:1em;font-style:normal;text-align:center;-webkit-text-decoration:none;text-decoration:none;color:rgba(0,0,0,.6);background-color:#e7e7e7;padding:1em 1.5em;font-size:1em;width:100%;opacity:1;} .jQspcv > i{margin:0 .42857143em 0 -.21428571em;} .jQspcv:hover,.jQspcv:focus,.jQspcv:active{background-color:#d9d9d9;color:rgba(0,0,0,8);}
/* sc-component-id: Divider-sc-17hnup0-0 */
.eUqLBU{display:block;border-top:1px solid #efefef;margin:1rem 0;height:0;}
/* sc-component-id: SiteHeader__SiteHeaderWrapper-q8dvod-0 */
.iSuAdB{position:relative;}
/* sc-component-id: SiteHeader__SiteHeaderMenu-q8dvod-1 */
.fMekoE{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;position:relative;}
/* sc-component-id: SiteHeader__LeftMenu-q8dvod-2 */
.fbsOED{-webkit-flex:1 0 25%;-ms-flex:1 0 25%;flex:1 0 25%;text-align:center;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}
/* sc-component-id: SiteHeader__CenterMenu-q8dvod-3 */
.hbKGuE{width:10rem;position:absolute;left:0;right:0;top:0;bottom:0;margin:0 auto;padding:0 1rem;cursor:pointer;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;} .hbKGuE:hover > div{fill:#757575;}
/* sc-component-id: SiteHeader__RightMenu-q8dvod-4 */
.cLNJqs{-webkit-flex:1 0 25%;-ms-flex:1 0 25%;flex:1 0 25%;text-align:right;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:end;-webkit-justify-content:flex-end;-ms-flex-pack:end;justify-content:flex-end;}
/* sc-component-id: SiteHeader__BlockLink-q8dvod-6 */
.fWpQcH{color:inherit;display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;color:black;font-weight:bold;font-size:1rem;cursor:pointer;line-height:58px;padding:0 1rem;} .fWpQcH:hover{color:inherit;}
/* sc-component-id: SiteHeader__LinkButton-q8dvod-7 */
.hLwNNy{border:none;background:transparent;outline:none;color:black;font-weight:bold;font-size:1rem;cursor:pointer;line-height:58px;padding:0 1rem;} .hLwNNy > i{font-size:1.25em;} @media (min-width:1080px){.hLwNNy{line-height:65px;}.hLwNNy > i{font-size:1em;margin-right:0.5em;}} .hLwNNy:hover,.hLwNNy:active{color:#757575;}
/* sc-component-id: SiteHeader__LinkItem-q8dvod-8 */
.gMdHoi{diplay:block;border:none;background:transparent;outline:none;color:black;font-weight:bold;font-size:1rem;cursor:pointer;line-height:58px;padding:0 1rem;} .gMdHoi > i{font-size:1.25em;} @media (min-width:1080px){.gMdHoi{line-height:65px;}.gMdHoi > i{font-size:1em;margin-right:0.5em;}} .gMdHoi:hover{color:#757575;}
/* sc-component-id: SiteHeader__ItemLabel-q8dvod-9 */
@media (max-width:1079px){.cAHVaf{display:none;}}
/* sc-component-id: SiteHeader__ForMobile-q8dvod-10 */
.jkgXDu{display:none;} @media (min-width:1080px){.jkgXDu{display:inline;}}
/* sc-component-id: SiteHeader__ProfileImageWrapper-q8dvod-12 */
.zoWUI{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;position:relative;margin-left:0.75rem;}
/* sc-component-id: SiteHeader__SearchButton-q8dvod-15 */
.iJpZic{cursor:pointer;display:inline-block;min-height:1em;outline:none;border:none;vertical-align:baseline;box-shadow:0px 0px 0px 1px transparent inset,0px 0em 0px 0px rgba(0,0,0,0.1) inset;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;-webkit-tap-highlight-color:transparent;margin:0 .25em 0 0;border-radius:0.28571429rem;text-transform:none;text-shadow:none;font-weight:bold;line-height:1em;font-style:normal;text-align:center;-webkit-text-decoration:none;text-decoration:none;color:rgba(0,0,0,.6);background-color:#e7e7e7;padding:1em 1.5em;font-size:1em;opacity:1;background-color:transparent;border:0;padding:0;margin-right:-0.8rem;z-index:9;} .iJpZic > i{margin:0 .42857143em 0 -.21428571em;} .iJpZic:hover,.iJpZic:focus,.iJpZic:active{background-color:#d9d9d9;color:rgba(0,0,0,8);} .iJpZic:before{content:'';display:block;margin-right:-10px;margin:0;width:20px;height:20px;background-image:url(/wpa/e5aa161342e919b420a40fc6e34cce08.png);background-size:cover;background-repeat:no-repeat;background-position:50% 50%;} @media (min-width:1080px){.iJpZic:before{margin:0;width:24px;height:24px;}} .iJpZic:focus,.iJpZic:hover,.iJpZic:active{background-color:transparent;} @media (min-width:1080px){.iJpZic{margin:0 0.5rem 0 0;padding:5px;}}
/* sc-component-id: RecommendProjects__StyledProjectListWithCard-w6nvyu-1 */
.kQrkKE .card-wrapper{padding-top:20px !important;padding-bottom:20px !important;} @media only screen and (min-width:1080px){.kQrkKE{width:100%;}}
/* sc-component-id: RecommendProjects__Wrapper-w6nvyu-2 */
.cGivWn{background:#FFF;padding-top:20px;} @media only screen and (min-width:1080px){.cGivWn{padding-top:32px;}}
/* sc-component-id: RecommendProjects__StyledContainer-w6nvyu-3 */
.iMKXgj{padding:0 9px;} @media only screen and (min-width:1080px){.iMKXgj{padding:0 12px;}}
/* sc-component-id: RecommendProjects__StyledTitleLink-w6nvyu-5 */
.fOhVGs{font-size:18px;line-height:27px;-webkit-letter-spacing:-0.020em;-moz-letter-spacing:-0.020em;-ms-letter-spacing:-0.020em;letter-spacing:-0.020em;color:#3D3D3D;font-weight:bold;margin:0 0 0 7px;} .fOhVGs:hover{color:#3D3D3D;opacity:0.5;} .fOhVGs > .RecommendProjects__StyledSVGIcon-w6nvyu-4{font-size:14px;line-height:24px;-webkit-letter-spacing:-0.015em;-moz-letter-spacing:-0.015em;-ms-letter-spacing:-0.015em;letter-spacing:-0.015em;margin:0 0 0 4px;} .fOhVGs > .RecommendProjects__StyledSVGIcon-w6nvyu-4 svg{fill:#9E9E9E;top:0.1rem;position:relative;} @media only screen and (min-width:1080px){.fOhVGs{font-size:20px;line-height:29px;-webkit-letter-spacing:-0.025em;-moz-letter-spacing:-0.025em;-ms-letter-spacing:-0.025em;letter-spacing:-0.025em;margin:0 0 0 12px;}.fOhVGs > .RecommendProjects__StyledSVGIcon-w6nvyu-4 svg{top:0;}}
/* sc-component-id: Tooltip__TooltipWrapper-sc-1czh1yq-0 */
.kPQaEe{position:relative;}
/* sc-component-id: FundingInformation-cjd67l-0 */
.lZmZZ{-webkit-order:5;-ms-flex-order:5;order:5;padding:1rem;margin:0 0 0.5rem 0;background-color:#fafafa;border:1px solid #efefef;} @media (min-width:1080px){.lZmZZ{margin:0 0.5rem 1rem;padding:1rem 1.5rem;}}
/* sc-component-id: FundingInformation__FundingInformationInner-cjd67l-1 */
.ccBEhl{font-size:1rem;color:rgba(0,0,0,0.8);position:relative;} .ccBEhl > div{font-weight:700;line-height:1.5;margin-bottom:0.5rem;} .ccBEhl > span{line-height:1.5;font-size:1rem;} .ccBEhl .move-to-helpcenter{background:url(/wpa/22ece21400c0c8e86f700ad9cb3933e9.png) 50% 50% no-repeat;background-size:cover;position:absolute;width:16px;height:16px;text-indent:-1000em;overflow:hidden;right:0;top:0;}
/* sc-component-id: PledgeButton__Wrapper-arwur9-0 */
.krUjgk{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}
/* sc-component-id: PledgeButton__StyledButton-arwur9-1 */
.oNWny{cursor:pointer;display:inline-block;min-height:1em;outline:none;border:none;vertical-align:baseline;box-shadow:0px 0px 0px 1px transparent inset,0px 0em 0px 0px rgba(0,0,0,0.1) inset;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;-webkit-tap-highlight-color:transparent;margin:0 .25em 0 0;border-radius:0.28571429rem;text-transform:none;text-shadow:none;font-weight:bold;line-height:1em;font-style:normal;text-align:center;-webkit-text-decoration:none;text-decoration:none;color:rgba(0,0,0,.6);background-color:#e7e7e7;background-color:#fa6462;color:#fff;padding:1.2em 2em;font-size:1.1em;width:100%;opacity:1;-webkit-box-flex:1;-webkit-flex-grow:1;-ms-flex-positive:1;flex-grow:1;width:auto;padding-left:10px;padding-right:10px;} .oNWny > i{margin:0 .42857143em 0 -.21428571em;} .oNWny:hover,.oNWny:focus,.oNWny:active{background-color:#d9d9d9;color:rgba(0,0,0,8);} .oNWny:hover,.oNWny:focus,.oNWny:active{background-color:#ff4543;color:#fff;}
/* sc-component-id: ProjectIntroduction__ProjectIntroductionBackground-sc-1o2ojgb-0 */
.gsZkXT{background-color:#fff;width:100%;padding-bottom:1rem;overflow-x:hidden;} @media (min-width:1080px){.gsZkXT{padding-bottom:3rem;}}
/* sc-component-id: ProjectIntroduction__ProjectIntroductionWrapper-sc-1o2ojgb-1 */
.bnFLKn{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;}
/* sc-component-id: ProjectIntroduction__ProjectOutline-sc-1o2ojgb-2 */
.jbdzfG{width:100%;height:auto;-webkit-order:2;-ms-flex-order:2;order:2;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:flex-start;-webkit-box-align:flex-start;-ms-flex-align:flex-start;align-items:flex-start;} @media (min-width:1080px){.jbdzfG{height:280px;padding-bottom:0;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-order:1;-ms-flex-order:1;order:1;}}
/* sc-component-id: ProjectIntroduction__ProjectOutlineInner-sc-1o2ojgb-3 */
.fFIyMZ{display:block;text-align:left;margin:0;padding:1.75rem 1rem;} @media (min-width:1080px){.fFIyMZ{text-align:center;margin:0 auto;padding:1rem;}}
/* sc-component-id: ProjectIntroduction__ProjectCategory-sc-1o2ojgb-4 */
.fNvuiJ{font-size:0.9rem;font-weight:600;padding:0.6rem;color:#757575;background-color:#fafafa;border:1px solid #efefef;border-radius:2px;}
/* sc-component-id: ProjectIntroduction__ProjectTitle-sc-1o2ojgb-5 */
.cWQlcy{font-size:1.6rem;line-height:1.5;margin:1.2rem 0;word-break:keep-all;} @media (min-width:1080px){.cWQlcy{font-size:2.8rem;margin:1.5rem 0 1rem;}}
/* sc-component-id: ProjectIntroduction__Creators-sc-1o2ojgb-6 */
.fsPnxP{position:relative;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;} @media (min-width:1080px){.fsPnxP{-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;}}
/* sc-component-id: ProjectIntroduction__CreatorName-sc-1o2ojgb-7 */
.jDbkqK{font-size:1rem;font-weight:600;color:inherit;cursor:pointer;} .jDbkqK:hover{color:#757575;cursor:pointer;}
/* sc-component-id: ProjectIntroduction__ProjectIntroductionMainColumn-sc-1o2ojgb-8 */
.ZOwbJ{width:100%;height:auto;margin:0;-webkit-order:1;-ms-flex-order:1;order:1;} @media (min-width:1080px){.ZOwbJ{width:650px;height:auto;margin:0 1rem;-webkit-order:2;-ms-flex-order:2;order:2;}}
/* sc-component-id: ProjectIntroduction__ProjectCoverImageFigure-sc-1o2ojgb-9 */
.fUBtAC{background-color:#000;display:block;height:0;margin:0;overflow:hidden;padding:0 0 75%;position:relative;}
/* sc-component-id: ProjectIntroduction__ProjectCoverVideo-sc-1o2ojgb-10 */
.cDjrSm{height:100%;width:100%;top:0;left:0;margin:0;padding:0;position:absolute;}
/* sc-component-id: ProjectIntroduction__ProjectIntroductionSubColumn-sc-1o2ojgb-12 */
.fHdIrJ{width:100%;-webkit-order:3;-ms-flex-order:3;order:3;} @media (min-width:1080px){.fHdIrJ{width:360px;-webkit-order:3;-ms-flex-order:3;order:3;margin:0 1rem;}}
/* sc-component-id: ProjectIntroduction__FundingStatus-sc-1o2ojgb-13 */
.gGVEjs{width:100%;-webkit-order:4;-ms-flex-order:4;order:4;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;padding:0.5rem 1rem 1.5rem;} @media (min-width:1080px){.gGVEjs{height:280px;width:100%;display:block;margin:0 0 2rem 0.5rem;padding:0;}}
/* sc-component-id: ProjectIntroduction__Metric-sc-1o2ojgb-14 */
.cZUBTY{margin:0;} @media (min-width:1080px){.cZUBTY{margin:0 0 1.75rem;}}
/* sc-component-id: ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 */
.hrvSQV{font-size:0.9rem;margin-bottom:0.4rem;} @media (min-width:1080px){.hrvSQV{font-size:1rem;margin-bottom:1rem;}}
/* sc-component-id: ProjectIntroduction__StatusValue-sc-1o2ojgb-16 */
.lgJcVA{font-size:1.6rem;-webkit-letter-spacing:0.5px;-moz-letter-spacing:0.5px;-ms-letter-spacing:0.5px;letter-spacing:0.5px;} @media (max-width:320px){.lgJcVA{font-size:1.25rem;}} @media (min-width:1080px){.lgJcVA{font-size:2.75rem;}}
/* sc-component-id: ProjectIntroduction__FundingRate-sc-1o2ojgb-17 */
.cNDicH{display:inline;font-size:0.9rem;margin-left:7px;font-weight:bolder;} @media (max-width:320px){.cNDicH{display:none;}} @media (min-width:1080px){.cNDicH{font-size:1.3rem;margin-left:10px;}}
/* sc-component-id: ProjectIntroduction__Small-sc-1o2ojgb-18 */
.lnSbIU{font-size:0.85rem;margin-left:0.25rem;} @media (min-width:1080px){.lnSbIU{font-size:1rem;}}
/* sc-component-id: ProjectIntroduction__ProjectButtons-sc-1o2ojgb-19 */
.fHOYOE{-webkit-order:5;-ms-flex-order:5;order:5;width:100%;background-color:#fff;}
/* sc-component-id: ProjectIntroduction__ProjectButtonsInner-sc-1o2ojgb-20 */
.jHbICj{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;padding:0 7px;}
/* sc-component-id: ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 */
.knPvZB{-webkit-box-flex:1;-webkit-flex-grow:1;-ms-flex-positive:1;flex-grow:1;-webkit-order:1;-ms-flex-order:1;order:1;} .knPvZB button{margin:0;} @media (min-width:1080px){.knPvZB button{height:52px;}}
/* sc-component-id: ProjectIntroduction__StyledLikeButton-sc-1o2ojgb-22 */
.jUCdsF{width:52px;height:52px;border-radius:4px;background:#FFF;border:1px solid #E6E6E6;box-sizing:border-box;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;} .jUCdsF button::before{width:24px;height:24px;}
/* sc-component-id: ProjectIntroduction__StyledTooltip-sc-1o2ojgb-23 */
.bUoWGM{-webkit-order:2;-ms-flex-order:2;order:2;} .bUoWGM .tooltip-body{margin-left:-10px;} .bUoWGM .tooltip-body::after{margin-left:5px;}
/* sc-component-id: ProjectIntroduction__SecondaryButton-sc-1o2ojgb-24 */
.fnDZVR{padding:0.5rem 0;margin:0 0 0 6px;}
/* sc-component-id: ProjectIntroduction__ShareSNSButton-sc-1o2ojgb-25 */
.llyixJ{cursor:pointer;display:inline-block;min-height:1em;outline:none;border:none;vertical-align:baseline;box-shadow:0px 0px 0px 1px transparent inset,0px 0em 0px 0px rgba(0,0,0,0.1) inset;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;transition:opacity 0.1s ease,background-color 0.1s ease,color 0.1s ease,box-shadow 0.1s ease,background 0.1s ease;-webkit-tap-highlight-color:transparent;margin:0 .25em 0 0;border-radius:0.28571429rem;text-transform:none;text-shadow:none;font-weight:bold;line-height:1em;font-style:normal;text-align:center;-webkit-text-decoration:none;text-decoration:none;color:rgba(0,0,0,.6);background-color:#e7e7e7;padding:1em 1.5em;font-size:1em;opacity:1;font-size:20px;width:52px;height:52px;background:#FFF;border:1px solid #E6E6E6 !important;margin:0;padding:0;box-sizing:border-box;} .llyixJ > i{margin:0 .42857143em 0 -.21428571em;} .llyixJ:hover,.llyixJ:focus,.llyixJ:active{background-color:#d9d9d9;color:rgba(0,0,0,8);} .llyixJ svg{fill:#6D6D6D;} .llyixJ:hover{background-color:#f2f2f2;}
/* sc-component-id: ProjectIntroduction__TertiaryButton-sc-1o2ojgb-26 */
.fGephg{padding:0.5rem 0;margin:0 0 0 6px;-webkit-order:3;-ms-flex-order:3;order:3;}
/* sc-component-id: ContentsNavigation__NavItem-mwsx7i-0 */
.cjInbB{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-box-flex:0;-webkit-flex-grow:0;-ms-flex-positive:0;flex-grow:0;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;padding:0.5rem 1rem;line-height:1.5;font-size:1rem;font-weight:bold;color:rgba(0,0,0,0.4);cursor:pointer;} .cjInbB:hover{color:rgba(0,0,0,0.9);}
/* sc-component-id: ContentsNavigation__ProjectContentsNavigation-mwsx7i-1 */
.bmUMcp{width:100%;height:48px;padding:0;background-color:#fff;box-shadow:0 2px 3px rgba(0,0,0,0.1);border-top:1px solid #efefef;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:stretch;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch;position:relative;z-index:10;} @media (min-width:1080px){.bmUMcp{height:52px;padding:0 1rem;box-sizing:border-box;}}
/* sc-component-id: ContentsNavigation__ProjectContentsNavigationInner-mwsx7i-2 */
.OvVKa{width:100vw;height:100%;margin:0 auto;padding:0;} @media (min-width:1080px){.OvVKa{width:1080px;margin:0 auto;}}
/* sc-component-id: ContentsNavigation__NavLeft-mwsx7i-3 */
.buZwam{max-width:100%;height:100%;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:start;-webkit-justify-content:flex-start;-ms-flex-pack:start;justify-content:flex-start;white-space:nowrap;-webkit-align-items:stretch;-webkit-box-align:stretch;-ms-flex-align:stretch;align-items:stretch;float:left;margin:0 1rem;overflow:auto;}
/* sc-component-id: ContentsNavigation__CommunityPostAmount-mwsx7i-6 */
.jXWmuN{font-size:0.8rem;font-weight:bold;margin:-0.2rem -0.1rem 0 0.2rem;}
/* sc-component-id: Card-sc-1sgtmvk-0 */
.iZjgMf{width:100%;background-color:#fff;box-shadow:0 1px 2px 0 rgba(0,0,0,0.1);-webkit-transition:box-shadow 0.2s ease-in-out;transition:box-shadow 0.2s ease-in-out;-webkit-tap-highlight-color:transparent;}
/* sc-component-id: CreatorCard__CreatorCardInner-sc-1ifohey-0 */
.iubrbI{padding:1.5rem;}
/* sc-component-id: CreatorCard__CreatorCardLabel-sc-1ifohey-1 */
.erXxPv{font-weight:bolder;margin-bottom:1.25rem;}
/* sc-component-id: CreatorCard__CreatorProfile-sc-1ifohey-2 */
.bnLQVO{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;margin-bottom:1rem;} .bnLQVO > a{-webkit-flex-shrink:10;-ms-flex-negative:10;flex-shrink:10;}
/* sc-component-id: CreatorCard__CreatorName-sc-1ifohey-3 */
.ksslMx{color:black;font-weight:bolder;} .ksslMx:hover{color:black;cursor:pointer;} @media (min-width:1080px){.ksslMx:hover{color:#757575;cursor:pointer;}}
/* sc-component-id: CreatorCard__CreatorBiography-sc-1ifohey-4 */
.kTXqqU{line-height:1.75;}
/* sc-component-id: CreatorCard__CreatorStats-sc-1ifohey-5 */
.dhVdtT{color:#757575;font-size:0.9rem;line-height:1.7;} .dhVdtT > div{margin-bottom:0.25rem;}
/* sc-component-id: CreatorCard__CreatorContactButton-sc-1ifohey-6 */
.jpHksr{margin-top:1rem;width:100%;}
/* sc-component-id: ProjectPage__ProjectContentsBackground-f3cisk-0 */
.lbhpFL{background-color:transparent;width:100%;}
/* sc-component-id: ProjectPage__ProjectContents-f3cisk-1 */
.ftClLq{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-top:0.5rem;} @media (min-width:1080px){.ftClLq{margin-top:1rem;}}
/* sc-component-id: ProjectPage__ProjectContentsMainColumn-f3cisk-2 */
.hzJfoW{-webkit-order:1;-ms-flex-order:1;order:1;width:100%;margin:0.25rem 0 0.75rem;} @media (min-width:1080px){.hzJfoW{width:670px;margin:0 0.5rem 0 1rem;}}
/* sc-component-id: ProjectPage__ProjectContentsSubColumn-f3cisk-3 */
.egbEFv{-webkit-order:2;-ms-flex-order:2;order:2;width:100%;margin:0.25rem 0;} @media (min-width:1080px){.egbEFv{width:360px;margin:0 1rem 0 0.5rem;}}
/* sc-component-id: ProjectPage__MainColumnInner-f3cisk-4 */
.kGPPtA{width:100%;} @media (min-width:1080px){.kGPPtA{min-height:500px;}}
/* sc-component-id: ProjectPage__SubColumnInner-f3cisk-6 */
.qujmm{width:100%;} @media (min-width:1080px){.qujmm{min-height:500px;}}
/* sc-component-id: ProjectPage__StyledRecommendProjects-f3cisk-7 */
.bOxgXY{position:relative;z-index:2;margin-top:10px;padding-bottom:52px;padding-bottom:calc(constant(safe-area-inset-bottom) + 52px);padding-bottom:calc(env(safe-area-inset-bottom) + 52px);} @media (min-width:1080px){.bOxgXY{margin-top:60px;padding-bottom:76px;padding-bottom:calc(constant(safe-area-inset-bottom) + 76px);padding-bottom:calc(env(safe-area-inset-bottom) + 76px);}}
/* sc-component-id: StoryCard__StoryCardInner-sc-6cra5i-0 */
.giOSQG{padding:2rem 0;position:relative;}
/* sc-component-id: ScrollTop__StyledIcon-j9uqn7-0 */
.jOcSCe{display:-webkit-box !important;display:-webkit-flex !important;display:-ms-flexbox !important;display:flex !important;opacity:0 !important;position:absolute;cursor:pointer;left:0;top:0;width:100% !important;height:100% !important;border-radius:50%;background:#fff;border:1px solid #D0D0D0;margin:0 !important;-webkit-transition-property:opacity,border;transition-property:opacity,border;-webkit-transition-duration:0.2s;transition-duration:0.2s;-webkit-transition-timing-function:ease-in;transition-timing-function:ease-in;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;overflow:hidden;} .jOcSCe svg{fill:#0D0D0D;width:18px;opacity:0;-webkit-transition-property:opacity;transition-property:opacity;-webkit-transition-duration:0.2s;transition-duration:0.2s;-webkit-transition-timing-function:ease-in;transition-timing-function:ease-in;} @media only screen and (min-width:1080px){.jOcSCe svg{width:24px;}}
/* sc-component-id: ScrollTop__ScrollTopBtnWrapper-j9uqn7-1 */
.etlKsY{position:fixed;width:42px;height:42px;right:16px;bottom:72px;bottom:calc(constant(safe-area-inset-bottom) + 72px);bottom:calc(env(safe-area-inset-bottom) + 72px);z-index:999;display:none;} .etlKsY.animate .ScrollTop__StyledIcon-j9uqn7-0{opacity:0.8 !important;} .etlKsY.animate .ScrollTop__StyledIcon-j9uqn7-0 svg{opacity:0.5;} .etlKsY:hover .ScrollTop__StyledIcon-j9uqn7-0 svg{opacity:1;} @media only screen and (min-width:1080px){.etlKsY{width:56px;height:56px;bottom:24px;right:24px;}}
/* sc-component-id: ScrollTop__ScrollTopBtn-j9uqn7-2 */
.QGKgG{width:0;height:0;border:0;border-radius:50%;text-indent:-100em;overflow:hidden;padding:0;outline:none;position:absolute;background:transparent;z-index:2;} .QGKgG span{position:relative;} .QGKgG:active{outline:none;}</style><style data-styled="jPJrHq cXdlcp hQbPce cMgaQF enpUnr" data-styled-version="4.4.1">
/* sc-component-id: sc-keyframes-jPJrHq */
@-webkit-keyframes jPJrHq{0%{-webkit-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);-ms-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);}51%{-webkit-transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);-ms-transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);}100%{-webkit-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);-ms-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);}} @keyframes jPJrHq{0%{-webkit-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);-ms-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);}51%{-webkit-transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);-ms-transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);transform:scaleX(1.20) scaleY(1.20) translate(-50%,-50%);}100%{-webkit-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);-ms-transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);transform:scaleX(1.00) scaleY(1.00) translate(-50%,-50%);}}
/* sc-component-id: sc-keyframes-cXdlcp */
@-webkit-keyframes cXdlcp{0%{-webkit-transform:translateY(0%);-ms-transform:translateY(0%);transform:translateY(0%);opacity:1;}50%{-webkit-transform:translateY(100%);-ms-transform:translateY(100%);transform:translateY(100%);opacity:.3;}100%{-webkit-transform:translateY(0%);-ms-transform:translateY(0%);transform:translateY(0%);opacity:1;}} @keyframes cXdlcp{0%{-webkit-transform:translateY(0%);-ms-transform:translateY(0%);transform:translateY(0%);opacity:1;}50%{-webkit-transform:translateY(100%);-ms-transform:translateY(100%);transform:translateY(100%);opacity:.3;}100%{-webkit-transform:translateY(0%);-ms-transform:translateY(0%);transform:translateY(0%);opacity:1;}}
/* sc-component-id: sc-keyframes-hQbPce */
@-webkit-keyframes hQbPce{0%{-webkit-transform:rotate(-90deg);-ms-transform:rotate(-90deg);transform:rotate(-90deg);}100%{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg);}} @keyframes hQbPce{0%{-webkit-transform:rotate(-90deg);-ms-transform:rotate(-90deg);transform:rotate(-90deg);}100%{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg);}}
/* sc-component-id: sc-keyframes-cMgaQF */
@-webkit-keyframes cMgaQF{0%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}1.69%{-webkit-transform:rotate(72.3deg);-ms-transform:rotate(72.3deg);transform:rotate(72.3deg);}3.39%{-webkit-transform:rotate(55.5deg);-ms-transform:rotate(55.5deg);transform:rotate(55.5deg);}5.08%{-webkit-transform:rotate(40.3deg);-ms-transform:rotate(40.3deg);transform:rotate(40.3deg);}6.78%{-webkit-transform:rotate(25deg);-ms-transform:rotate(25deg);transform:rotate(25deg);}8.47%{-webkit-transform:rotate(10.6deg);-ms-transform:rotate(10.6deg);transform:rotate(10.6deg);}10.17%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}11.86%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}13.56%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}15.25%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}16.95%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}18.64%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}20.34%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}22.03%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}23.73%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}25.42%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}27.12%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}28.81%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}30.51%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}32.2%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}33.9%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}35.59%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}37.29%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}38.98%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}40.68%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}42.37%{-webkit-transform:rotate(5.3deg);-ms-transform:rotate(5.3deg);transform:rotate(5.3deg);}44.07%{-webkit-transform:rotate(13.4deg);-ms-transform:rotate(13.4deg);transform:rotate(13.4deg);}45.76%{-webkit-transform:rotate(20.6deg);-ms-transform:rotate(20.6deg);transform:rotate(20.6deg);}47.46%{-webkit-transform:rotate(29deg);-ms-transform:rotate(29deg);transform:rotate(29deg);}49.15%{-webkit-transform:rotate(36.5deg);-ms-transform:rotate(36.5deg);transform:rotate(36.5deg);}50.85%{-webkit-transform:rotate(42.6deg);-ms-transform:rotate(42.6deg);transform:rotate(42.6deg);}52.54%{-webkit-transform:rotate(48.8deg);-ms-transform:rotate(48.8deg);transform:rotate(48.8deg);}54.24%{-webkit-transform:rotate(54.2deg);-ms-transform:rotate(54.2deg);transform:rotate(54.2deg);}55.93%{-webkit-transform:rotate(59.4deg);-ms-transform:rotate(59.4deg);transform:rotate(59.4deg);}57.63%{-webkit-transform:rotate(63.2deg);-ms-transform:rotate(63.2deg);transform:rotate(63.2deg);}59.32%{-webkit-transform:rotate(67.2deg);-ms-transform:rotate(67.2deg);transform:rotate(67.2deg);}61.02%{-webkit-transform:rotate(70.8deg);-ms-transform:rotate(70.8deg);transform:rotate(70.8deg);}62.71%{-webkit-transform:rotate(73.8deg);-ms-transform:rotate(73.8deg);transform:rotate(73.8deg);}64.41%{-webkit-transform:rotate(76.2deg);-ms-transform:rotate(76.2deg);transform:rotate(76.2deg);}66.1%{-webkit-transform:rotate(78.7deg);-ms-transform:rotate(78.7deg);transform:rotate(78.7deg);}67.8%{-webkit-transform:rotate(80.6deg);-ms-transform:rotate(80.6deg);transform:rotate(80.6deg);}69.49%{-webkit-transform:rotate(82.6deg);-ms-transform:rotate(82.6deg);transform:rotate(82.6deg);}71.19%{-webkit-transform:rotate(83.7deg);-ms-transform:rotate(83.7deg);transform:rotate(83.7deg);}72.88%{-webkit-transform:rotate(85deg);-ms-transform:rotate(85deg);transform:rotate(85deg);}74.58%{-webkit-transform:rotate(86.3deg);-ms-transform:rotate(86.3deg);transform:rotate(86.3deg);}76.27%{-webkit-transform:rotate(87deg);-ms-transform:rotate(87deg);transform:rotate(87deg);}77.97%{-webkit-transform:rotate(87.7deg);-ms-transform:rotate(87.7deg);transform:rotate(87.7deg);}79.66%{-webkit-transform:rotate(88.3deg);-ms-transform:rotate(88.3deg);transform:rotate(88.3deg);}81.36%{-webkit-transform:rotate(88.6deg);-ms-transform:rotate(88.6deg);transform:rotate(88.6deg);}83.05%{-webkit-transform:rotate(89.2deg);-ms-transform:rotate(89.2deg);transform:rotate(89.2deg);}84.75%{-webkit-transform:rotate(89.2deg);-ms-transform:rotate(89.2deg);transform:rotate(89.2deg);}86.44%{-webkit-transform:rotate(89.5deg);-ms-transform:rotate(89.5deg);transform:rotate(89.5deg);}88.14%{-webkit-transform:rotate(89.9deg);-ms-transform:rotate(89.9deg);transform:rotate(89.9deg);}89.83%{-webkit-transform:rotate(89.7deg);-ms-transform:rotate(89.7deg);transform:rotate(89.7deg);}91.53%{-webkit-transform:rotate(90.1deg);-ms-transform:rotate(90.1deg);transform:rotate(90.1deg);}93.22%{-webkit-transform:rotate(90.2deg);-ms-transform:rotate(90.2deg);transform:rotate(90.2deg);}94.92%{-webkit-transform:rotate(90.1deg);-ms-transform:rotate(90.1deg);transform:rotate(90.1deg);}96.61%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}98.31%{-webkit-transform:rotate(89.8deg);-ms-transform:rotate(89.8deg);transform:rotate(89.8deg);}100%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}} @keyframes cMgaQF{0%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}1.69%{-webkit-transform:rotate(72.3deg);-ms-transform:rotate(72.3deg);transform:rotate(72.3deg);}3.39%{-webkit-transform:rotate(55.5deg);-ms-transform:rotate(55.5deg);transform:rotate(55.5deg);}5.08%{-webkit-transform:rotate(40.3deg);-ms-transform:rotate(40.3deg);transform:rotate(40.3deg);}6.78%{-webkit-transform:rotate(25deg);-ms-transform:rotate(25deg);transform:rotate(25deg);}8.47%{-webkit-transform:rotate(10.6deg);-ms-transform:rotate(10.6deg);transform:rotate(10.6deg);}10.17%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}11.86%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}13.56%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}15.25%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}16.95%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}18.64%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}20.34%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}22.03%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}23.73%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}25.42%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}27.12%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}28.81%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}30.51%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}32.2%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}33.9%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}35.59%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}37.29%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}38.98%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}40.68%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}42.37%{-webkit-transform:rotate(5.3deg);-ms-transform:rotate(5.3deg);transform:rotate(5.3deg);}44.07%{-webkit-transform:rotate(13.4deg);-ms-transform:rotate(13.4deg);transform:rotate(13.4deg);}45.76%{-webkit-transform:rotate(20.6deg);-ms-transform:rotate(20.6deg);transform:rotate(20.6deg);}47.46%{-webkit-transform:rotate(29deg);-ms-transform:rotate(29deg);transform:rotate(29deg);}49.15%{-webkit-transform:rotate(36.5deg);-ms-transform:rotate(36.5deg);transform:rotate(36.5deg);}50.85%{-webkit-transform:rotate(42.6deg);-ms-transform:rotate(42.6deg);transform:rotate(42.6deg);}52.54%{-webkit-transform:rotate(48.8deg);-ms-transform:rotate(48.8deg);transform:rotate(48.8deg);}54.24%{-webkit-transform:rotate(54.2deg);-ms-transform:rotate(54.2deg);transform:rotate(54.2deg);}55.93%{-webkit-transform:rotate(59.4deg);-ms-transform:rotate(59.4deg);transform:rotate(59.4deg);}57.63%{-webkit-transform:rotate(63.2deg);-ms-transform:rotate(63.2deg);transform:rotate(63.2deg);}59.32%{-webkit-transform:rotate(67.2deg);-ms-transform:rotate(67.2deg);transform:rotate(67.2deg);}61.02%{-webkit-transform:rotate(70.8deg);-ms-transform:rotate(70.8deg);transform:rotate(70.8deg);}62.71%{-webkit-transform:rotate(73.8deg);-ms-transform:rotate(73.8deg);transform:rotate(73.8deg);}64.41%{-webkit-transform:rotate(76.2deg);-ms-transform:rotate(76.2deg);transform:rotate(76.2deg);}66.1%{-webkit-transform:rotate(78.7deg);-ms-transform:rotate(78.7deg);transform:rotate(78.7deg);}67.8%{-webkit-transform:rotate(80.6deg);-ms-transform:rotate(80.6deg);transform:rotate(80.6deg);}69.49%{-webkit-transform:rotate(82.6deg);-ms-transform:rotate(82.6deg);transform:rotate(82.6deg);}71.19%{-webkit-transform:rotate(83.7deg);-ms-transform:rotate(83.7deg);transform:rotate(83.7deg);}72.88%{-webkit-transform:rotate(85deg);-ms-transform:rotate(85deg);transform:rotate(85deg);}74.58%{-webkit-transform:rotate(86.3deg);-ms-transform:rotate(86.3deg);transform:rotate(86.3deg);}76.27%{-webkit-transform:rotate(87deg);-ms-transform:rotate(87deg);transform:rotate(87deg);}77.97%{-webkit-transform:rotate(87.7deg);-ms-transform:rotate(87.7deg);transform:rotate(87.7deg);}79.66%{-webkit-transform:rotate(88.3deg);-ms-transform:rotate(88.3deg);transform:rotate(88.3deg);}81.36%{-webkit-transform:rotate(88.6deg);-ms-transform:rotate(88.6deg);transform:rotate(88.6deg);}83.05%{-webkit-transform:rotate(89.2deg);-ms-transform:rotate(89.2deg);transform:rotate(89.2deg);}84.75%{-webkit-transform:rotate(89.2deg);-ms-transform:rotate(89.2deg);transform:rotate(89.2deg);}86.44%{-webkit-transform:rotate(89.5deg);-ms-transform:rotate(89.5deg);transform:rotate(89.5deg);}88.14%{-webkit-transform:rotate(89.9deg);-ms-transform:rotate(89.9deg);transform:rotate(89.9deg);}89.83%{-webkit-transform:rotate(89.7deg);-ms-transform:rotate(89.7deg);transform:rotate(89.7deg);}91.53%{-webkit-transform:rotate(90.1deg);-ms-transform:rotate(90.1deg);transform:rotate(90.1deg);}93.22%{-webkit-transform:rotate(90.2deg);-ms-transform:rotate(90.2deg);transform:rotate(90.2deg);}94.92%{-webkit-transform:rotate(90.1deg);-ms-transform:rotate(90.1deg);transform:rotate(90.1deg);}96.61%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}98.31%{-webkit-transform:rotate(89.8deg);-ms-transform:rotate(89.8deg);transform:rotate(89.8deg);}100%{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg);}}
/* sc-component-id: sc-keyframes-enpUnr */
@-webkit-keyframes enpUnr{0%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}1.69%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}3.39%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}5.08%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}6.78%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}8.47%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}10.17%{-webkit-transform:rotate(179.2deg);-ms-transform:rotate(179.2deg);transform:rotate(179.2deg);}11.86%{-webkit-transform:rotate(164deg);-ms-transform:rotate(164deg);transform:rotate(164deg);}13.56%{-webkit-transform:rotate(151.8deg);-ms-transform:rotate(151.8deg);transform:rotate(151.8deg);}15.25%{-webkit-transform:rotate(140.8deg);-ms-transform:rotate(140.8deg);transform:rotate(140.8deg);}16.95%{-webkit-transform:rotate(130.3deg);-ms-transform:rotate(130.3deg);transform:rotate(130.3deg);}18.64%{-webkit-transform:rotate(120.4deg);-ms-transform:rotate(120.4deg);transform:rotate(120.4deg);}20.34%{-webkit-transform:rotate(110.8deg);-ms-transform:rotate(110.8deg);transform:rotate(110.8deg);}22.03%{-webkit-transform:rotate(101.6deg);-ms-transform:rotate(101.6deg);transform:rotate(101.6deg);}23.73%{-webkit-transform:rotate(93.5deg);-ms-transform:rotate(93.5deg);transform:rotate(93.5deg);}25.42%{-webkit-transform:rotate(85.4deg);-ms-transform:rotate(85.4deg);transform:rotate(85.4deg);}27.12%{-webkit-transform:rotate(78.1deg);-ms-transform:rotate(78.1deg);transform:rotate(78.1deg);}28.81%{-webkit-transform:rotate(71.2deg);-ms-transform:rotate(71.2deg);transform:rotate(71.2deg);}30.51%{-webkit-transform:rotate(89.1deg);-ms-transform:rotate(89.1deg);transform:rotate(89.1deg);}32.2%{-webkit-transform:rotate(105.5deg);-ms-transform:rotate(105.5deg);transform:rotate(105.5deg);}33.9%{-webkit-transform:rotate(121.3deg);-ms-transform:rotate(121.3deg);transform:rotate(121.3deg);}35.59%{-webkit-transform:rotate(135.5deg);-ms-transform:rotate(135.5deg);transform:rotate(135.5deg);}37.29%{-webkit-transform:rotate(148.4deg);-ms-transform:rotate(148.4deg);transform:rotate(148.4deg);}38.98%{-webkit-transform:rotate(161deg);-ms-transform:rotate(161deg);transform:rotate(161deg);}40.68%{-webkit-transform:rotate(173.5deg);-ms-transform:rotate(173.5deg);transform:rotate(173.5deg);}42.37%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}44.07%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}45.76%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}47.46%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}49.15%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}50.85%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}52.54%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}54.24%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}55.93%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}57.63%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}59.32%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}61.02%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}62.71%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}64.41%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}66.1%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}67.8%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}69.49%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}71.19%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}72.88%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}74.58%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}76.27%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}77.97%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}79.66%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}81.36%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}83.05%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}84.75%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}86.44%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}88.14%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}89.83%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}91.53%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}93.22%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}94.92%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}96.61%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}98.31%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}100%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}} @keyframes enpUnr{0%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}1.69%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}3.39%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}5.08%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}6.78%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}8.47%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}10.17%{-webkit-transform:rotate(179.2deg);-ms-transform:rotate(179.2deg);transform:rotate(179.2deg);}11.86%{-webkit-transform:rotate(164deg);-ms-transform:rotate(164deg);transform:rotate(164deg);}13.56%{-webkit-transform:rotate(151.8deg);-ms-transform:rotate(151.8deg);transform:rotate(151.8deg);}15.25%{-webkit-transform:rotate(140.8deg);-ms-transform:rotate(140.8deg);transform:rotate(140.8deg);}16.95%{-webkit-transform:rotate(130.3deg);-ms-transform:rotate(130.3deg);transform:rotate(130.3deg);}18.64%{-webkit-transform:rotate(120.4deg);-ms-transform:rotate(120.4deg);transform:rotate(120.4deg);}20.34%{-webkit-transform:rotate(110.8deg);-ms-transform:rotate(110.8deg);transform:rotate(110.8deg);}22.03%{-webkit-transform:rotate(101.6deg);-ms-transform:rotate(101.6deg);transform:rotate(101.6deg);}23.73%{-webkit-transform:rotate(93.5deg);-ms-transform:rotate(93.5deg);transform:rotate(93.5deg);}25.42%{-webkit-transform:rotate(85.4deg);-ms-transform:rotate(85.4deg);transform:rotate(85.4deg);}27.12%{-webkit-transform:rotate(78.1deg);-ms-transform:rotate(78.1deg);transform:rotate(78.1deg);}28.81%{-webkit-transform:rotate(71.2deg);-ms-transform:rotate(71.2deg);transform:rotate(71.2deg);}30.51%{-webkit-transform:rotate(89.1deg);-ms-transform:rotate(89.1deg);transform:rotate(89.1deg);}32.2%{-webkit-transform:rotate(105.5deg);-ms-transform:rotate(105.5deg);transform:rotate(105.5deg);}33.9%{-webkit-transform:rotate(121.3deg);-ms-transform:rotate(121.3deg);transform:rotate(121.3deg);}35.59%{-webkit-transform:rotate(135.5deg);-ms-transform:rotate(135.5deg);transform:rotate(135.5deg);}37.29%{-webkit-transform:rotate(148.4deg);-ms-transform:rotate(148.4deg);transform:rotate(148.4deg);}38.98%{-webkit-transform:rotate(161deg);-ms-transform:rotate(161deg);transform:rotate(161deg);}40.68%{-webkit-transform:rotate(173.5deg);-ms-transform:rotate(173.5deg);transform:rotate(173.5deg);}42.37%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}44.07%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}45.76%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}47.46%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}49.15%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}50.85%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}52.54%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}54.24%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}55.93%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}57.63%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}59.32%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}61.02%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}62.71%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}64.41%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}66.1%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}67.8%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}69.49%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}71.19%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}72.88%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}74.58%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}76.27%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}77.97%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}79.66%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}81.36%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}83.05%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}84.75%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}86.44%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}88.14%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}89.83%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}91.53%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}93.22%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}94.92%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}96.61%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}98.31%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}100%{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg);}}</style>

<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY"><div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV">모인금액</div><div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA">6,659,300<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU">원</span><span class="ProjectIntroduction__FundingRate-sc-1o2ojgb-17 cNDicH">1331%</span></div></div><div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY"><div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV">남은시간</div><div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA">21<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU">일</span></div></div><div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY"><div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV">후원자</div><div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA">135<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU">명</span></div></div>
<div class="FundingInformation__FundingInformationInner-cjd67l-1 ccBEhl"><a class="move-to-helpcenter" target="_blank" href="https://help.tumblbug.com/hc/ko/categories/115001047348--%ED%9B%84%EC%9B%90%EC%9E%90-%EC%84%BC%ED%84%B0" title="후원자 센터 바로가기">후원자 센터 이동</a><div>펀딩 진행중</div><span>목표 금액인 <!-- -->500,000<!-- -->원이 모여야만 결제됩니다.<br>결제는 <!-- -->2020년 8월 24일<!-- -->에 다함께 진행됩니다.</span></div>
<div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 knPvZB"><div class="PledgeButton__Wrapper-arwur9-0 krUjgk"><button class="Button-sc-1x93b2b-0 PledgeButton__StyledButton-arwur9-1 oNWny">프로젝트 밀어주기</button></div></div><div class="Tooltip__TooltipWrapper-sc-1czh1yq-0 kPQaEe ProjectIntroduction__StyledTooltip-sc-1o2ojgb-23 bUoWGM"><div class="Tooltip__Wrapper-sc-1czh1yq-1 hTiiSe tooltip-body">후원이 고민되신다면 눌러보세요!<button type="button" class="Tooltip__CloseButton-sc-1czh1yq-2 bODQqL"><div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe"><svg viewBox="0 0 44 44"><path d="M43.2 39.1L26.1 22 43.2 4.9c1.1-1.1 1.1-2.9 0-4.1s-2.9-1.1-4.1 0L22 17.9 4.9.8C3.8-.3 2-.3.8.8S-.3 3.7.8 4.9L17.9 22 .8 39.1c-1.1 1.1-1.1 2.9 0 4.1 1.1 1.1 2.9 1.1 4.1 0L22 26.1l17.1 17.1c1.1 1.1 2.9 1.1 4.1 0 1.1-1.2 1.1-3 0-4.1z"></path></svg></div></button></div><div class="ProjectIntroduction__SecondaryButton-sc-1o2ojgb-24 fnDZVR"><div class="LikeButton__Wrapper-whittq-0 dFOIsS ProjectIntroduction__StyledLikeButton-sc-1o2ojgb-22 jUCdsF"><button type="button" class="LikeButton__LikedBtn-whittq-1 neDEf"><span>좋아요</span></button></div></div></div><div class="ProjectIntroduction__TertiaryButton-sc-1o2ojgb-26 fGephg"><button type="button" class="Button-sc-1x93b2b-0 ProjectIntroduction__ShareSNSButton-sc-1o2ojgb-25 llyixJ"><div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe"><svg viewBox="0 0 44 44"><path d="M35.4706,40.396 C32.9362,40.396 30.877,38.51 30.877,36.192 C30.877,33.874 32.9362,31.988 35.4706,31.988 C38.0028,31.988 40.0642,33.874 40.0642,36.192 C40.0642,38.512 38.0028,40.396 35.4706,40.396 M8.5316,26.204 C5.9994,26.204 3.938,24.318 3.938,22 C3.938,19.68 5.9994,17.796 8.5316,17.796 C11.0638,17.796 13.1252,19.68 13.1252,22 C13.1252,24.32 11.0638,26.204 8.5316,26.204 M35.4706,3.604 C38.0028,3.604 40.0642,5.49 40.0642,7.808 C40.0642,10.126 38.0028,12.012 35.4706,12.012 C32.9362,12.012 30.877,10.126 30.877,7.808 C30.877,5.488 32.9362,3.604 35.4706,3.604 M35.4706,28.384 C33.022,28.384 30.8198,29.334 29.2644,30.844 L16.7024,24.228 C16.9334,23.522 17.061,22.774 17.061,22 C17.061,21.226 16.9334,20.48 16.7046,19.772 L29.2644,13.156 C30.8198,14.668 33.022,15.616 35.4684,15.616 C40.183,15.616 44,12.12 44,7.808 C44,3.496 40.1808,0 35.4706,0 C30.7582,0 26.939,3.496 26.939,7.808 C26.939,8.582 27.0666,9.328 27.2954,10.036 L14.7334,16.652 C13.1802,15.142 10.978,14.192 8.5294,14.192 C3.8236,14.192 0,17.688 0,22 C0,26.312 3.8192,29.808 8.5316,29.808 C10.978,29.808 13.1802,28.86 14.7356,27.348 L27.2954,33.964 C27.0666,34.67 26.939,35.418 26.939,36.192 C26.939,40.504 30.7582,44 35.4706,44 C40.1808,44 44,40.504 44,36.192 C44,31.88 40.1808,28.384 35.4706,28.384"></path></svg></div></button></div>




                            </div>










                            <div class="products--meta">
                                <p><span>SKU:</span> <span>CT201807</span></p>
                                <p><span>Category:</span> <span>Outdoor Plants</span></p>
                                <p><span>Tags:</span> <span>plants, green, cactus </span></p>
                                <p>
                                    <span>Share on:</span>
                                    <span>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </span>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

							<nav class="ContentsNavigation__ProjectContentsNavigation-mwsx7i-1 bmUMcp"><div class="ContentsNavigation__ProjectContentsNavigationInner-mwsx7i-2 OvVKa"><div class="ContentsNavigation__NavLeft-mwsx7i-3 buZwam"><a aria-current="page" class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB active" style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px)" href="/564800/story?ref=%EB%A9%94%EC%9D%B8%2F%EC%A3%BC%EB%AA%A9%ED%95%A0%EB%A7%8C%ED%95%9C%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8">스토리</a><a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB" href="/564800/community?ref=%EB%A9%94%EC%9D%B8%2F%EC%A3%BC%EB%AA%A9%ED%95%A0%EB%A7%8C%ED%95%9C%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8">커뮤니티<span class="ContentsNavigation__CommunityPostAmount-mwsx7i-6 jXWmuN">1</span></a><a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB" href="/564800/policy?ref=%EB%A9%94%EC%9D%B8%2F%EC%A3%BC%EB%AA%A9%ED%95%A0%EB%A7%8C%ED%95%9C%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8">펀딩 안내</a></div></div></nav>



<div class="Container-gci8y7-0 MskhC"><div class="ProjectPage__ProjectContents-f3cisk-1 ftClLq"><div class="ProjectPage__ProjectContentsMainColumn-f3cisk-2 hzJfoW"><div class="ProjectPage__MainColumnInner-f3cisk-4 kGPPtA"><div class="Card-sc-1sgtmvk-0 iZjgMf"><div class="StoryCard__StoryCardInner-sc-6cra5i-0 giOSQG" style=""><div class="storyContent"><h2>안녕하세요 우리꽃연구소입니다.</h2>
<p><strong>많은 후원자분의 관심 덕분에 벌써 프로젝트 달성률이 벌써 700%를 넘겼습니다.</strong><br><strong>후원자분들 덕분에 많은 분께 꽃차를 알리고 싶어서 시작했던 저희의 목표에 조금 더 다가갈 수 있었습니다.</strong><br><strong>제품을 받고 실망하는 일 없도록 더욱 꼼꼼하고 정성을 담아 만들겠습니다!</strong></p>
<p><strong>감사합니다:)</strong></p>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/8eccd1cd-5ffb-49ed-8702-8ce643776e3f.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=ef2971ee86b4423ce9c4907df72c2c96"></p>
<p><strong>어디서도 만나보지 못한 새로운 꽃차<br></strong><strong>더 맛있어지고 더 간편해진 우리꽃연구소의 꽃코디얼 5종!<br></strong><strong>한 손에 쏙 들어오는 작은 꽃밭, 한번 만나보실래요?</strong></p>
<h2>&nbsp;</h2>
<h2><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/13581836-cd4b-4dfe-bcba-c8eafc2911f3.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=47275f25dfc3e0ba8d15c7f506d038bc"></h2>
<h2>안녕하세요:) 저희는 우리꽃연구소입니다.</h2>
<p>혹시 우리꽃연구소라고 들어보셨나요? 저희는 우리 꽃을 사랑하고 모든 분의 삶 속에 꽃과 행복이 가득했으면 좋겠다는 생각으로 시작하게 되었으며 10년 넘게 꽃을 연구한 꽃 전문 브랜드입니다.</p>
<p>&nbsp;</p>
<hr>
<h2>&nbsp;</h2>
<h2>왜 꽃코디얼인가요?</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/2a495eee-1977-4678-be39-371dbece2038.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=3759d70732ea0b74661db0326f37c36a"></p>
<h3><em>"커피처럼 꽃차로 세상을 정복할 수 있을까?"</em></h3>
<p>꽃코디얼은 이 작은 생각에서 시작하게 되었습니다.</p>
<p>주변에서 쉽게 만나볼 수 있는 수많은 커피와 다양한 배리에이션들.. <br>꽃차도 커피처럼 간편하게 먹을 수 있고 쉽게 응용할 수 있다면 더 많은 사람이 꽃차를 즐길 수 있겠다고 생각했습니다.</p>
<p>&nbsp;</p>
<h2>커피의 베이스가 되는 에스프레소처럼 <br>꽃도 에스프레소가 있다면?!</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/c57aafa9-3e53-47bc-84b2-2fdbf6837ab3.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=23588e22108285bc7233a69955bafe93"></p>
<p>커피는 에스프레소라는 커피 농축액 하나로 다양한 메뉴와 맛을 낼 수 있다는 데에서 착안하였습니다</p>
<p><em><strong> 우리도 꽃 에스프레소를 만들면 어떨까?</strong></em><br><em><strong>그럼 더 쉽게 누구나 꽃차를 즐길 수 있지 않을까? </strong></em></p>
<p>생각을 하고 바로 실행에 옮기기 시작했습니다.</p>
<p>&nbsp;</p>
<h2>그렇게 탄생한 꽃농축액, 꽃코디얼!</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/8552e3d7-c746-44ef-af59-75598836a5c0.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=d0edadc21850e94db6311b4eaee7a6d7"></p>
<p>4년간의 연구와 다양한 시도 끝에 탄생한 꽃 코디얼, 배합 기계만 5대를 바꾸면서 많은 시행착오를 거친 끝에 꽃향기와 맛을 살리는 우리꽃연구소만의 꽃 코디얼이 탄생하게 되었습니다.</p>
<p>8가지 핸드메이드 공법계발로 탄생한 꽃 코디얼은 다양한 꽃 음료뿐만 아니라 베이커리에 자유롭게 사용하고 누구나 즐길 수 있는 우리 꽃 문화를 만들어나갈 것입니다.</p>
<p>&nbsp;</p>
<h2>우리꽃의 혁명, 이미 시작되었습니다.</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/2f069744-abbf-4252-9674-b2540c78c98c.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=f667a1b55ff1919a0c199ea7c18bdc39"></p>
<p><a title="우리꽃연구소 백화점에서 15일간 2억판매!" href="https://blog.naver.com/nong-up/221685193842" target="_blank" rel="noopener"><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/9cd33495-eac9-461b-8854-9b84d5424f25.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=386a807ef27607a16a36de32ff117316"></a></p>
<p>우리꽃연구소는 꽃청, 꽃초 등으로 백화점의 까다롭고 눈이 높은 고객분들께 당당히 선택받고 있습니다.</p>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/0daa066f-c216-4136-95e5-3b289d9732a1.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=7922908ac867a53e991a82076d6c9500"></p>
<p>오프라인뿐만 아니라 이미 온라인에서도 많은 분이 자신만의 레시피로 우리꽃연구소의 꽃코디얼을 즐기고 계십니다.</p>
<p>&nbsp;</p>
<h2>텀블벅에서 홈카페용</h2>
<h2>레귤러 꽃코디얼을 최초로 공개합니다!!</h2>
<p>&nbsp;</p>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/78e945e9-ea24-47b4-8622-bf9b16bf7868.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=5b7acbb70c4d02ded08376bb770d52a3"></p>
<p>꽃 코디얼은 200여 개가 넘은 카페들에 납품되고 있는 아주 인기가 좋은 제품입니다. 그러다보니 카페에서는 대용량 사이즈를 원하지만, 일반 소비자분들은 집이나 사무실에서 즐길 수 있는 작은 사이즈를 찾는 분들의 문의가 많았습니다.</p>
<p><em><strong>‘혹시 좀 더 작은 용량은 없을까요?’</strong></em><br><em><strong>‘여러 가지 맛을 구매하고 싶은데 용량이 너무 많은 것 같아요…’</strong></em><br><em><strong>‘혼자 먹는데 양이 많아서 부담스러워요’<br>'홈카페용 사이즈는 따로 없나요?"</strong></em></p>
<p>그래서 저희는 더 많은 분이 부담스럽지 않도록, 집에서 간편하게 홈카페로, 사무실에서 데일리 음료 등으로 다양한 꽃 코디얼을 편하게 맛보실 수 있도록 <u>한 손에 쏙 들어오는 간편한 용량으로 새롭게 탄생하였습니다.</u></p>
<p>&nbsp;</p>
<hr>
<h2>&nbsp;</h2>
<h2>꽃코디얼? 어떤 제품 인가요?</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/4045f9df-f19a-46b0-bd02-d019de150453.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=c0a697b92838d244ef44741b5c5b7236"></p>
<p>우리꽃연구소의 꽃코디얼은 진한 꽃 농축액과 프락토올리고당을 가열하여 만든 <u>시럽 형태의 새로운 꽃차</u>입니다. 기존의 꽃차와는 다르게 물 뿐만 아니라 탄산수, 우유, 요거트 등 다양한 형태로 꽃차를 즐길 수 있는 제품입니다.</p>
<p>&nbsp;</p>
<h2>우리꽃연구소의 꽃코디얼이 특별한 이유!</h2>
<h3><strong><u>1. 직접 재배해 믿을 수 있는 우리꽃 원재료!&nbsp;</u></strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/93fdfc66-3d91-40c8-9bbe-a4e003c23c4d.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=468e0e590cfa0fe405d93bfc823529b4"></strong></p>
<p>꽃 코디얼은 우리 꽃으로 농축액을 만들어 직접 핸드메이드로 제작하기 때문에 꽃이 가장 중요한 원재료입니다. 그렇기 때문에 누구나 믿고 드실 수 있도록 우리꽃연구소의 꽃은 직접 재배하여 사용하고 있으며, 장미꽃의 경우에만 재배가 힘들어 꼼꼼하게 검수하여 수입하여 꽃 코디얼을 만들고 있습니다.</p>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/c2477773-9010-469e-aec7-00f20d6eb03f.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=ceb01c54c5039120797d9d6057125a9c"></p>
<p>또한 모든 꽃 원료에 대하여 <u>잔류농약검사, 자가품질검사 등 안전하고 신선한 제품을 제공할 수 있도록 노력</u>하고 있으며 건강하고 신선한 꽃 원료 사용의 원칙을 계속해서 지켜나가고 있습니다.</p>
<p>&nbsp;</p>
<h3><u><strong>2. 시행착오 끝에 직접 개발한 8차례 핸드메이드 공법&nbsp;</strong></u></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/3898554e-5435-4171-806c-579ac2ffe544.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=39b2475b08eca38e4c742fc7c5550e05"></strong></p>
<p>4년간에 걸친 오랜 많은 시도와 실패 끝에 우리꽃연구소만의 8차례 핸드메이드 공법을 개발할 수 있었습니다. 우리 꽃의 <strong>베이스-부드러운 중간 맛-상큼한 맛-묵직한 꽃향</strong>까지 담을 수 있는 특별한 공법으로 제작되고 있습니다.</p>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/0a693242-e9f6-433e-b160-0fbd5d5aa7f0.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=e990c8931e0d5f336d3c5c84b19f2fe1"></p>
<p>또한 깨끗한 환경을 유지하기 위해 주기적으로 <strong>자체 위생 검사, 외부 위생 검사를 실시</strong>하고 있으며, 까다롭기로 소문난 <strong>백화점의 위생 검사도 단 한번 걸림 없이 매년 통과</strong>하고 있습니다.</p>
<p>&nbsp;</p>
<h3><u><strong>3. No 방부제, NO 설탕, NO 인공색소&nbsp;</strong></u></h3>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/b7e5b182-4033-43cc-acb5-df20e778c003.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=f1e655408635e7292b8c85c319fff3c6"></p>
<p>우리꽃연구소의 꽃코디얼을 <strong>無설탕, 無방부제, 無인공색소</strong>로 설탕 대신에 건강한 단맛인 프락토올리고당을 사용하여 제작하고 있습니다. 프락토올리고당이란 야채, 과일 등에 포함되어있는 자연의 성분 그대로의 당으로 설탕보다는 단맛이 약하지만 건강한 당으로 알려져 있습니다.</p>
<p>우리꽃연구소의 제품은 남녀노소, 온 가족이 함께 건강하게 맛볼 수 있도록 디테일한 부분까지 세세하게 체크하여 정성을 담아 만들고 있습니다.</p>
<p>&nbsp;</p>
<hr>
<h2><strong>홈카페용 꽃코디얼 5종을 소개합니다!</strong></h2>
<p><sup><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/dbef58bd-b463-4804-bbae-e984e2ebf10a.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=49d67835f22f132e59252a29c62c4e9c">목련코디얼&nbsp; |&nbsp; 벚꽃코디얼&nbsp; |&nbsp; 국화코디얼&nbsp; |&nbsp; 아카시아코디얼&nbsp; |&nbsp; 장미코디얼</strong></sup></p>
<h3><strong>1. 황금빛의 진한 매력 국화코디얼</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/0785944b-91ca-4325-925f-5305d5311423.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=aea3cea7478ba5ef9d5ab2eab0f2d845"><br>황금빛 영롱한 빛깔의 국화 코디얼입니다. 국화꽃만의 달콤 쌉싸름한 맛과 향으로 부드럽게 즐기실 수 있는 꽃코디얼입니다.</strong></p>
<p><u>이런 분들께 추천합니다.</u></p>
<ul>
<li>국화꽃차를 처음 접해보시는 분들</li>
<li>국화꽃차를 좋아하여 다른 레시피로 즐겨보시고 싶은 분들</li>
<li>부모님께 특별한 선물을 드리고 싶은 분들</li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<hr>
<h3>&nbsp;</h3>
<h3><strong>2. 로맨틱한 장미코디얼</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/f61c02df-2efe-411d-a33c-af7f2faab76d.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=9ce1ee07ff9205579a3183e0159f8abb"></strong></p>
<p><strong>신선한 장미 원액과 통장미가 그대로 들어간 우리꽃연구소의 장미코디얼입니다. 빨간 빛깔의 로맨틱한 색과 진한 맛과 향기로 많은 사랑을 받고 있는 꽃코디얼입니다.</strong></p>
<p><u>이런 분들께 추천합니다.</u></p>
<ul>
<li>평소에 장미꽃을 좋아하셨거나 장미꽃차를 시작하시는 분들</li>
<li>연인과 함께 특별한 날을 보내고 싶은 분들</li>
</ul>
<p>&nbsp;</p>
<hr>
<h3>&nbsp;</h3>
<h3><strong>3. 싱그러움을 한병에 쏙 담은 아카시아코디얼</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/034dbae5-1439-41b7-9748-57dc6901467a.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=6a479ed6d5d2c317e4e89d883c197856"></strong></p>
<p><strong>달콤한 아카시아 꿀 향과 상큼한 꽃향이 담겨있어 어른 아이 할것 없이 모두가 사랑하는 우리꽃연구소의 아카시아코디얼입니다.</strong></p>
<p><u>이런 분들께 추천합니다.</u></p>
<ul>
<li>아카시아꽃만의 상큼한 맛을 즐기고 싶은 분들</li>
<li>시원하고 달콤한 에이드를 좋아하시는 분들</li>
<li>어디서도 맛보지 못한 톡특한 꽃차를 드셔보시고 싶은 분들</li>
</ul>
<p>&nbsp;</p>
<hr>
<h3>&nbsp;</h3>
<h3><strong>4. 봄을 간직한 벚꽃코디얼</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/2b31bf29-f71d-47e3-a0c1-a82313a3e04c.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=8705d503d0525085e3f142cf2e3236cd"></strong></p>
<p><strong>처음은 달달한 체리향으로 시작하여 달콤하고 매혹적인 벚꽃의 맛과 향을 느껴볼 수 있는 우리꽃연구소의 벚꽃코디얼입니다.</strong></p>
<p><u>이런 분들께 추천합니다.</u></p>
<ul>
<li>많은 벚꽃음료를 먹어보았지만 진정한 벚꽃의 맛과 향을 느껴보시지 못한 분들</li>
<li>부드러운 벚꽃라떼를 맛보고 싶은 분들</li>
<li>친구, 동료 등 주변 지인에게 특별한 선물을 하고싶은 분들</li>
</ul>
<p>&nbsp;</p>
<hr>
<h3>&nbsp;</h3>
<h3><strong>5. 알싸한 매력 담은 목련코디얼</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/6e232290-ed8d-4ae9-9f34-69c5e04d2e5c.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=b445b79da5a1123cb0b0211fbd21ea30"></strong></p>
<p><strong>첫향은 묵직한 목련꽃향으로 시작하여 목련만의 알싸하고 달콤한 맛이 어우러지는 목련코디얼입니다. 어디서도 맛보지 못한 톡특한 목련코디얼의 매력에 빠져보세요</strong></p>
<p><u>이런 분들께 추천합니다.</u></p>
<ul>
<li>특별한 목련꽃만의 매력을 느껴보시고 싶은 분들</li>
<li>남녀노소 온가족이 함께 즐길 수 있는 음료를 찾고 계신 분들</li>
<li>특별한 날 선물할 제품을 찾고계신 분들</li>
</ul>
<p>&nbsp;</p>
<hr>
<h2>&nbsp;</h2>
<h2>꽃코디얼, 꽃차로만 먹을 수 있나요?</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/4e437a52-4ca5-4362-9e0f-77e1785d761e.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=705823c624cb187b24c0d7fe7e8a305e"><sup>꽃코디얼을 활용하여 만든 다양한 디저트&amp;음료</sup></p>
<p>우리꽃연구소의 꽃 코디얼은 단순히 꽃차로만 즐기지 않고 더욱 다양하게 즐기실 수 있습니다. 더운 여름에는 시원한 탄산수에 희석해 먹는 <u>꽃 에이드</u>, 부드러운 우유와 함께 먹는 <u>꽃 밀크티</u>,아이들 간식으로 <u>꽃 요거트와 핫케이크에 뿌러먹는 꽃 시럽</u> 등 내가 직접 만드는 레시피로 <u>남녀노소 누구나 꽃 코디얼을 쉽게 즐길 수 있습니다.</u></p>
<h3><strong>1.꽃에이드로 즐기기</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/9307dafe-9cb8-4a00-8663-b9ba8ee4985f.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=5e194a4c730b62ece7f0dc9a2d2e1972"><br></strong>탄산수와 꽃코디얼의 비율를 5:1로 하여 시원한 얼음과 함께 희석해 드시면 더운 여름 시원하고 간편하게 꽃차를 즐기실 수 있습니다.</p>
<h3><strong>2. 부드러운 꽃밀크티</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/ad025f0c-271b-4a56-8cbc-1dd9741724ad.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=8ab9b768de04b475d632d2072827624f"><br></strong>흰우유와 꽃코디얼의 비율를 1:5로 희석하면 남녀노소 누구나 맛있게 즐길 수 있는 부드러운 꽃밀크티가 완성됩니다.</p>
<h3><strong>3. 꽃 샐러드 드레싱</strong></h3>
<p><strong><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/2253bf18-8277-4c0f-b8d0-501cae4b0364.gif?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;gif-q=35&amp;s=5ed9a3f0dacffa8fa1547b884477e8d4"></strong>샐러드 야채 위에 요거트와 꽃코디얼을 함께 뿌려주시면 간편한 꽃드레싱 완성!<strong><br></strong></p>
<p>위에 나온 꽃 에이드, 꽃 밀크티, 꽃 드레싱 뿐만 아니라 다양한 방법으로 나만의 새로운 꽃코디얼 레시피를 만들어보세요~</p>
<p>&nbsp;</p>
<hr>
<h2>&nbsp;</h2>
<h2>꽃코디얼은 이런 분들께 추천합니다:)</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/9e94dc47-379e-484c-b272-26a4fd3d1b38.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=5afc245f0b7b1b3356e15c6f5819dd9e"></p>
<p><em>1. 꽃차를 처음 접해보시는분 or 꽃차에 관심이 많으신 분들<br></em><em>2. 홈카페를 즐기시는분<br></em><em>3. 회사, 사무실에서 간편하게 드실 음료를 찾고 계신분들<br></em><em>4. 색다른 음료를 찾고 계신분들</em></p>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<h2>리워드 구성안내</h2>
<p><img src="https://tumblbug-psi.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/6dabe640bef861a2578ae99b09f5c14ece6f8c4f/09d4a7e2c83783b5809cacf62f5377059314285d/594a403b-de13-435b-80ef-af6ef6a1d312.jpg?ixlib=rb-1.1.0&amp;w=1240&amp;auto=format%2C%20compress&amp;lossless=true&amp;ch=save-data&amp;s=bd317ca4e2a3b0232f7258dc6f651758"></p>
<p>&nbsp;</p>
<hr>
<h2><strong>프로젝트 예산</strong></h2>
<p>&nbsp;펀딩의 후원금 500,000원은 후원자 분들께 보내드릴 제품을 만드는 재료비, 인건비, 용기 구입비 등에 사용됩니다. 초과 달성하는 금액은 새로운 꽃차개발을 위한 개발비와 우리꽃농장을 유지하는 농장 유지비로 사용됩니다.</p>
<h2>제작 및 실행 일정</h2>
<p>주문 후 제작하는 식품으로 펀딩완료, 결제 완료 후 생산에 들어갑니다. 제품 생산후 순차적으로 배송되며 배송이 늦어질 경우 미리 문자로 안내 드릴 예정입니다.&nbsp;</p>
<p>- 7월 29일 : 펀딩 시작<br>- 8월 23일 : 펀딩 완료<br>- 8월 24일~ 8월 30일 : 7일간 결제 진행<br>- 배송일 : 9월 3일 순차 발송<br><br></p>
<h2>후원자 안내</h2>
<h3><strong>[프로젝트 및 선물 관련 안내사항]</strong></h3>
<p>1. 프로젝트의 배송 및 제품 관련 문의는 우리꽃연구소 070-4175-5648 로 문의가능하며 상담시간은 오전10시~5시까지 입니다 (점심시간:12시~1시)&nbsp;&nbsp;</p>
<p>3. 더운 날씨로 인해 제품이 변질될 수 있으니 후원 시 등록하신 휴대폰번호로 전달된 운송장 번호를 통해 배송정보를 잘 확인해주시고, 유리병으로 제작되어 취급에 주의하여주시기 바랍니다.</p>
<h3><strong>[선물 상세안내 및 취급 주의사항]</strong></h3>
<ul>
<li>구성품<br>국화코디얼(450g), 장미코디얼(450g),아카시아코디얼(450g)<br>벚꽃코디얼(450g), 목련코디얼(450g)</li>
</ul>
<ul>
<li>용기 및 포장정보<br>유리병, 에어캡 포장 후 박스포장<br><br></li>
<li>배송방법<br>롯데택배</li>
</ul>
<ul>
<li>유통기한<br>제조일로 부터 1년 6개월</li>
<li>취급 및 보관 시 주의 사항<br>개봉전에는 직사광선이 없고 서늘한 곳에서 보관 하시고 개봉 후에는 냉장보관을 추천합니다.</li>
</ul></div></div></div></div></div><div class="ProjectPage__ProjectContentsSubColumn-f3cisk-3 egbEFv"><div class="ProjectPage__SubColumnInner-f3cisk-6 qujmm"><div class="Card-sc-1sgtmvk-0 iZjgMf ProjectPage__StyledCreatorCard-f3cisk-5 lfTmkG"><div class="CreatorCard__CreatorCardInner-sc-1ifohey-0 iubrbI"><div class="CreatorCard__CreatorCardLabel-sc-1ifohey-1 erXxPv">창작자 소개</div><div class="CreatorCard__CreatorProfile-sc-1ifohey-2 bnLQVO"><span class="ProfileImg__StyledProfileImg-sc-1vio56c-0 uLRxw"></span><a target="_blank" href="/u/cconlab"><span class="CreatorCard__CreatorName-sc-1ifohey-3 ksslMx">우리꽃연구소</span></a></div><div class="CreatorCard__CreatorBiography-sc-1ifohey-4 kTXqqU">모든 사람들의 삶 속에 꽃이 함께 하길 바라며 꽃에 대해 공부하고 연구하는 우리꽃연구소입니다. 플라워 라이프 스타일을 만들어 나가기 위해 노력하고 있습니다:)</div><div class="Divider-sc-17hnup0-0 eUqLBU"></div><div class="CreatorCard__CreatorStats-sc-1ifohey-5 dhVdtT"><div>마지막 로그인&nbsp;&nbsp;<b>39분 전</b></div>진행한 프로젝트&nbsp;&nbsp;<b>1</b>&nbsp;&nbsp;&nbsp;&nbsp; 밀어준 프로젝트&nbsp;&nbsp;<b>0</b></div><div class="CreatorCard__CreatorContactButton-sc-1ifohey-6 jpHksr"><button class="Button-sc-1x93b2b-0 jQspcv"><i class="_3YmAkQhwzI7o-uUWz_8Mp4 _1QY7TzdLHKX3-BKPDNNYKF"></i>창작자에게 문의하기</button></div></div></div><div class="Sticker__Wrapper-sc-1si6lg8-0 jyrVcI"><div class="Rewards-sc-19248pz-1 cwxZdk tbb"><div class="Rewards__RewardsLabel-sc-19248pz-2 jvEtSP">선물 선택</div><div class="RewardCard__RewardCardWrapper-sc-11jni8b-2 gmgNmb"><div class="Card-sc-1vhyvl1-0 RewardCard__StyledCard-sc-11jni8b-0 NQzgn"><div class="RewardCard__RewardCardInner-sc-11jni8b-3 ksnZzq"><div class="RewardCard__RewardHeader-sc-11jni8b-4 fUCEdh"><span class="RewardCard__PledgeAmount-sc-11jni8b-5 bygXEH"><div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe RewardCard__StyledSVGIcon-sc-11jni8b-1 cYavRO"><svg viewBox="0 0 44 44"><path d="M39.6 6.3L16.9 29.1 4.2 17.3 0 21.8l17.1 15.9 26.9-27z"></path></svg></div>82명이 선택</span><span class="RewardCard__RewardQuantityLimit-sc-11jni8b-6 zwxiI"><span class="RewardCard__LimitedRewardLabel-sc-11jni8b-7 jPkKEZ">18개 남음</span></span></div><div class="RewardCard__RewardSelector-sc-11jni8b-12 fGziuW"><div class="sub-wrapper"><div class="RewardCard__RewardContents-sc-11jni8b-9 kPHYMn"><div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-10 kfNXH">58,500원 +</div><div class="RewardCard__RewardDescription-sc-11jni8b-11 eFHsoz">배송비 무료, 꽃코디얼 레귤러(450g) 5병 선택</div></div></div></div><ul class="RewardCard__Items-sc-11jni8b-13 hjOerF"><li class="RewardCard__ItemList-sc-11jni8b-14 hRyuht">꽃코디얼 홈카페용 (450g) &nbsp;<span>( x 5 )</span></li></ul><div class="RewardCard__DeliveryDate-sc-11jni8b-15 cGoZRE"><span>예상 전달일 &nbsp;<b>2020년 9월 1일</b></span></div></div></div></div><div class="RewardCard__RewardCardWrapper-sc-11jni8b-2 gmgNmb"><div class="Card-sc-1vhyvl1-0 RewardCard__StyledCard-sc-11jni8b-0 NQzgn"><div class="RewardCard__RewardCardInner-sc-11jni8b-3 ksnZzq"><div class="RewardCard__RewardHeader-sc-11jni8b-4 fUCEdh"><span class="RewardCard__PledgeAmount-sc-11jni8b-5 bygXEH"><div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe RewardCard__StyledSVGIcon-sc-11jni8b-1 cYavRO"><svg viewBox="0 0 44 44"><path d="M39.6 6.3L16.9 29.1 4.2 17.3 0 21.8l17.1 15.9 26.9-27z"></path></svg></div>36명이 선택</span><span class="RewardCard__RewardQuantityLimit-sc-11jni8b-6 zwxiI"><span class="RewardCard__LimitedRewardLabel-sc-11jni8b-7 jPkKEZ">64개 남음</span></span></div><div class="RewardCard__RewardSelector-sc-11jni8b-12 fGziuW"><div class="sub-wrapper"><div class="RewardCard__RewardContents-sc-11jni8b-9 kPHYMn"><div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-10 kfNXH">40,500원 +</div><div class="RewardCard__RewardDescription-sc-11jni8b-11 eFHsoz">배송비 무료, 꽃코디얼 홈카페용 (450g) 선택 3병</div></div></div></div><ul class="RewardCard__Items-sc-11jni8b-13 hjOerF"><li class="RewardCard__ItemList-sc-11jni8b-14 hRyuht">꽃코디얼 홈카페용 (450g)&nbsp;<span>( x 3 )</span></li></ul><div class="RewardCard__DeliveryDate-sc-11jni8b-15 cGoZRE"><span>예상 전달일 &nbsp;<b>2020년 9월 1일</b></span></div></div></div></div><div class="RewardCard__RewardCardWrapper-sc-11jni8b-2 gmgNmb"><div class="Card-sc-1vhyvl1-0 RewardCard__StyledCard-sc-11jni8b-0 NQzgn"><div class="RewardCard__RewardCardInner-sc-11jni8b-3 ksnZzq"><div class="RewardCard__RewardHeader-sc-11jni8b-4 fUCEdh"><span class="RewardCard__PledgeAmount-sc-11jni8b-5 bygXEH"><div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe RewardCard__StyledSVGIcon-sc-11jni8b-1 cYavRO"><svg viewBox="0 0 44 44"><path d="M39.6 6.3L16.9 29.1 4.2 17.3 0 21.8l17.1 15.9 26.9-27z"></path></svg></div>17명이 선택</span><span class="RewardCard__RewardQuantityLimit-sc-11jni8b-6 zwxiI"><span class="RewardCard__LimitedRewardLabel-sc-11jni8b-7 jPkKEZ">83개 남음</span></span></div><div class="RewardCard__RewardSelector-sc-11jni8b-12 fGziuW"><div class="sub-wrapper"><div class="RewardCard__RewardContents-sc-11jni8b-9 kPHYMn"><div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-10 kfNXH">16,900원 +</div><div class="RewardCard__RewardDescription-sc-11jni8b-11 eFHsoz">배송비 포함, 꽃코디얼 홈카페용(450g) 1병 선택</div></div></div></div><ul class="RewardCard__Items-sc-11jni8b-13 hjOerF"><li class="RewardCard__ItemList-sc-11jni8b-14 hRyuht">꽃코디얼 홈카페용(450g)&nbsp;<span>( x 1 )</span></li></ul><div class="RewardCard__DeliveryDate-sc-11jni8b-15 cGoZRE"><span>예상 전달일 &nbsp;<b>2020년 9월 1일</b></span></div></div></div></div></div></div><div style="height: auto;" class="Sticker__Ghost-sc-1si6lg8-1 jchKaE"></div></div></div></div></div><div class="RecommendProjects__Wrapper-w6nvyu-2 cGivWn ProjectPage__StyledRecommendProjects-f3cisk-7 bOxgXY tbb"><div class="Container__ContainerComponent-sc-1ey2h1l-0 cqDukZ RecommendProjects__StyledContainer-w6nvyu-3 iMKXgj"><a class="RecommendProjects__StyledTitleLink-w6nvyu-5 fOhVGs" href="/discover?&amp;editorPick=1&amp;ongoing=onGoing">이런 프로젝트 어떠세요?<div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe RecommendProjects__StyledSVGIcon-w6nvyu-4 iEMnVQ"><svg viewBox="0 0 44 44"><path d="M12.2 44c-1.4 0-2.5-1.1-2.5-2.4 0-.6.2-1.2.7-1.7L27.6 22 10.3 4.2c-.9-1-.9-2.5.1-3.5s2.5-.9 3.5.1L34.3 22 13.9 43.3c-.5.4-1.1.7-1.7.7z"></path></svg></div></a><div class="ProjectListWithCard__ListWrapper-sc-80ruv-4 djTeYd RecommendProjects__StyledProjectListWithCard-w6nvyu-1 kQrkKE">






        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_details_tab clearfix">
                        <!-- Tabs -->
                        <ul class="nav nav-tabs" role="tablist" id="product-details-tab">
                            <li class="nav-item">
                                <a href="#description" class="nav-link active" data-toggle="tab" role="tab">Description</a>
                            </li>
                            <li class="nav-item">
                                <a href="#addi-info" class="nav-link" data-toggle="tab" role="tab">Additional Information</a>
                            </li>
                            <li class="nav-item">
                                <a href="#reviews" class="nav-link" data-toggle="tab" role="tab">Reviews <span class="text-muted">(1)</span></a>
                            </li>
                        </ul>
                        <!-- Tab Content -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="description">
                                <div class="description_area">
                                    <p>Sed a facilisis orci. Curabitur magna urna, varius placerat placerat sodales, pretium vitae orci. Aliquam erat volutpat. Cras sit amet suscipit magna. Quisque turpis odio, facilisis vel eleifend eu, dignissim ac odio.</p>
                                    <p>Interdum et malesuada fames ac ante ipsum primis in faucibus. In scelerisque augue at the moment mattis. Proin vitae arcu sit amet justo sollicitudin tincidunt sit amet ut velit.Proin placerat vel augue eget euismod. Phasellus cursus orci eu tellus vestibulum, vestibulum urna accumsan. Vestibulum ut ullamcorper sapien. Pellentesque molestie, est ac vestibulum eleifend, lorem ipsum mollis ipsum.</p>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="addi-info">
                                <div class="additional_info_area">
                                    <p>What should I do if I receive a damaged parcel?
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit impedit similique qui, itaque delectus labore.</span></p>
                                    <p>I have received my order but the wrong item was delivered to me.
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quam voluptatum beatae harum tempore, ab?</span></p>
                                    <p>Product Receipt and Acceptance Confirmation Process
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum ducimus, temporibus soluta impedit minus rerum?</span></p>
                                    <p>How do I cancel my order?
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum eius eum, minima!</span></p>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="reviews">
                                <div class="reviews_area">
                                    <ul>
                                        <li>
                                            <div class="single_user_review mb-15">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Quality</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Colorlib</a> on <span>12 Sep 2018</span></p>
                                                </div>
                                            </div>
                                            <div class="single_user_review mb-15">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Design</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Colorlib</a> on <span>12 Sep 2018</span></p>
                                                </div>
                                            </div>
                                            <div class="single_user_review">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Value</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Colorlib</a> on <span>12 Sep 2018</span></p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="submit_a_review_area mt-50">
                                    <h4>Submit A Review</h4>
                                    <form action="#" method="post">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group d-flex align-items-center">
                                                    <span class="mr-15">Your Ratings:</span>
                                                    <div class="stars">
                                                        <input type="radio" name="star" class="star-1" id="star-1">
                                                        <label class="star-1" for="star-1">1</label>
                                                        <input type="radio" name="star" class="star-2" id="star-2">
                                                        <label class="star-2" for="star-2">2</label>
                                                        <input type="radio" name="star" class="star-3" id="star-3">
                                                        <label class="star-3" for="star-3">3</label>
                                                        <input type="radio" name="star" class="star-4" id="star-4">
                                                        <label class="star-4" for="star-4">4</label>
                                                        <input type="radio" name="star" class="star-5" id="star-5">
                                                        <label class="star-5" for="star-5">5</label>
                                                        <span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="name">Nickname</label>
                                                    <input type="email" class="form-control" id="name" placeholder="Nazrul">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <div class="form-group">
                                                    <label for="options">Reason for your rating</label>
                                                    <select class="form-control" id="options">
                                                          <option>Quality</option>
                                                          <option>Value</option>
                                                          <option>Design</option>
                                                          <option>Price</option>
                                                          <option>Others</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label for="comments">Comments</label>
                                                    <textarea class="form-control" id="comments" rows="5" data-max-length="150"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" class="btn alazea-btn">Submit Your Review</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Single Product Details Area End ##### -->

    <!-- ##### Related Product Area Start ##### -->
    <div class="related-products-area">
        <div class="container">





            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>

            <div class="row">

<div class="Container__ContainerComponent-sc-1ey2h1l-0 cqDukZ RecommendProjects__ListWrapper-w6nvyu-0 ProjectListWithCard__StyledWrapperComponent-sc-80ruv-0 bEQonL"><div class="card-wrapper"><div class="ProjectCardOnlyPercentage__Wrapper-sc-1qqprx-1 iXiRof"><div class="ProjectCardOnlyPercentage__Card-sc-1qqprx-0 gWSkIj link-wrapper"><div class="LikeButton__Wrapper-whittq-0 gucMjL ProjectCardOnlyPercentage__StyledLikeButton-sc-1qqprx-2 eUIaXW"><button type="button" class="LikeButton__LikedBtn-whittq-1 gRtvWI"><span>좋아요</span></button></div><div class="image-wrapper"><a href="/morejoyful_p2?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C"><img alt="몸,애무,섹스. 남녀의 숨겨진 속마음을 묻다 <솔직백답> 프로젝트의 커버이미지" src="https://tumblbug-pci.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/450e9b6f456ad29a45e6e026ddb19e4605c87422/e54b522b6c054d09ec04e701b5e564bf92eb210a/b083b409-04b5-4ce0-961a-93c05d171dc9.png?auto=format%2Ccompress&amp;fit=crop&amp;h=465&amp;lossless=true&amp;w=620&amp;s=8df96fafe5ce788bfba19d968f7990f8"></a></div><dl><dd class="project-sub-info"><span><a href="/discover?category=art-books">아트북 · 도감</a></span><span><a href="/u/donikimipatananu">모어조이풀</a></span></dd><dt><a href="/morejoyful_p2?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C">몸,애무,섹스. 남녀의 숨겨진 속마음을 묻다 &lt;솔직백답&gt;</a></dt></dl><div class="funding-status"><span class="percentage">44% 달성</span></div></div></div></div><div class="card-wrapper"><div class="ProjectCardOnlyPercentage__Wrapper-sc-1qqprx-1 iXiRof"><div class="ProjectCardOnlyPercentage__Card-sc-1qqprx-0 gWSkIj link-wrapper"><div class="LikeButton__Wrapper-whittq-0 gucMjL ProjectCardOnlyPercentage__StyledLikeButton-sc-1qqprx-2 eUIaXW"><button type="button" class="LikeButton__LikedBtn-whittq-1 gRtvWI"><span>좋아요</span></button></div><div class="image-wrapper"><a href="/rosefatale?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C"><img alt="뻔한 장미는 싫어. 그 순수한 '모순'의 향기 프로젝트의 커버이미지" src="https://tumblbug-pci.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/28bdcff765334f42b3ace67860483212be085ec3/a34de84b23429d87b4d0125d719e81aa08686e75/d695d8b8-62e0-4813-9936-84775837cadf.png?auto=format%2Ccompress&amp;fit=crop&amp;h=465&amp;lossless=true&amp;w=620&amp;s=93203dc94be5bcd649c81e585947372a"></a></div><dl><dd class="project-sub-info"><span><a href="/discover?category=perfumes">조향</a></span><span><a href="/u/naturfum">NATURFUM</a></span></dd><dt><a href="/rosefatale?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C">뻔한 장미는 싫어. 그 순수한 '모순'의 향기</a></dt></dl><div class="funding-status"><span class="percentage">886% 달성</span></div></div></div></div><div class="card-wrapper"><div class="ProjectCardOnlyPercentage__Wrapper-sc-1qqprx-1 iXiRof"><div class="ProjectCardOnlyPercentage__Card-sc-1qqprx-0 gWSkIj link-wrapper"><div class="LikeButton__Wrapper-whittq-0 gucMjL ProjectCardOnlyPercentage__StyledLikeButton-sc-1qqprx-2 eUIaXW"><button type="button" class="LikeButton__LikedBtn-whittq-1 gRtvWI"><span>좋아요</span></button></div><div class="image-wrapper"><a href="/thebookofmoviesandwiches?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C"><img alt="해외 영화 속 샌드위치 모음, 『영화 속 샌드위치 도감』 프로젝트의 커버이미지" src="https://tumblbug-pci.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/83f5d038fb186f551e8a583d24ffb126579a3e78/cdbb3e9a9fca2dd7d08f7bb7d981d7ccc30993e3/ce4d7a55-3f37-44cf-9571-9fbbe4f5c246.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=465&amp;lossless=true&amp;w=620&amp;s=c81024ddd0040d3b8fb0fd5069cba5da"></a></div><dl><dd class="project-sub-info"><span><a href="/discover?category=art-books">아트북 · 도감</a></span><span><a href="/u/userzusoteruge">누나온더비치</a></span></dd><dt><a href="/thebookofmoviesandwiches?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C">해외 영화 속 샌드위치 모음, 『영화 속 샌드위치 도감』</a></dt></dl><div class="funding-status"><span class="percentage">76% 달성</span></div></div></div></div><div class="card-wrapper"><div class="ProjectCardOnlyPercentage__Wrapper-sc-1qqprx-1 iXiRof"><div class="ProjectCardOnlyPercentage__Card-sc-1qqprx-0 gWSkIj link-wrapper"><div class="LikeButton__Wrapper-whittq-0 gucMjL ProjectCardOnlyPercentage__StyledLikeButton-sc-1qqprx-2 eUIaXW"><button type="button" class="LikeButton__LikedBtn-whittq-1 gRtvWI"><span>좋아요</span></button></div><div class="image-wrapper"><a href="/seomilxmistisch?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C"><img alt="판타지 속 인물들의 초상과 귀금속 <만경화원 쥬얼리&amp;굿즈> 프로젝트의 커버이미지" src="https://tumblbug-pci.imgix.net/7674b2ceacf9139bd79e788401f9d772c77d28f1/0a97453776e6bfc0cb7f76462be680ce1ba56c30/415a4c783e8bd7c4814dd613f27e3399321e087f/1d4cbddf-cf3f-4e1c-b4df-831a4abdea7d.png?auto=format%2Ccompress&amp;fit=crop&amp;h=465&amp;lossless=true&amp;w=620&amp;s=71260cbfa65cdb60794c357df6534f60"></a></div><dl><dd class="project-sub-info"><span><a href="/discover?category=jewelry">쥬얼리</a></span><span><a href="/u/seomil">서밀x미스티쉬</a></span></dd><dt><a href="/seomilxmistisch?ref=%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8%2F%EC%B6%94%EC%B2%9C">판타지 속 인물들의 초상과 귀금속 &lt;만경화원 쥬얼리&amp;굿즈&gt;</a></dt></dl><div class="funding-status"><span class="percentage">113% 달성</span></div></div></div></div></div></div></div></div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/40.png" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/41.png" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/42.png" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/43.png" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag sale-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- ##### Related Product Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area bg-img" style="background-image: url(img/bg-img/3.jpg);">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="footer-logo mb-30">
                                <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit samet, consectetur adipiscing elit. India situs atione mantor</p>
                            <div class="social-info">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>QUICK LINK</h5>
                            </div>
                            <nav class="widget-nav">
                                <ul>
                                    <li><a href="#">Purchase</a></li>
                                    <li><a href="#">FAQs</a></li>
                                    <li><a href="#">Payment</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Return</a></li>
                                    <li><a href="#">Advertise</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Career</a></li>
                                    <li><a href="#">Orders</a></li>
                                    <li><a href="#">Policities</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>BEST SELLER</h5>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="img/bg-img/4.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Cactus Flower</a>
                                    <p>$10.99</p>
                                </div>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="img/bg-img/5.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Tulip Flower</a>
                                    <p>$11.99</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>CONTACT</h5>
                            </div>

                            <div class="contact-information">
                                <p><span>Address:</span> 505 Silk Rd, New York</p>
                                <p><span>Phone:</span> +1 234 122 122</p>
                                <p><span>Email:</span> info.deercreative@gmail.com</p>
                                <p><span>Open hours:</span> Mon - Sun: 8 AM to 9 PM</p>
                                <p><span>Happy hours:</span> Sat: 2 PM to 4 PM</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Bottom Area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="border-line"></div>
                    </div>
                    <!-- Copywrite Text -->
                    <div class="col-12 col-md-6">
                        <div class="copywrite-text">
                            <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                        </div>
                    </div>
                    <!-- Footer Nav -->
                    <div class="col-12 col-md-6">
                        <div class="footer-nav">
                            <nav>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">Portfolio</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

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
</body>

</html>