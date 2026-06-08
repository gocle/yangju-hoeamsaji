<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_01"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                        <span>Current Status of National Heritage</span>
                        <span>within the Historic Site</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>Hoeamsaji</span>
                        <span>Current Status of National Heritage</span>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>
			
			
            <section class="sub-history section-rise">
                <div class="sub-inner">

                    <div class="sub-title-box sub-history-head">
                        <span class="sub-title-shape"></span>
                        <h3>History</h3>
                        <p>
                            Current Status of Cultural Heritage<br>
                            at the Yangju Hoeamsa Temple Site
                        </p>
                    </div>

                    <div class="sub-table-wrap">
                        <table class="sub-table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Designation</th>
                                    <th>Type</th>
                                    <th>Designated Date</th>
                                    <th>Note</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Yangju Hoeamsa Temple Site</td>
                                    <td>Private</td>
                                    <td>June 10, 1964.</td>
                                    <td rowspan="2">Central Ministry<br>
                                        (Areas of Faith, Practice, and Life)</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>Saritap at Hoeamsa Temple Site in Yangju</td>
                                    <td>Treasure</td>
                                    <td>June 24, 2021.</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>Yangju Hoeamsa<br>
                                        Temple Site Seonkakwangsa Stele<br>
                                        (Turtle-shaped base)
                                    </td>
                                    <td>Treasure</td>
                                    <td>September 2, 1963.</td>
                                    <td rowspan="7">Auxiliary facilities<br>
                                        (Monuments to eminent monks)
                                    </td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>Yangju Hoeamsa Temple Site<br>
                                        Muhakdaesa Pagoda
                                    </td>
                                    <td>Treasure</td>
                                    <td>September 2, 1963.</td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>Twin Lion Stone Lantern in front of the<br>
                                        Pagoda of Great Master Muhak<br>
                                        at Hoeamsa Temple Site in Yangju
                                    </td>
                                    <td>Private</td>
                                    <td>September 2, 1963.</td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>Stupa of Master Jigong and Stone Lantern</td>
                                    <td>Gyeonggi-do Tangible Cultural Heritage</td>
                                    <td>September 26, 1974.</td>
                                </tr>

                                <tr>
                                    <td>7</td>
                                    <td>Stupa of Seon Master Naong and Stone Lantern
                                    </td>
                                    <td>Gyeonggi-do Tangible Cultural Heritage</td>
                                    <td>September 26, 1974.</td>
                                </tr>

                                <tr>
                                    <td>8</td>
                                    <td>Monument to Great Master Muhak
                                    </td>
                                    <td>Gyeonggi-do Tangible Cultural Heritage</td>
                                    <td>September 26, 1974.</td>
                                </tr>

                                <tr>
                                    <td>9</td>
                                    <td>Stele of Seon Master Jigong<br>
                                        at Hoeamsa Temple in Yangju
                                    </td>
                                    <td>Gyeonggi-do Cultural Heritage Data</td>
                                    <td>November 29, 2004.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </section>
</main>
			
<c:import url="/usr/layout/footer.do" />