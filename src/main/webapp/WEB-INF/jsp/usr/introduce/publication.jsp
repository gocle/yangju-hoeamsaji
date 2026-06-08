<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_04"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                        <span>Publication</span>
                        <span>Archive</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>Archives</span>
                        <span>Publication</span>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>
			
			<div class="sub-inner">

                <div class="top-notice section-rise">
                    <div class="top-notice-left">
                        <img src="/hoeamsaji/assets/site/hoeamsaji/img/book_icon01.svg" alt="도서 아이콘" >
                    </div>
                    <div>
                        <p>
                            • <strong>Where to Purchase</strong> : Museum Gift Shop or Online (Government Publications Sales Center)<br>
                        </p>
                        <a href="#" target="_blank">Government Publications Sales Center ↗</a>
                    </div>
                </div>

                <section class="publication-block section-rise">
                    <div class="visual-side">
                       <img src="/hoeamsaji/assets/site/hoeamsaji/img/contents/book_01.jpg" alt="회암사와 승탑">
                    </div>

                    <div class="details-side">
                        <div class="unq-title-area">
                            <div class="bg-number">XIII</div>
                            <h3 class="main-heading">Hoeamsaji Museum Research Series XIII: Hoeamsa and Seungtap</h3>
                            <div class="sub-meta-line">
                                <div class="meta-tag">Publication Year <span>2025</span></div>
                                <div class="meta-tag">Type <span>Research Series</span></div>
                            </div>
                        </div>

                        <!-- 선형 목차 리스트 -->
                        <div class="contents-frame">
                            <span class="label-track">Contents</span>
                            <ul class="index-grid">
                                <li class="index-cell">
                                    <span class="roman-num">I</span>
                                    <div class="data-flex">
                                        <span class="topic">The Symbolic Culture and Heritage of Seungtap from Goryeo to Early Joseon</span>
                                        <span class="writer">Kim Su-yeon</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">II</span>
                                    <div class="data-flex">
                                        <span class="topic">The Lotus Pedestal of the Hoeamsaji Seungtap and Its Relationship with Traditional Stone Pagodas of China and Japan</span>
                                        <span class="writer">Oh Ho-seok</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">III</span>
                                    <div class="data-flex">
                                        <span class="topic">Buddhist Reliquaries and Pagodas in the Goryeo–Joseon Period</span>
                                        <span class="writer">Lim Gi-pyo</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">IV</span>
                                    <div class="data-flex">
                                        <span class="topic">Stone Seungtap in Korea and East Asia</span>
                                        <span class="writer">Marco Trombetta</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">V</span>
                                    <div class="data-flex">
                                        <span class="topic">Changes in the Layout and Structure of Stone Lanterns at Hoeamsaji from Goryeo to Joseon</span>
                                        <span class="writer">Seong Seo-young</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">VI</span>
                                    <div class="data-flex">
                                        <span class="topic">Two Perspectives on the Influence of Joseon Royal Stone Lanterns on the Hoeamsaji Seungtap</span>
                                        <span class="writer">Kim Min-gyu</span>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <!-- <div class="archive-action-wrapper">
                            <div class="btn-archive-status">[ ARCHIVE ONLINE : ORIGINAL PDF PREPARING ]</div>
                        </div> -->
                    </div>
                </section>

                <section class="publication-block section-rise">
                    <div class="visual-side">
                       <img src="/hoeamsaji/assets/site/hoeamsaji/img/contents/book_02.jpg" alt="회암사와 불서">
                    </div>

                    <div class="details-side">
                        <div class="unq-title-area">
                            <div class="bg-number">XII</div>
                            <h3 class="main-heading">Hoeamsaji Museum Research Series XII: Hoeamsa and Buddhist Scriptures</h3>
                            <div class="sub-meta-line">
                                <div class="meta-tag">Publication Year <span>2024</span></div>
                                <div class="meta-tag">Type <span>Research Series</span></div>
                            </div>
                        </div>

                        <div class="contents-frame">
                            <span class="label-track">Contents</span>
                            <ul class="index-grid">
                                <li class="index-cell">
                                    <span class="roman-num">I</span>
                                    <div class="data-flex">
                                        <span class="topic">Buddhist Scriptures Published at Haein Monastery in the 14th Century and Their Role in Buddhism Education</span>
                                        <span class="writer">Kang Ho-seon</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">II</span>
                                    <div class="data-flex">
                                        <span class="topic">The Buddhist Patronage of Mugeun Yi Saek (牧隱 李穡) and Hoeamsa Temple</span>
                                        <span class="writer">Nam Dong-shin</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">III</span>
                                    <div class="data-flex">
                                        <span class="topic">The Influence of Incheon Angmok on Buddhism in the Joseon Dynasty</span>
                                        <span class="writer">Park In-sik</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">IV</span>
                                    <div class="data-flex">
                                        <span class="topic">The Publication of Jusambugyo by Venerable Yeongmyeong Yeonsu and Its Historical Significance</span>
                                        <span class="writer">Lee Jong-su</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">V</span>
                                    <div class="data-flex">
                                        <span class="topic">The Lineage of the Woodblocks of Buljosamgyeong and Characteristics of Buddhist Scripture Publishing at Hoeamsa Temple</span>
                                        <span class="writer">Lee Sang-baek</span>
                                    </div>
                                </li>
                                <li class="index-cell">
                                    <span class="roman-num">VI</span>
                                    <div class="data-flex">
                                        <span class="topic">A Digital Heritage Utilization Plan for Hoeamsaji</span>
                                        <span class="writer">Park Jin-ho</span>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <!-- <div class="archive-action-wrapper">
                            <div class="btn-archive-status">[ ARCHIVE ONLINE : ORIGINAL PDF PREPARING ]</div>
                        </div> -->
                    </div>
                </section>

            </div>
</main>
			
<c:import url="/usr/layout/footer.do" />