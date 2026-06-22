<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_02"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                        <span>Korea's World</span>
                        <span>Heritage</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>World Heritage</span>
                        <span>Korea's World Heritage</span>
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
                                    <li><span>1</span><strong>Jongmyo Shrine</strong><em>1995</em></li>
                                    <li><span>2</span><strong>Haeinsa Temple Janggyeong Panjeon, the Depositories for the Tripitaka Koreana Woodblocks</strong><em>1995</em></li>
                                    <li><span>3</span><strong>Seokguram Grotto and Bulguksa Temple</strong><em>1995</em></li>
                                    <li><span>4</span><strong>Hwaseong Fortress</strong><em>1997</em></li>
                                    <li><span>5</span><strong>Changdeokgung Palace Complex</strong><em>1997</em></li>
                                    <li><span>6</span><strong>Gyeongju Historic Areas</strong><em>2000</em></li>
                                    <li><span>7</span><strong>Gochang, Hwasun and Ganghwa Dolmen Sites</strong><em>2000</em></li>
                                    <li><span>8</span><strong>Jeju Volcanic Island and Lava Tubes</strong><em>2007</em></li>
                                    <li><span>9</span><strong>Royal Tombs of the Joseon Dynasty</strong><em>2009</em></li>
                                    <li><span>10</span><strong>Historic Villages of Korea: Hahoe and Yangdong</strong><em>2010</em></li>
                                    <li><span>11</span><strong>Namhansanseong</strong><em>2014</em></li>
                                    <li><span>12</span><strong>Baekje Historic Areas</strong><em>2015</em></li>
                                    <li><span>13</span><strong>Sansa, Buddhist Mountain Monasteries in Korea</strong><em>2018</em></li>
                                    <li><span>14</span><strong>Seowon, Korean Neo-Confucian Academies</strong><em>2019</em></li>
                                    <li><span>15</span><strong>Getbol, Korean Tidal Flats</strong><em>2021</em></li>
                                    <li><span>16</span><strong>Gaya Tumuli</strong><em>2023</em></li>
                                    <li><strong>Petroglyphs along the Bangucheon Stream</strong><em>2025</em></li>
                                </ul>
                            </div>

                            <div class="heritage-tab-content" id="tentative">
                                <ul class="heritage-list tentative-list">
                                    <li><span>1</span><strong>Mt. Soraksan Nature Reserve</strong><em>1994</em></li>
                                    <li><span>2</span><strong>Kangjingun Kiln Sites</strong><em>1994</em></li>
                                    <li><span>3</span><strong>Sites of fossilized dinosaurs throughout the Southern seacoast</strong><em>2002</em></li>
                                    <li><span>4</span><strong>Petroglyphs in the Bangcheon area</strong><em>2010</em></li>
                                    <li><span>5</span><strong>Ancient Mountain Fortresses in Central Korea</strong><em>2010</em></li>
                                    <li><span>6</span><strong>Salterns</strong><em>2010</em></li>
                                    <li><span>7</span><strong>Upo Wetland</strong><em>2011</em></li>
                                    <li><span>8</span><strong>Oeam Village</strong><em>2011</em></li>
                                    <li><span>9</span><strong>Naganeupseong, Town Fortress and Village</strong><em>2011</em></li>
                                    <li><span>10</span><strong>Capital Fortifications of Hanyang : Hangyangdoseong Capital City Wall, Bukhansanseong Mountain Fortress and Tangchundaeseong Defense Wall</strong><em>2012</em></li>
                                    <li><span>11</span><strong>Stone Buddhas and Pagodas at Hwasun Unjusa Temple</strong><em>2017</em></li>
                                    <li><span>12</span><strong>Archaeological Remains at the Hoeamsa Temple Site in Yangju City</strong><em>2022</em></li>
                                    <li><span>13</span><strong>Sites of the Busan Wartime Capital</strong><em>2023</em></li>
                                    <li><span>14</span><strong>Getbol, Korean Tidal Flats (Extension)</strong><em>2023</em></li>
                                </ul>
                            </div>

                        </div>
                    </div>
					<h4>Serial nomination: Any World Heritage property that consists of two or more areas which are physically unconnected but related and which together are of the same OUV
                </div>
            </section>
            
    

        </main>

<c:import url="/usr/layout/footer.do" />