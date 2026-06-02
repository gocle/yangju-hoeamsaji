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
                        <span>Korea's World</span>
                        <span>Cultural Heritage</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>World Heritage</span>
                        <span>Korea's World Cultural Heritage</span>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>

            <section class="heritage-map-section section-rise">
                <div class="sub-inner">

                    <div class="heritage-map-wrap">

                        <div class="heritage-map-box">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/img_heritage_map.png" alt="World Heritage and Tentative List Map of Korea">
                        </div>

                        <div class="heritage-tab-box">

                            <div class="heritage-tab-menu">
                                <button type="button" class="is-active" data-tab="heritage">
                                    World Heritage (16)
                                </button>
                                <button type="button" data-tab="tentative">
                                    Tentative list (14)
                                </button>
                            </div>

                            <div class="heritage-tab-content is-active" id="heritage">
                                <ul class="heritage-list">
                                    <li><span>1</span><strong>Jongmyo</strong><em>1995</em></li>
                                    <li><span>2</span><strong>Haeinsa Janggyeongpanjeon</strong><em>1995</em></li>
                                    <li><span>3</span><strong>Seokguram and Bulguksa</strong><em>1995</em></li>
                                    <li><span>4</span><strong>Mars</strong><em>1997</em></li>
                                    <li><span>5</span><strong>Changdeokgung Palace</strong><em>1997</em></li>
                                    <li><span>6</span><strong>Gyeongju Historic Area</strong><em>2000</em></li>
                                    <li><span>7</span><strong>Dolmen Sites in Ganghwa, Gochang, and Hwasun</strong><em>2000</em></li>
                                    <li><span>8</span><strong>Jeju Volcanic Island and Lava Tubes</strong><em>2007</em></li>
                                    <li><span>9</span><strong>Royal Tombs of Joseon</strong><em>2009</em></li>
                                    <li><span>10</span><strong>Historic Villages of Korea: Hahoe and Yangdong</strong><em>2010</em></li>
                                    <li><span>11</span><strong>Namhansanseong</strong><em>2014</em></li>
                                    <li><span>12</span><strong>Baekje Historic Areas</strong><em>2015</em></li>
                                    <li><span>13</span><strong>Mountain Temples, Korean Mountain Monasteries</strong><em>2018</em></li>
                                    <li><span>14</span><strong>Korean Seowon</strong><em>2019</em></li>
                                    <li><span>15</span><strong>Tidal Flats of Korea</strong><em>2021</em></li>
                                    <li><span>16</span><strong>Gaya Tombs</strong><em>2023</em></li>
                                </ul>
                            </div>

                            <div class="heritage-tab-content" id="tentative">
                                <ul class="heritage-list tentative-list">
                                    <li><span>1</span><strong>Seoraksan Natural Reserve</strong><em>1994</em></li>
                                    <li><span>2</span><strong>Gangjin Kiln Site</strong><em>1994</em></li>
                                    <li><span>3</span><strong>Dinosaur fossil sites along the southern coast</strong><em>2002</em></li>
                                    <li><span>4</span><strong>Petroglyphs in the Bangcheon area</strong><em>2010</em></li>
                                    <li><span>5</span><strong>Central Inland Mountain Fortress Group</strong><em>2010</em></li>
                                    <li><span>6</span><strong>Salt Field</strong><em>2010</em></li>
                                    <li><span>7</span><strong>Upo Wetland</strong><em>2011</em></li>
                                    <li><span>8</span><strong>Oeam Village</strong><em>2011</em></li>
                                    <li><span>9</span><strong>Nakaneupseong</strong><em>2011</em></li>
                                    <li><span>10</span><strong>The Capital City Walls of Hanyang</strong><em>2012</em></li>
                                    <li><span>11</span><strong>Hwasun Unjusa Stone Buddha and Stone Pagoda Group</strong><em>2017</em></li>
                                    <li><span>12</span><strong>Yangju Hoeamsa Temple Site</strong><em>2022</em></li>
                                    <li><span>13</span><strong>The Legacy of Busan, the Refugee Capital During the Korean War</strong><em>2023</em></li>
                                    <li><span>14</span><strong>Tidal Flats of Korea Phase 2</strong><em>2023</em></li>
                                </ul>
                            </div>

                        </div>

                    </div>

                </div>
            </section>
            
    

        </main>

<c:import url="/usr/layout/footer.do" />