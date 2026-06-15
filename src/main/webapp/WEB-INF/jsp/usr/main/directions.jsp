<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

    <!-- ================= SUB VISUAL ================= -->
    <section class="sub-visual section-rise">

        <div class="sub-visual__bg sub-visual__bg_04"></div>
        <div class="sub-visual__dim"></div>

        <div class="sub-visual__content">

            <h2>
                <span>Directions</span>
            </h2>

            <div class="sub-location">
                <a href="/hoeamsaji/usr/main.do">
                    <img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home">
                </a>
                <span>Visit</span>
                <span>Directions</span>
            </div>

        </div>

        <div class="scroll-down">SCROLL DOWN</div>

    </section>


    <!-- ================= CONTENT ================= -->
    <div class="sub-inner">

        <!-- 안내 영역 -->
        <div class="top-notice section-rise">
            <div class="top-notice-left">
                <img src="/hoeamsaji/assets/site/hoeamsaji/img/map_icon01.svg" alt="map icon">
            </div>

            <div>
                <p>
                    • <strong>Plan your visit</strong> to Hoeamsaji Temple Site<br>
                    • Explore museum grounds, historic ruins, and royal Buddhist heritage
                </p>

                <a href="https://maps.app.goo.gl/4g64RRZEWmSBYg5dA"
				   target="_blank">
				    View on Google Maps
				</a>
            </div>
        </div>


        <!-- ================= MAP + INFO BLOCK ================= -->
        <section class="visit-block section-rise">

            <!-- MAP -->
            <div class="map-area">

                <iframe
				    src="https://www.google.com/maps?q=37.8411711,127.1027516&z=16&output=embed&hl=en"
				    width="100%"
				    height="420"
				    style="border:0;"
				    loading="lazy"
				    allowfullscreen>
				</iframe>
            </div>

            <!-- INFO -->
            <div class="visit-info-area">

                <div class="info-item">
                    <strong>Location</strong>
                    <p>11, Hoeamsa-gil, Yangju-si, Gyeonggi-do, Republic of Korea</p>
                </div>

                <div class="info-item">
                    <strong>Opening Hours</strong>
                    <p>
                        09:00 – 18:00 (Mar – Oct)<br>
                        09:00 – 17:00 (Nov – Feb)<br>
                        * Last admission 17:00
                    </p>
                </div>

                <div class="info-item">
                    <strong>Contact</strong>
                    <p>+82-31-8082-4187</p>
                </div>

                <div class="info-item">
                    <strong>Closed</strong>
                    <p>Every Monday, Jan 1, Lunar New Year, Chuseok</p>
                </div>

            </div>

        </section>

    </div>

</main>

<c:import url="/usr/layout/footer.do" />