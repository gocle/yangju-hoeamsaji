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
    <title>Hoeamsaji Museum</title>
    <meta name="description" content="Official website of Hoeamsaji Museum in Yangju, Korea.">
    <meta name="keywords" content="Hoeamsaji, Yangju Museum, Korean Buddhist Heritage">

    <!-- OG -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Hoeamsaji Museum">
    <meta property="og:description" content="Discover the history and heritage of Hoeamsaji Temple Site.">

    <!-- favicon -->
    <link rel="icon" href="img/common/favicon.ico">

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
                        <span>The Royal Seon Heritage of Yangju</span>
                        <h2>Hoeamsaji Temple Site</h2>
                        <p>
                            <span>Once the largest royal Buddhist temple of early Joseon,</span>
                            <span>Hoeamsaji preserves the traces of Korea’s Seon tradition,</span>
                            <span>royal patronage, and centuries of spiritual legacy.</span>
                        </p>

                        <a href="#" class="fill-btn">
                            <span>Detail</span>

                            <span class="btn-arrow">
                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_s.png"
                                    alt=""
                                    class="arrow-white">

                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_next_b.png"
                                    alt=""
                                    class="arrow-black">
                            </span>
                        </a>
                    </div>
                </div>

                <div class="visual-slide">
                    <div class="visual-bg"
                        style="background-image:url('/hoeamsaji/assets/site/hoeamsaji/img/main_02.jpg')">
                    </div>

                    <div class="visual-content">
                        <span>The Royal Seon Heritage of Yangju</span>
                        <h2>Hoeamsaji Temple Site</h2>
                        <p>
                            <span>Once the largest royal Buddhist temple of early Joseon,</span>
                            <span>Hoeamsaji preserves the traces of Korea’s Seon tradition,</span>
                            <span>royal patronage, and centuries of spiritual legacy.</span>
                        </p>

                        <a href="#" class="fill-btn">
                            <span>Discover</span>
                        </a>
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
                    Once a vast temple complex supported by kings and royal patrons,
                    Hoeamsaji now remains as foundations, stone terraces, monuments,
                    and excavated artifacts.
                    </p>

                    <p>
                    Each trace reveals how royal Buddhist culture, Seon practice,
                    and monastic life once came together at the foot of Mt. Cheonbo.
                    </p>

                    <a href="#" class="fill-btn black">
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
                        <strong>Approx. 70 Building Sites</strong>
                        <p>Revealed through<br>archaeological excavations</p>
                    </div>

                    <div class="intro-info__item">
                        <i class="intro-info__icon icon-stupa"></i>
                        <strong>Royal Seon Monastery</strong>
                        <p>A rare site showing<br>Korea’s Seon Buddhist tradition</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="heritage section-rise">
            <span class="heritage-circle"></span>
            <div class="section-title">
            <h3>Heritage Highlights</h3>
            <p>A journey through royal legacy, Seon practice, and archaeological discovery.</p>
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
            <p>Hoeamsaji Temple Site reveals the exceptional value of Korea’s royal Buddhist culture,</p>
            <p>Seon monastic architecture, and archaeological heritage from the late Goryeo to early Joseon period.</p>

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
            <a href="#" class="fill-btn gold">Discover Its Value</a>
            </div>
        </section>

        <section class="visit section-rise">
            <div class="inner">

                <div class="section-title dark-title">
                    <h3>Plan Your Visit</h3>
                    <p>
                        <span>Begin your journey through</span>
                        <span>Hoeamsaji Temple Site.</span>
                    </p>
                </div>

                <div class="map-box">

                    <div class="map-box__content">
                        <h4>Hoeamsaji Temple Site</h4>

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
		
	<c:import url="/usr/layout/footer.do" />