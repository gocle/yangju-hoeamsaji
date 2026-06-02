<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
function openLoginPopup() {
	var currentUrl = window.location.pathname + window.location.search;

    // 사용자 클릭 이벤트와 연결된 팝업 먼저 열기
    var popup = window.open('', 'popupChk', 'width=480,height=812,top=100,fullscreen=no,menubar=no,status=no,titlebar=yes,location=no,toolbar=no,scrollbars=no');

    if (!popup) {
        alert('팝업이 차단되었습니다. 브라우저 설정을 확인해주세요.');
        return;
    }
    
	$.ajax({
        url: '${contextRoot}/usr/login/requestAuth.do',
        method: 'GET',
        data: { redirectUrl: currentUrl },
        dataType: 'json',
        success: function(data) {
            if (!data || !data.requestNo || !data.authUrl) {
                alert('인증 요청 실패');
                return;
            }

            var form = $('<form/>', {
                method: 'post',
                action: data.authUrl,
                target: 'popupChk'
            }).appendTo('body');

            $('<input/>', { type: 'hidden', name: 'requestNo', value: data.requestNo }).appendTo(form);

            window.open('', 'popupChk', 'width=480, height=812, top=100, fullscreen=no, menubar=no, status=no,  titlebar=yes,location=no,toolbar=no,  scrollbar=no');
            form.submit();
            form.remove();
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert('서버 오류: ' + textStatus);
        }
    })
}
</script>

		<header class="site-header">
        <div class="header-inner">
            <h1 class="logo">
                <a href="/usr/main.do">

                    <img src="/assets/site/hoeamsaji/img/common/ico_logo.png"
                        alt="Hoeamsaji Temple Site Logo"
                        class="logo-white">

                    <img src="/assets/site/hoeamsaji/img/common/ico_logo_b.png"
                        alt=""
                        class="logo-black">

                </a>
            </h1>
			
			<c:set var="upperMenuNo" value="TOP"/>
			<c:set var="menuLevel" value="1"/>
			<c:set var="key1" value="${upperMenuNo}_${menuLevel}"/>	
			
            <nav class="gnb">
            <ul>
                <!-- <li>
                <a href="/usr/main.do">Hoeamsaji</a>
                <ul>
                    <li><a href="sub1-1.html">Overview</a></li>
                    <li><a href="sub1-1.html">Current Status of National Heritage</a></li>
                    <li><a href="sub1-2.html">Excavation and restoration</a></li>
                    <li><a href="sub1-3.html">Yangju Hoeamsa Temple Site Layout</a></li>
                </ul>
                </li>
                <li>
                <a href="#">World Heritage</a>
                <ul>
                    <li><a href="sub2-1.html">UNESCO and World Heritage</a></li>
                    <li><a href="sub2-2.html">World heritage system</a></li>
                    <li><a href="sub2-3.html">Korea's World Cultural Heritage</a></li>
                    <li><a href="sub2-4.html">Promotion of World Cultural Heritage listing</a></li>
                </ul>
                </li>
                <li>
                <a href="#">Programs</a>
                <ul>
                    <li><a href="#">Hoeamsaji Royal Festival</a></li>
                    <li><a href="#">World heritage education</a></li>
                </ul>
                </li>
                <li>
                <a href="#">Announcements</a>
                <ul>
                    <li><a href="#">Notices</a></li>
                </ul>
                </li>
                <li>
                <a href="#">Archives</a>
                <ul>
                    <li><a href="#">Publication</a></li>
                    <li><a href="#">Photos and video</a></li>
                </ul>
                </li> -->
                
                <c:forEach var="m1" items="${menuList[key1]}" varStatus="st1">
    <%-- 1depth URL 정규화 --%>
    <c:set var="raw1" value="${m1.menuUrl}" />
    <c:set var="path1" value="${fn:startsWith(raw1, ctx) ? fn:substring(raw1, fn:length(ctx), fn:length(raw1)) : raw1}" />
    <c:if test="${not fn:startsWith(path1,'/')}">
        <c:set var="path1" value='/${path1}'/>
    </c:if>
    
    <c:set var="key2" value="${m1.menuId}_${m1.menuDepth + 1}" />
    <c:set var="separator1" value="${fn:endsWith(path1, '.do') ? '?' : '&'}" />
    
    <li>
        <a href="<c:url value='${path1}'/>${separator1}menuId=${m1.menuId}">${m1.menuTitle}</a>
        
        <%-- 2뎁스가 있으면 샘플의 <ul> 구조대로 출력 --%>
        <c:if test="${not empty menuList[key2]}">
            <ul>
                <c:forEach var="m2" items="${menuList[key2]}">
                    <c:set var="key3" value="${m2.menuId}_${m2.menuDepth + 1}" />

                    <%-- 2depth URL 정규화 --%>
                    <c:set var="raw2" value="${m2.menuUrl}" />
                    <c:set var="path2" value="${fn:startsWith(raw2, ctx) ? fn:substring(raw2, fn:length(ctx), fn:length(raw2)) : raw2}" />
                    <c:if test="${not fn:startsWith(path2,'/')}">
                      <c:set var="path2" value='/${path2}'/>
                    </c:if>
                    <c:set var="separator2" value="${fn:endsWith(path2, '.do') ? '?' : '&'}" />
                    
                    <li>
                        <a href="<c:url value='${path2}'/>${separator2}menuId=${m2.menuId}">${m2.menuTitle}</a>

                        <%-- 만약 샘플에 없던 3뎁스가 데이터로 들어온다면 하위에 ul로 출력 --%>
                        <c:if test="${not empty menuList[key3]}">
                            <ul>
                                <c:forEach var="m3" items="${menuList[key3]}">
                                    <%-- 3depth URL 정규화 --%>
                                    <c:set var="raw3" value="${m3.menuUrl}" />
                                    <c:set var="path3" value="${fn:startsWith(raw3, ctx) ? fn:substring(raw3, fn:length(ctx), fn:length(raw3)) : raw3}" />
                                    <c:if test="${not fn:startsWith(path3,'/')}">
                                        <c:set var="path3" value='/${path3}'/>
                                    </c:if>
                                    <c:set var="separator3" value="${fn:endsWith(path3, '.do') ? '?' : '&'}" />
                                    <li>
                                        <a href="<c:url value='${path3}'/>${separator3}menuId=${m3.menuId}">${m3.menuTitle}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
    </li>
