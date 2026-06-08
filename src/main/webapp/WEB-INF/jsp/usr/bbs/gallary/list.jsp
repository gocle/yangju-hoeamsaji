<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_03"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                    	<c:choose>
                    		<c:when test="${bcId eq 'festival' }">
                    			<span>Hoeamsaji Royal</span>
                        		<span>Festival</span>
                    		</c:when>
                    		<c:when test="${bcId eq 'education' }">
                    			<span>World heritage</span>
                        		<span>Education</span>
                    		</c:when>
                    		<c:when test="${bcId eq 'photo' }">
                    			<span>Photos & Videos</span>
                        		<span>Archive</span>
                    		</c:when>
                    		<c:otherwise></c:otherwise>
                    	</c:choose>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <c:choose>
                    		<c:when test="${bcId eq 'festival' }">
                    			<span>Festivals, Education, and Utilization</span>
                        		<span>Hoeamsaji Royal Festival</span>
                    		</c:when>
                    		<c:when test="${bcId eq 'education' }">
                    			<span>World heritage</span>
                        		<span>Education</span>
                    		</c:when>
                    		<c:when test="${bcId eq 'photo' }">
                    			<span>Archives</span>
                        		<span>Photos and video</span>
                    		</c:when>
                    		<c:otherwise></c:otherwise>
                    	</c:choose>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>
			
			<section class="gallery-board-section section-rise">
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
                            <button type="submit">Search</button>
                        </form>
                    </div>

                    <div class="gallery-board-list">
						
						<c:forEach var="articleList" items="${articleList}" varStatus="status">
							<a href="/hoeamsaji/usr/bbs/${bcId}/detail.do?menuId=${menuId }&baId=${articleList.baId}" class="gallery-board-item">
	                            <div class="thumb">
	                                <img src="${contextRoot}/thumbnail/${articleList.baThumbpath}" alt="">
	                            </div>
	
	                            <div class="info">
	                                <h3>${articleList.baTitle}</h3>
	
	                                <div class="meta">
	                                    <span>${articleList.baRegdate}</span>
	                                    <span>Views ${articleList.baHit}</span>
	                                </div>
	                            </div>
                        </a>
						
						</c:forEach>
						
						<c:if test="${fn:length(articleList) == 0 && fn:length(topNoticeList) == 0}">
							 <span style="grid-column: 1 / -1;text-align:center;">There are no posts.</span>
						</c:if>
                    </div>

                    <ui:pagination paginationInfo="${paginationInfo}" type="user" jsFunction="fn_search" />

                </div>
            </section>
</main>
			
<c:import url="/usr/layout/footer.do" />