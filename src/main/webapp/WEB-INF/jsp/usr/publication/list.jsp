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
                <a href="/hoeamsaji/usr/main.do">
                    <img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home">
                </a>
                <span>Archives</span>
                <span>Publication</span>
            </div>

        </div>

        <div class="scroll-down">SCROLL DOWN</div>

    </section>


    <!-- ================= CONTENT AREA ================= -->
    <div class="sub-inner">

        <div class="top-notice section-rise">
            <div class="top-notice-left">
                <img src="/hoeamsaji/assets/site/hoeamsaji/img/book_icon01.svg" alt="도서 아이콘">
            </div>

            <div>
                <p>
                    • <strong>Where to Purchase</strong> : Museum Gift Shop or Online (Government Publications Sales Center)<br>
                </p>
                <a href="#" target="_blank">Government Publications Sales Center ↗</a>
            </div>
        </div>

        <c:forEach var="pub" items="${resultList}">
            <section class="publication-block section-rise">
                <div class="visual-side">
                    <img src="${contextRoot}/thumbnail/${pub.thumbSaveFileName}"  alt="${pub.pubTitle}">
                </div>

                <div class="details-side">

                    <div class="unq-title-area">
                        <div class="bg-number">${pub.pubVolume}</div>
                        <h3 class="main-heading">${pub.pubTitle}</h3>
                        <h3>${pub.pubSubTitle}</h3>
                        <div class="sub-meta-line">
                            <div class="meta-tag">Publication Year <span>${pub.pubYear}</span></div>
                            <div class="meta-tag">Type <span>${pub.pubType}</span></div>
                            <div class="meta-tag">
                            	 <c:if test="${not empty pub.pubPdfFileId}">
							     File
								    <span>
							            <a href="${contextRoot}/usr/publication/viewPdf.do?fileId=${pub.pubPdfFileId}" target="_blank">
										    ${pub.pdfOrgFileName}
										</a>
								    </span>
							     </c:if>
							</div>
                        </div>
                    </div>

                    <div class="contents-frame">
                        <span class="label-track">Contents</span>
                        <ul class="index-grid">
                            <c:forEach var="content" items="${pub.contentList}">
                                <li class="index-cell">
                                    <span class="roman-num">
                                        ${content.contentNo}
                                    </span>
                                    <div class="data-flex">
                                        <span class="topic">
                                            ${content.contentTitle}
                                        </span>
                                        <span class="writer">
                                            ${content.authorName}
                                        </span>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </section>
        </c:forEach>
    </div>
</main>

<c:import url="/usr/layout/footer.do" />