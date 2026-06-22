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
                        <!-- <p>
                            Current Status of Cultural Heritage<br>
                            at the Yangju Hoeamsa Temple Site
                        </p> -->
                    </div>
                    
					<div class="table-guide">
					    <span>Swipe to view</span>
					    <i></i>
					</div>
					
					<div class="sub-table-area">

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
	                                    <td>Hoeamsaji (Hoeamsa Temple Site), Yangju</td>
	                                    <td>State-designated Historic Site</td>
	                                    <td>June 10, 1964.</td>
	                                    <td rowspan="2">Main Temple Area<br>
	                                        (Worship practice,</br> Meditation, Service areas)</td>
	                                </tr>
	
	                                <tr>
	                                    <td>2</td>
	                                    <td>Stupa at Hoeamsaji, Yangju</td>
	                                    <td>State-designated Treasure</td>
	                                    <td>June 24, 2021.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>3</td>
	                                    <td>Stele for Royal Preceptor Hyegeun at Hoeamsaji, Yangju</td>
	                                    <td>State-designated Treasure</td>
	                                    <td>September 2, 1963.</td>
	                                    <td rowspan="7">Auxiliary facilities<br>
	                                        (Monuments to eminent monks)
	                                    </td>
	                                </tr>
	
	                                <tr>
	                                    <td>4</td>
	                                    <td>Stupa for Monk Jacho at Hoeamsaji,<br>
	                                        Yangju (with turtle-shaped base) 
	                                    </td>
	                                    <td>State-designated Treasure</td>
	                                    <td>September 2, 1963.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>5</td>
	                                    <td>Two Lion Stone Lanterns in front of the<br>
	                                        Stupa for Monk Jacho at Hoeamsaji, Yangju
	                                    </td>
	                                    <td>State-designated Historic Site</td>
	                                    <td>September 2, 1963.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>6</td>
	                                    <td>Stupa and stone lantern for Monk Jigong</td>
	                                    <td>Gyeonggi-do Province-designated</br> Tangible Cutural Heritage</td>
	                                    <td>September 26, 1974.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>7</td>
	                                    <td>Stupa and Stone Lantern for Monk Hyegeun</td>
	                                    <td>Gyeonggi-do Province-designated</br> Tangible Cutural Heritage</td>
	                                    <td>September 26, 1974.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>8</td>
	                                    <td>Stele for Monk Jacho</td>
	                                    <td>Gyeonggi-do Province-designated</br> Tangible Cutural Heritage</td>
	                                    <td>September 26, 1974.</td>
	                                </tr>
	
	                                <tr>
	                                    <td>9</td>
	                                    <td>Stele for Monk Jigong<br>
	                                        at Hoeamsa Temple
	                                    </td>
	                                    <td>Gyeonggi-do Province Cultural Heritage Data</td>
	                                    <td>November 29, 2004.</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
                    
                    </div>

                </div>
            </section>
</main>
			
<c:import url="/usr/layout/footer.do" />