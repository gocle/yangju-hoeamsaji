<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<script type="text/javascript">
//파일 다운로드
function fn_egov_downFile(atchFileIdx){
	window.open("${contextRoot}/board/FileDown.do?atchFileIdx="+atchFileIdx);
}

//이전 글
function fn_prev( preNo , menuId ){
	 window.location.href='/hoeamsaji/usr/bbs/${bcId}/detail.do?baId='+preNo+'&menuId='+menuId;	 
}

//다음 글
function fn_next( nextNo , menuId ) {
	 window.location.href='/hoeamsaji/usr/bbs/${bcId}/detail.do?baId='+nextNo+'&menuId='+menuId;
}
</script>


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
			
			<section class="board-detail-section section-rise">

                <div class="sub-inner">
                    <article class="board-detail">

                        <div class="board-detail__head">
                            <h3>${result.baTitle}</h3>

                            <div class="board-detail__meta">
                                <span>Date <em>${result.baRegdate}</em></span>
                                <span>Views <em>${result.baHit}</em></span>
                            </div>
                        </div>
						
						<c:if test="${not empty fileList }">
	                        <div class="board-detail__file">
	                            <strong>Attachments</strong>
								
	                            <c:forEach var="fileVO" items="${fileList}" varStatus="status">
	                            	<a href="javascript:fn_egov_downFile('${fileVO.atchFileIdx}');" title="파일 다운로드" class="file_down">
		                                <img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_attach.svg" alt="">
		                                ${fileVO.orgFileName}
		                            </a>
	                            </c:forEach>
	                        </div>
						</c:if>
                        <div class="board-detail__content">
                            ${result.baContentHtml}
                        </div>

                    </article>

                    
                    <div class="board-detail-btn">
                        <a href="/hoeamsaji/usr/bbs/${bcId}/list.do?menuId=${menuId }">List</a>
                    </div>

                    <div class="board-detail-nav">
						<c:if test="${not empty prevNext.preNo and prevNext.preNo ne 0 and not empty prevNext.preTitle}">
	                        <a href="javascript:fn_prev('${prevNext.preNo}', '${menuId}', '${result.baNotice}');"" class="prev">
	                            <strong>Previous</strong>
	                            <span>${prevNext.preTitle}</span>
	                        </a>
						</c:if>
						<c:if test="${not empty prevNext.nextNo and prevNext.nextNo ne 0 and not empty prevNext.nextTitle}">
	                        <a href="javascript:fn_next('${prevNext.nextNo}', '${menuId}', '${result.baNotice}');" class="next">
	                            <strong>Next</strong>
	                            <span>${prevNext.nextTitle}</span>
	                        </a>
						</c:if>
                    </div>

                </div>

            </section>
</main>
			
<c:import url="/usr/layout/footer.do" />