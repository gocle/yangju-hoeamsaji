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
			
			<section class="section-rise">
                <div class="sub-inner">
                    <div class="board-top">

                        <div class="board-count">
                            Total <strong>${totalCount }</strong>
                        </div>

                        <form class="board-search" name="bbsNttSearchForm" id="bbsNttSearch" action="${contextRoot}/usr/bbs/${bcId }/list.do" method="get">
							<input type="hidden" name="menuId" id="menuId" value="${menuId }"/>
							<input type="hidden" name="pageIndex" id="pageIndex" value="${pageIndex }"/>
							<input type="hidden" name="bcId" id="bcId" value="${bcId }"/>
			
                            <select name="searchCondition" id="searchCondition">
                                <option value="BA_TITLE">Title</option>
                                <option value="BA_CONTENT_HTML">Content</option>
                            </select>

                            <input type="text" placeholder="Search" name="searchKeyword" id="searchKeyword" class="input_text" value="${boardArticleVO.searchKeyword }" />

                            <button type="submit">
                                Search
                            </button>

                        </form>

                    </div>

                    <div class="board-head">
                        <span class="num">No.</span>
                        <span class="title">Title</span>
                        <span class="file">File</span>
                        <span class="view">Views</span>
                        <span class="date">Date</span>
                    </div>

                    <div class="board-list">
						<c:forEach var="topNoticeList" items="${topNoticeList}" varStatus="status">
	                        <a href="/hoeamsaji/usr/bbs/${topNoticeList.bcId}/detail.do?menuId=${menuId}&baId=${topNoticeList.baId}&baNotice=1" class="board-item">
	                            <span class="num">TOP</span>
	
	                            <div class="title">
	                                ${topNoticeList.baTitle}
	                            </div>
								
	                            <span class="file">
	                            	<c:if test="${topNoticeList.fileCnt >= 1}">
	                                	<img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_attach.svg" alt="Attachment">
	                                </c:if>
	                            </span>
	
	                            <span class="view">${topNoticeList.baHit}</span>
	
	                            <span class="date">${topNoticeList.baRegdate}</span>
	                        </a>
                        </c:forEach>
                        
                        <c:forEach var="articleList" items="${articleList}" varStatus="status">
	                        <a href="/hoeamsaji/usr/bbs/${bcId}/detail.do?menuId=${menuId}&baId=${articleList.baId}&baNotice=0" class="board-item">
	                            <span class="num"><c:out value="${totalCount - ((pageIndex-1) * pageSize + status.index)}"/></span>
	
	                            <div class="title">
	                                ${articleList.baTitle}
	                            </div>
								
	                            <span class="file">
	                            	<c:if test="${articleList.fileCnt >= 1}">
	                                	<img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_attach.svg" alt="Attachment">
	                                </c:if>
	                            </span>
	
	                            <span class="view">${articleList.baHit}</span>
	
	                            <span class="date">${articleList.baRegdate}</span>
	                        </a>
                        </c:forEach>
						<c:if test="${fn:length(articleList) == 0 && fn:length(topNoticeList) == 0}">
							 <a href="#" class="board-item" style="justify-content: center;">There are no posts.</a>
						</c:if>
                    </div>
					
                    <ui:pagination paginationInfo="${paginationInfo}" type="user" jsFunction="fn_search" />
                </div>
            </section>
</main>
			
<c:import url="/usr/layout/footer.do" />