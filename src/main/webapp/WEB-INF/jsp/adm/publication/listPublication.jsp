<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ include file="/WEB-INF/jsp/adm/include/common.jsp" %>

<c:import url="/adm/menu/leftMenu.do" />

<script type="text/javascript">

var pageSize = '${publicationVO.pageSize}';
var totalCount = '${paginationInfo.totalRecordCount}';
var pageIndex = '${publicationVO.pageIndex}';

$(document).ready(function() {

	if (pageSize == '') pageSize = 10;
	if (totalCount == '') totalCount = 0;
	if (pageIndex == '') pageIndex = 1;

	initHtml();

	$('#searchKeyword').on('keypress', function(e){
		if (e.keyCode == 13) {
			fn_search(1);
		}
	});
});

function initHtml() {
	com.pageNavi("pageNavi", totalCount, pageSize, pageIndex);

	$("#pageSize").val(pageSize);
	$("#pageIndex").val(pageIndex);
	$("#totalRow").text(totalCount);
}

function fn_search(pageIndex) {
	$("#pageIndex").val(pageIndex);

	$("#form").attr("action", "${contextRoot}/adm/publication/listPublication.do");
	$("#form").submit();
}

function fn_detail(pubId) {
	$("#pubId").val(pubId);

	$("#form").attr("action", "${contextRoot}/adm/publication/updateForm.do");
	$("#form").submit();
}

function fn_insertForm() {
	location.href = "${contextRoot}/adm/publication/insertForm.do";
}

</script>

<section>

<form id="form" name="form" method="get">

	<input type="hidden" id="pageSize" name="pageSize" value="${publicationVO.pageSize}" />
	<input type="hidden" id="pageIndex" name="pageIndex" value="${publicationVO.pageIndex}" />
	<input type="hidden" id="menuId" name="menuId" value="${menuId}" />
	<input type="hidden" id="pubId" name="pubId" value="" />

	<ul class="search-box">
		<li>
			<label>검색조건</label>
			<select id="searchType" name="searchType">
				<option value="">전체</option>
				<option value="TITLE" ${publicationVO.searchType == 'TITLE' ? 'selected' : ''}>제목</option>
				<option value="YEAR" ${publicationVO.searchType == 'YEAR' ? 'selected' : ''}>연도</option>
			</select>

			<input type="text"
				   id="searchKeyword"
				   name="searchKeyword"
				   value="${publicationVO.searchKeyword}"
				   placeholder="검색어 입력"
				   style="width:300px;" />
		</li>

		<li class="search-btn">
			<button type="button" onclick="fn_search(1);">
				<i class="fa fa-search"></i> 검색
			</button>
		</li>
	</ul>

</form>

<table class="list-1">
	<thead>
	<tr>
		<th style="width:8%">순번</th>
		<th>제목</th>
		<th style="width:15%">연도</th>
		<th style="width:15%">구분</th>
		<th style="width:15%">등록자</th>
	</tr>
	</thead>

	<tbody>

	<c:forEach var="item" items="${publicationList}" varStatus="status">
		<tr>
			<td>
				<c:out value="${paginationInfo.totalRecordCount - ((publicationVO.pageIndex - 1) * publicationVO.recordCountPerPage + status.index)}"/>
			</td>

			<td class="text-center">
				<a href="javascript:fn_detail('${item.pubId}');">
					${item.pubTitle}
				</a>
			</td>

			<td class="text-center">
				${item.pubYear}
			</td>

			<td class="text-center">
				${item.pubType}
			</td>

			<td class="text-center">
				${item.regId}
			</td>
		</tr>
	</c:forEach>

	<c:if test="${fn:length(publicationList) == 0}">
		<tr>
			<td colspan="5" class="no-data">
				<i class="fa fa-search"></i> 데이터가 없습니다.
			</td>
		</tr>
	</c:if>

	</tbody>
</table>

<div class="text-center">

	<ul class="pagination">
		<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_search" />
	</ul>

	<div class="text-right btn-area">
		<a href="javascript:fn_insertForm();">등록</a>
	</div>

</div>

</section>