</c:forEach>
            </ul>
            </nav>

            <div class="util-box">
                <div class="lang-box">
                    <button type="button" class="lang-btn">
                    <span class="lang-ico">
                        <img src="/assets/site/hoeamsaji/img/common/ico_language.png" alt="" class="lang-ico-white">
                        <img src="/assets/site/hoeamsaji/img/common/ico_language_b.png" alt="" class="lang-ico-black">
                    </span>

                    <span>English</span>

                    <span class="lang-arrow-wrap">
                        <img src="/assets/site/hoeamsaji/img/common/ico_down.svg" alt="" class="lang-arrow-white">
                        <img src="/assets/site/hoeamsaji/img/common/ico_down_b.svg" alt="" class="lang-arrow-black">
                    </span>
                    
                    </button>

                    <ul class="lang-list">
                        <li><a href="#">KOR</a></li>
                        <li><a href="#">ENG</a></li>
                    </ul>
                </div>

                <button type="button" class="mobile-menu-btn">
                <span></span>
                <span></span>
                <span></span>
                </button>
            </div>

            
        </div>

        <div class="gnb-bg"></div>
        </header>
        
        <div class="mobile-gnb">
            <div class="mobile-gnb-head">
                <div class="m-inner">       
                    <div class="lang-box">
                        <button type="button" class="lang-btn">
                        <span class="lang-ico">
                            <img src="/assets/site/hoeamsaji/img/common/ico_language.png" alt="" >
                        </span>

                        <span>English</span>

                        <span class="lang-arrow-wrap">
                            <img src="/assets/site/hoeamsaji/img/common/ico_down.svg" alt="">
                        </span>
                        </button>
                        <ul class="lang-list">
                            <li><a href="#">KOR</a></li>
                            <li><a href="#">ENG</a></li>
                        </ul>
                    </div>

                    <button type="button" class="mobile-close">닫기</button>
                </div>
                <img src="/assets/site/hoeamsaji/img/common/ico_logo_m.png" alt="" >

            </div>

            <ul class="mobile-menu">
                <li>
                <button type="button">Hoeamsaji</button>
                <ul>
                    <li><a href="#">Overview</a></li>
                    <li><a href="#">Current Status of National Heritage</a></li>
                    <li><a href="#">Excavation and restoration</a></li>
                    <li><a href="#">Yangju Hoeamsa Temple Site Layout</a></li>
                </ul>
                </li>

                <li>
                <button type="button">World Heritage</button>
                <ul>
                    <li><a href="#">UNESCO and World Heritage</a></li>
                    <li><a href="#">World heritage system</a></li>
                    <li><a href="#">Korea's World Cultural Heritage</a></li>
                    <li><a href="#">Promotion of World Cultural Heritage listing</a></li>
                </ul>
                </li>

                <li>
                <button type="button">Programs</button>
                <ul>
                    <li><a href="#">Hoeamsaji Royal Festival</a></li>
                    <li><a href="#">World heritage education</a></li>
                </ul>
                </li>

                <li>
                <button type="button">Announcements</button>
                <ul>
                    <li><a href="#">Notices</a></li>
                </ul>
                </li>

                <li>
                <button type="button">Archives</button>
                <ul>
                    <li><a href="#">Publication</a></li>
                    <li><a href="#">Photos and video</a></li>
                </ul>
                </li>
            </ul>
        </div>

        <div class="mobile-dim"></div>