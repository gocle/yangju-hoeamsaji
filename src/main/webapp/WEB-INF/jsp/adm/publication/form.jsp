<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/jsp/adm/include/common.jsp"%>

<c:import url="/adm/menu/leftMenu.do" />

<script type="text/javascript">

function validation() {

	if ($("#pubTitle").val().trim() == "") {
		alert("발간물 제목을 입력하세요.");
		$("#pubTitle").focus();
		return false;
	}

	if ($("#pubYear").val().trim() == "") {
		alert("발행연도를 입력하세요.");
		$("#pubYear").focus();
		return false;
	}

	return true;
}
function fn_save() {

	if (!validation()) {
		return;
	}

	$("#form").attr("action", "${contextRoot}/adm/publication/insert.do");
	$("#form").submit();
}

var romanList = [
    "I", "II", "III", "IV", "V",
    "VI", "VII", "VIII", "IX", "X",
    "XI", "XII", "XIII", "XIV", "XV",
    "XVI", "XVII", "XVIII", "XIX", "XX"
];

function addContentRow() {

    var idx = $("#contentBody tr").length;

    var optionHtml = "<option value=''>선택</option>";

    for (var i = 0; i < romanList.length; i++) {
        optionHtml += "<option value='" + romanList[i] + "'>" + romanList[i] + "</option>";
    }

    var html = "";

    html += "<tr>";
    html += "<td><input type='text' name='contentList[" + idx + "].contentOrder' style='width:80px'></td>";

    html += "<td>";
    html += "<select name='contentList[" + idx + "].contentNo' style='width:100px;'>";
    html += optionHtml;
    html += "</select>";
    html += "</td>";

    html += "<td><input type='text' name='contentList[" + idx + "].contentTitle' style='width:100%'></td>";
    html += "<td><input type='text' name='contentList[" + idx + "].authorName' style='width:100%'></td>";
    html += "<td><button type='button' onclick='removeRow(this)'>삭제</button></td>";
    html += "</tr>";

    $("#contentBody").append(html);
}

function removeRow(obj) {
	$(obj).closest("tr").remove();
}

function fn_update() {

	if (!validation()) {
		return;
	}

	$("#form").attr("action", "${contextRoot}/adm/publication/update.do");
	$("#form").submit();
}

function fn_delete() {

	if (!confirm("삭제하시겠습니까?")) {
		return;
	}

	$("#form").attr("action", "${contextRoot}/adm/publication/delete.do");
	$("#form").submit();
}

function fn_egov_deleteFile(atchFileIdx,returnUrl){
	$("#atchFileIdx").val(atchFileIdx);
	$("#returnUrl").val(returnUrl);
	
	$("#fileForm").attr("action", "${contextRoot}/board/deleteFile.do");
	$("#fileForm").submit();
}
</script>

<section>

<form id="fileForm" method="post">
	<input type="hidden" id="atchFileIdx" name="atchFileIdx">
	<input type="hidden" id="returnUrl" name="returnUrl">
	<input type="hidden" name="menuId" id="menuId" value="${menuId}" />
</form>

<form id="form" name="form" method="post" enctype="multipart/form-data">
	<input type="hidden" id="pubId" name="pubId" value="${publicationResult.pubId}">
	<input type="hidden" id="menuId" name="menuId" value="${menuId}" />
<table class="detail">

	<colgroup>
		<col width="15%">
		<col width="35%">
		<col width="15%">
		<col width="35%">
	</colgroup>

	<tbody>

	<tr>
		<th>발간물 제목</th>
		<td colspan="3">
			<input type="text" id="pubTitle" name="pubTitle" value="${publicationResult.pubTitle}" style="width:100%;">
		</td>
	</tr>

	<tr>
		<th>발간물 부제</th>
		<td colspan="3">
			<input type="text" id="pubSubTitle" name="pubSubTitle" value="${publicationResult.pubSubTitle}" style="width:100%;">
		</td>
	</tr>

	<tr>
		<th>권수</th>
		<td>
			<input type="text" id="pubVolume" name="pubVolume" value="${publicationResult.pubVolume}" style="width:100%;">
		</td>

		<th>발행연도</th>
		<td>
			<input type="text" id="pubYear" name="pubYear" value="${publicationResult.pubYear}" style="width:100%;">
		</td>
	</tr>

	<tr>
		<th>발간물 유형</th>
		<td>
			<input type="text" id="pubType" name="pubType" value="${publicationResult.pubType}" style="width:100%;">
		</td>

		<th>정렬순서</th>
		<td>
			<input type="text" id="displayOrder" name="displayOrder" value="${publicationResult.displayOrder}" style="width:100%;">
		</td>
	</tr>

	<tr>
		<th>구매 링크</th>
		<td colspan="3">
			<input type="text" id="buyUrl" name="buyUrl" value="${publicationResult.buyUrl}" style="width:100%;">
		</td>
	</tr>

	<tr>
		<th>사용 여부</th>
		<td colspan="3">
			<label>
				사용 <input type="radio" name="useYn" value="Y" <c:if test="${publicationResult.useYn eq 'Y' || publicationResult eq null}">checked="checked"</c:if>>
			</label>
			&nbsp;&nbsp;
			<label>
				미사용 <input type="radio" name="useYn" value="N" <c:if test="${publicationResult.useYn eq 'N'}">checked="checked"</c:if>>
			</label>
		</td>
	</tr>

	<tr>
	    <th>표지 이미지</th>
	    <td colspan="3" class="file">
	
	        <c:choose>
	
	         <c:when test="${not empty thumbFileList}">
			    <div style="margin-bottom:10px;">
			        <img
			            src="${contextRoot}/thumbnail/${thumbFileList[0].saveFileName}"
			            style="max-width:180px;border:1px solid #ddd;padding:5px;">
			    </div>
			    <a href="javascript:fn_egov_downFile('${thumbFileList[0].atchFileIdx}');">
			        ${thumbFileList[0].orgFileName}
			    </a>
			    <button type="button" onclick="fn_egov_deleteFile('${thumbFileList[0].atchFileIdx}','/adm/publication/updateForm.do?pubId=${publicationResult.pubId}&menuId=${menuId}');">
			        삭제
			    </button>
			
			</c:when>
	
	            <c:otherwise>
	
	                <input type="file" name="thumbFile">
	
	                <p style="color:red;">
	                    ※ 표지 이미지 업로드
	                </p>
	
	            </c:otherwise>
	
	        </c:choose>
	
	    </td>
	</tr>
	
	<tr>
	    <th>PDF 파일</th>
	    <td colspan="3" class="file">
	
	        <c:choose>
	            <c:when test="${not empty pdfFileList}">
	                <a href="javascript:fn_egov_downFile('${pdfFileList[0].atchFileIdx}');">
	                    ${pdfFileList[0].orgFileName}
	                </a>
	
	                <button type="button" onclick="fn_egov_deleteFile('${pdfFileList[0].atchFileIdx}','/adm/publication/updateForm.do?pubId=${publicationResult.pubId}&menuId=${menuId}');">
	                    삭제
	                </button>
	            </c:when>
	
	            <c:otherwise>
	                <input type="file" name="pdfFile">
	
	                <p style="color:red;">
	                    ※ 발간물 PDF 업로드
	                </p>
	            </c:otherwise>
	        </c:choose>
	
	    </td>
	</tr>
	</tbody>
