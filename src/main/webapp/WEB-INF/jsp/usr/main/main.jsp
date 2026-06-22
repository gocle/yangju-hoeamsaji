<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <!-- IE 호환 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- 모바일 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 기본 SEO -->
    <title>양주 회암사지 세계유산 | HOEAMSAJI: Archaeological Remains of a Typical Seon Monastery from 14th-century East Asia</title>
    <meta name="description" content="회암사지(Hoeamsaji)는 고려 말~조선 초 최대 규모의 왕실 사찰 유적으로 세계유산적 가치를 지닌 문화유산입니다. Explore the history, heritage, exhibitions and educational programs of Hoeamsaji in Yangju, Korea.">
	<meta name="keywords" content="회암사지, 양주 회암사지, Hoeamsaji, Hoeamsaji Temple Site, 세계유산, World Heritage, UNESCO, 양주시립회암사지박물관">

    <!-- OG -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="회암사지(Hoeamsaji) | 세계유산 우선등재목록">
	<meta property="og:description" content="고려 말~조선 초 왕실 사찰 유적 회암사지. Royal Buddhist heritage site of Korea.">

    <!-- favicon -->
    <link rel="icon" href="/hoeamsaji/assets/site/hoeamsaji/img/common/favicon.ico">

    <!-- css -->
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/common.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/contents.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/responsive.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/slick.css">

    <!-- js -->
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/jquery-3.7.1.min.js"></script>
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/slick.min.js"></script>
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/ui-script.js"></script>
  	
</head>

<style>
.popup-slide p {
    margin: 0;
    padding: 0;
    display: inline;
}
</style>

