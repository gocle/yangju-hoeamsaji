<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <!-- IE 호환 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- 모바일 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 기본 SEO -->
    <title>Hoeamsaji Museum</title>
    <meta name="description" content="Official website of Hoeamsaji Museum in Yangju, Korea.">
    <meta name="keywords" content="Hoeamsaji, Yangju Museum, Korean Buddhist Heritage">

    <!-- OG -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="Hoeamsaji Museum">
    <meta property="og:description" content="Discover the history and heritage of Hoeamsaji Temple Site.">

    <!-- favicon -->
    <link rel="icon" href="img/common/favicon.ico">

    <!-- css -->
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/common.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/contents.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/responsive.css">
    <link rel="stylesheet" href="/hoeamsaji/assets/site/hoeamsaji/css/slick.css">

    <!-- js -->
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/jquery-3.7.1.min.js"></script>
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/slick.min.js"></script>
    <script src="/hoeamsaji/assets/site/hoeamsaji/js/ui-script.js"></script>
</head>

<body>
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
	
	