</table>

<br>

<h3>목차 관리</h3>

<div class="text-right btn-area" style="margin-bottom:10px;">
	<button type="button" onclick="addContentRow();">
		목차 추가
	</button>
</div>

<table class="list-1">

	<thead>
	<tr>
		<th width="10%">순서</th>
		<th width="10%">번호</th>
		<th>목차 제목</th>
		<th width="20%">저자명</th>
		<th width="10%">관리</th>
	</tr>
	</thead>

	<tbody id="contentBody">

	<c:choose>
		<c:when test="${not empty publicationResult.contentList}">
			<c:forEach var="content" items="${publicationResult.contentList}" varStatus="status">
				<tr>
					<td><input type="text" name="contentList[${status.index}].contentOrder" value="${content.contentOrder}" style="width:80px;"></td>
					<td>
						<select name="contentList[${status.index}].contentNo" style="width:100px;">
							<option value="">선택</option>
							<c:forEach var="roman" items="${fn:split('I,II,III,IV,V,VI,VII,VIII,IX,X,XI,XII,XIII,XIV,XV,XVI,XVII,XVIII,XIX,XX', ',')}">
								<option value="${roman}"
									<c:if test="${content.contentNo eq roman}">
										selected="selected"
									</c:if>>
									${roman}
								</option>
							</c:forEach>
						</select>
					</td>
					<td><input type="text" name="contentList[${status.index}].contentTitle" value="${content.contentTitle}" style="width:100%;"></td>
					<td><input type="text" name="contentList[${status.index}].authorName" value="${content.authorName}" style="width:100%;"></td>
					<td><button type="button" onclick="removeRow(this)">삭제</button></td>
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td><input type="text" name="contentList[0].contentOrder" style="width:80px;"></td>
				<td>
					<select name="contentList[0].contentNo" style="width:100px;">
						<option value="">선택</option>
						<option value="I">I</option>
						<option value="II">II</option>
						<option value="III">III</option>
						<option value="IV">IV</option>
						<option value="V">V</option>
						<option value="VI">VI</option>
						<option value="VII">VII</option>
						<option value="VIII">VIII</option>
						<option value="IX">IX</option>
						<option value="X">X</option>
						<option value="XI">XI</option>
						<option value="XII">XII</option>
						<option value="XIII">XIII</option>
						<option value="XIV">XIV</option>
						<option value="XV">XV</option>
						<option value="XVI">XVI</option>
						<option value="XVII">XVII</option>
						<option value="XVIII">XVIII</option>
						<option value="XIX">XIX</option>
						<option value="XX">XX</option>
					</select>
				</td>
				<td><input type="text" name="contentList[0].contentTitle" style="width:100%;"></td>
				<td><input type="text" name="contentList[0].authorName" style="width:100%;"></td>
				<td><button type="button" onclick="removeRow(this)">삭제</button></td>
			</tr>
		</c:otherwise>
	
	</c:choose>
	
	</tbody>

</table>

</form>

</section>

<div class="text-right btn-area">
	<c:choose>
		<c:when test="${publicationResult eq null}">
			<button type="button" onclick="fn_save();" class="point">등록</button>
		</c:when>
		<c:otherwise>
			<button type="button" onclick="fn_update();" class="point">수정</button>
			<button type="button" onclick="fn_delete();" class="point">삭제</button>
		</c:otherwise>
	</c:choose>
	<a href="${contextRoot}/adm/publication/listPublication.do?menuId=${menuId}">목록</a>
</div>