<body>

		<c:import url="/usr/menu/header.do" />
		
        <main>
        <section class="main-visual">

            <div class="visual-slider">

                <div class="visual-slide">
                    <div class="visual-bg"
                        style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/main_01.jpg')">
                    </div>

                    <div class="visual-content">
                        <span>Archaeological Remains of a Typical Seon Monastery from 14th-century East Asia</span>
                        <h2>Hoeamsaji</h2>
                        <p>
                            <span>Once the largest royal Buddhist monastery of early Joseon,</span>
                            <span>Hoeamsaji preserves the traces of Korea’s Seon Buddhist tradition,</span>
                            <span>royal patronage, and centuries of spiritual legacy.</span>
                        </p>

                        <!-- <a href="#" class="fill-btn">
                            <span>Detail</span>

                            <span class="btn-arrow">
                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_s.png"
                                    alt=""
                                    class="arrow-white">

                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_b.png"
                                    alt=""
                                    class="arrow-black">
                            </span>
                        </a> -->
                    </div>
                </div>

                <div class="visual-slide">
                    <div class="visual-bg"
                        style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/main_02.jpg')">
                    </div>

                    <div class="visual-content">
                        <span>Archaeological Remains of a Typical Seon Monastery from 14th-century East Asia</span>
                        <h2>Hoeamsaji</h2>
                        <p>
                            <span>Once the largest royal Buddhist monastery of early Joseon,</span>
                            <span>Hoeamsaji preserves the traces of Korea’s Seon Buddhist tradition,</span>
                            <span>royal patronage, and centuries of spiritual legacy.</span>
                        </p>

                        <!-- <a href="#" class="fill-btn">
                            <span>Discover</span>
                        </a> -->
                    </div>
                </div>

            </div>
            
            <div class="scroll-down">SCROLL DOWN</div> 

        </section>

        <section class="intro section-rise">
            <div class="intro__inner">
                <div class="intro__headline">
                <h3>
                    A Royal Temple<br>
                    Remembered in Stone
                </h3>
                </div>

                <div class="intro__content">
                <div class="intro-images">
                    <div class="circle-img small"></div>
                    <div class="circle-img large"></div>
                </div>

                <div class="intro-text">
                    <p>
                    Once a vast monastic complex supported by kings and royal patrons, 
                    Hoeamsaji now remains as foundations, stone terraces, monuments, and excavated artifacts.
                    </p>

                    <p>
                    Each trace reveals how Seon Buddhist culture and its practice 
                    in the monastic life once came together at the foot of Cheonbosan Mountain.
                    </p>

                    <a href="/hoeamsaji/usr/introduce/info.do?menuId=2026MENU0000461" class="fill-btn black">
                    View more

                    <span class="btn-arrow">
                        <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_b.png" alt="" class="arrow-black">
                        <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_s.png" alt="" class="arrow-white">
                    </span>
                    </a>
                </div>
                </div>
                <div class="intro-info">
                    <div class="intro-info__item">
                        <i class="intro-info__icon icon-temple"></i>
                        <strong>Late Goryeo － Early Joseon</strong>
                        <p>A royal Buddhist temple with<br>deep historical roots</p>
                    </div>

                    <div class="intro-info__item">
                        <i class="intro-info__icon icon-sites"></i>
                        <strong>Approximately 70 Buildings</strong>
                        <p>Revealed through<br>archaeological excavations</p>
                    </div>

                    <div class="intro-info__item">
                        <i class="intro-info__icon icon-stupa"></i>
                        <strong>Royal Monastery</strong>
                        <p>A rare site showing<br>Korea’s Seon Buddhist tradition</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="heritage section-rise">
            <span class="heritage-circle"></span>
            <div class="section-title">
            <h3>Heritage Highlights</h3>
            <p>A journey through royal legacy, Seon Buddhist practice, and archaeological discovery.</p>
            </div>

            <div class="marquee-wrap">
            <div class="marquee-row left">
                <div class="marquee-track">

                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-01.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-02.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-03.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-04.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-05.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-06.jpg')"></div>

                <!-- 반복 -->
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-01.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-02.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-03.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-04.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-05.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-06.jpg')"></div>

                </div>
            </div>

            <div class="marquee-row right">
                <div class="marquee-track">

                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-07.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-08.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-09.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-10.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-11.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-03.jpg')"></div>

                <!-- 반복 -->
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-07.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-08.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-09.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-10.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-11.jpg')"></div>
                <div class="thumb" style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/thumb-03.jpg')"></div>

                </div>
            </div>
            </div>

            <div class="value-box section-rise">
            <h3>World Heritage Value</h3>
            <!-- <p>Hoeamsaji Temple Site reveals the exceptional value of Korea’s royal Buddhist culture,</p>
            <p>Seon monastic architecture, and archaeological heritage from the late Goryeo to early Joseon period.</p> -->

            <div class="value-list">
            <article>
                <div class="value-card__top">
                <strong>01</strong>
                <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-value-01.svg" alt="">
                </div>
                <h4>Royal Buddhist Culture</h4>
                <p>A sacred site shaped by royal patronage and early Joseon Buddhist culture.</p>
            </article>

            <article>
                <div class="value-card__top">
                <strong>02</strong>
                <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-value-02.svg" alt="">
                </div>
                <h4>Seon Monastery Architecture</h4>
                <p>A rare layout showing the spatial system of a large-scale Seon monastery.</p>
            </article>

            <article>
                <div class="value-card__top">
                <strong>03</strong>
                <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-value-03.svg" alt="">
                </div>
                <h4>Archaeological Evidence</h4>
                <p>Excavated remains and artifacts revealing the temple’s scale and status.</p>
            </article>
            </div>
            <a href="/hoeamsaji/usr/introduce/system.do?menuId=2026MENU0000464" class="fill-btn gold">Discover Its Value</a>
            </div>
        </section>

        <section class="visit section-rise">
            <div class="inner">

                <div class="section-title dark-title">
                    <h3>Plan Your Visit</h3>
                    <p>
                        <!-- <span>Begin your journey through</span>
                        <span>Hoeamsaji</span> -->
                    </p>
                </div>

                <div class="map-box">

                    <div class="map-box__content">
                        <h4>Hoeamsaji</h4>

                        <p>
                            <span>Explore the museum, walk through the ancient temple grounds,</span>
                            <span></span>and discover the monuments that preserve the legacy of Hoeamsaji.</span>
                        </p>

                    </div>

                </div>

                <div class="visit-info">

                    <article class="visit-info__item">

                        <div class="visit-info__head">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_map.png" alt="">
                            <strong>Location</strong>
                        </div>

                        <p>
                            11, Hoeamsa-gil, Yangju-si, Gyeonggi-do,
                            Republic of Korea
                        </p>

                    </article>


                    <article class="visit-info__item">

                        <div class="visit-info__head">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-clock.png" alt="">
                            <strong>Opening Hours</strong>
                        </div>

                        <div class="visit-time">
                            <span>09:00 – 18:00 <em>(March – October)</em></span>
                            <span>09:00 – 17:00 <em>(November – February)</em></span>
                        </div>

                        <small>* Last Admission 17:00</small>

                    </article>


                    <article class="visit-info__item">

                        <div class="visit-info__head">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-phone.png" alt="">
                            <strong>Contact</strong>
                        </div>

                        <p>+82-31-8082-4187</p>

                    </article>


                    <article class="visit-info__item">

                        <div class="visit-info__head">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/icon-calendar.png" alt="">
                            <strong>Closed</strong>
                        </div>

                        <p>
                            Mondays, Jan. 1, Lunar New Year’s Day,
                            Chuseok
                        </p>

                    </article>

                </div>

               

            </div>
        </section>
        </main>
		<c:if test="${not empty popupList}">
		 <div class="popup-overlay" style="display:none;">

            <div class="popup-wrap">

                <div class="popup-slider">
					
					<c:forEach var="bn" items="${popupList}" varStatus="status">
						<div class="popup-slide">
	                         <c:choose>
				                <c:when test="${not empty bn.bnLink}">
				                    <a href="${bn.bnLink}"
				                       style="display:block; width:100%; height:100%; text-decoration:none;"
				                       <c:if test="${bn.bnNewWin eq '1'}">target="_blank"</c:if>
				                       title="새창">
				                        ${bn.bnDescription}
				                    </a>
				                </c:when>
				                <c:otherwise>
				                    ${bn.bnDescription}
				                </c:otherwise>
				            </c:choose>
                    	</div>
					</c:forEach>
                </div>

                <div class="popup-bottom">
                    <label class="popup-switch">
                        <input type="checkbox" id="chkbox" />
                        <span class="switch-text">Don't show today</span>
                        <span class="switch-slider"></span>
                    </label>

                    <button type="button" class="popup-close" onclick="closePopup();">
                        Close
                    </button>
                </div>

            </div>

        </div>
		</c:if>
	<c:import url="/usr/layout/footer.do" />
	
	<script>
	// 쿠키 설정
    function setCookie(name, value, expiredays) {
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
    }

    // 팝업 닫기
    function closePopup() {
        const checkbox = document.getElementById("chkbox");
        const overlay = document.querySelector(".popup-overlay");
        
        if (checkbox && checkbox.checked) {
            setCookie("main_popup_hidden", "done", 1);
        }
        
        // 팝업 숨기기
        if (overlay) overlay.style.display = "none";
    }

    // 쿠키 확인
    document.addEventListener("DOMContentLoaded", function () {
        const overlay = document.querySelector(".popup-overlay");
        
        if (!overlay) return;
		
        if (document.cookie.indexOf("main_popup_hidden=done") < 0) {
            overlay.style.display = "flex";
        } else {
            overlay.style.display = "none";
        }
    });
	</script>