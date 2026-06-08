<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_06"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                        <span>Announcements &</span>
                        <span>Notices</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>Announcements</span>
                        <span>Notices</span>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>

            <section class="board-detail-section section-rise">

                <div class="sub-inner">
                    <article class="board-detail">

                        <div class="board-detail__head">
                            <h3>Announcement of the 2026 Hoeamsaji Royal Festival</h3>

                            <div class="board-detail__meta">
                                <span>Date <em>2026.06.01</em></span>
                                <span>Views <em>125</em></span>
                            </div>
                        </div>

                        <div class="board-detail__file">
                            <strong>Attachments</strong>

                            <a href="#" download>
                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_attach.svg" alt="">
                                2026_Hoeamsaji_Royal_Festival_Guide.pdf
                            </a>
                        </div>

                        <div class="board-detail__content">
                            <p>
                                The 2026 Hoeamsaji Royal Festival will be held at Yangju Hoeamsaji Temple Site.
                                Visitors can experience cultural performances, heritage programs, and special exhibitions.
                            </p>

                            <p>
                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/contents/gallery01.jpg">
                            </p>

                            <p>
                                Please check the attached guide for detailed program schedules and visitor information.
                            </p>
                        </div>

                    </article>

                    
                    <div class="board-detail-btn">
                        <a href="notice.html">List</a>
                    </div>

                    <div class="board-detail-nav">

                        <a href="#" class="prev">
                            <strong>Previous</strong>
                            <span>Temporary Closure Notice for Maintenance</span>
                        </a>

                        <a href="#" class="next">
                            <strong>Next</strong>
                            <span>World Heritage Education Program Registration</span>
                        </a>

                    </div>

                </div>

            </section>
			
			
</main>
			
<c:import url="/usr/layout/footer.do" />