<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=2.0, minimum-scale=1.0, user-scalable=yes" />
	<meta name="keywords" content="Hoeamsaji Temple Site in Yangju" />
	<meta name="description" content="Welcome to the official website of the Hoeamsaji Temple Site in Yangju" />
	<link rel="stylesheet" type="text/css" href="/hoeamsaji/assets/site/hoeamsaji/css/font.css" />
	<link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/sub.css">
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/jquery-1.12.4.min.js"></script>
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/plugins.js"></script>
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/common.js"></script>
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/main.js"></script>
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/sub.js"></script>
	<script src="/hoeamsaji/assets/site/hoeamsaji/js/board.js"></script>
	<script src="${contextRoot}/dmaps/map_js_init/postcode.v2.js"></script>
	<title>Hoeamsaji Temple Site in Yangju</title>
</head>

<body id="yjcareer">
	<script type="text/JavaScript">
		$(document).ready(function () {

			  var depth1Text = $('.breadcrumbs_item')
			    .eq(0)
			    .find('.breadcrumbs_select')
			    .first()
			    .text()
			    .trim();

			  if (depth1Text) {
			    $('.sub_title .first_title').text(depth1Text);
			  }

			  var depth2Text =
			    $('.breadcrumbs_panel a.active').first().text().trim() ||
			    $('.breadcrumbs_item')
			      .eq(1)
			      .find('.breadcrumbs_select')
			      .first()
			      .text()
			      .trim() ||

			    depth1Text;

			  $('.sub_title h2').text(depth2Text);

			});

	</script>
	
	

