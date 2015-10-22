<%@ Page Language="C#" CODEPAGE="65001" %>

<!doctype html>
<!--[if lt IE 7 ]> <html class="ie ie6 ie-lt10 ie-lt9 ie-lt8 ie-lt7 no-js" lang="zh"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 ie-lt10 ie-lt9 ie-lt8 no-js" lang="zh"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 ie-lt10 ie-lt9 no-js" lang="zh"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 ie-lt10 no-js" lang="zh"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="zh"><!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>康和期貨經理事業</title>
<!-- <meta name="title" content="" /> -->
<meta name="keywords" content="康和期貨經理事業"><!-- 關鍵字 -->
<meta name="description" content="康和期貨經理事業" /><!-- 網站描述 -->
<meta name="Copyright" content="" /><!-- 版權宣告 -->
<meta name="robots" content="index,follow">

<meta name="viewport" content="width=device-width, user-scalable=yes">
<!-- Don't forget to set your site up: http://google.com/webmasters -->
<meta name="google-site-verification" content="" />

<link rel="shortcut icon" href="favicon.ico" />

<link rel="stylesheet" href="dist/css/reset.css" />
<link rel="stylesheet" href="plugin/bootstrap-material-design/css/ripples.css">
<link rel="stylesheet" href="plugin/bootstrap-material-design/css/material.css">
<link rel="stylesheet" href="dist/css/font-awesome.css">

<link rel="stylesheet" href="plugin/FlexSlider/flexslider.css" />

<!-- <link rel="stylesheet" href="plugin/fancybox/jquery.fancybox.css" /> -->
<link rel="stylesheet" href="plugin/FlexSlider/flexslider.css" />
<!-- <link rel="stylesheet" href="css/effect2.css" /> -->

<link rel="stylesheet" href="dist/css/animate.css" />
<link rel="stylesheet" href="dist/css/style.css" />

<script src="dist/js/libs/modernizr-2.7.1.dev.js"></script>
<script src="dist/js/ModernizrAu.js"></script>
<script src="plugin/AnimatedSVGIcons/js/snap.svg-min.js"></script>

<!-- Grab Google CDN's jQuery. fall back to local if necessary -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="dist/js/libs/jquery-1.11.1.js"><\/script>')</script>

<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body class="index_page">
<ul>
<% for (int i = 0; i < 10; i++) { %>
<li><% =i %></li>
<% } %>
</ul> 


<div id="top"></div>
<!-- #Include virtual=".\dist\inc\header.html" -->




<main class="">

 @myMessage<br> @myMessage<br> @myMessage<br>
test<br>test<br>test<br>
test<br>test<br>test<br>
test<br>test<br>test<br>
test<br>test<br>test<br>
test<br>test<br>test<br>
</main>

<footer id="loadFt"></footer>



<script src="dist/js/libs/jquery.scrollTo.min.js"></script>
<script src="dist/js/libs/jquery.localScroll.min.js"></script>
<script src="dist/js/libs/jquery.preload.min.js"></script>
<script src="dist/js/libs/jquery.easing.1.3.js"></script>
<script src="dist/js/libs/jquery.mousewheel.js"></script>
<script src="dist/js/libs/classie.js"></script>
<script src="plugin/bootstrap-material-design/js/material.js"></script>
<script src="plugin/bootstrap-material-design/js/ripples.js"></script>
<!-- <script src="plugin/pathLoader/main.js"></script> -->
<!-- <script src="plugin/pathLoader/pathLoader.js"></script> -->
<script src="plugin/scrollbox/jquery.scrollbox.js"></script>
<script src="plugin/FlexSlider/jquery.flexslider.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/ScrollMagic.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/debug.addIndicators.min.js"></script>
<script src="plugin/animation.gsap.js"></script>

<script src="plugin/AnimatedSVGIcons/js/svgicons-config.js"></script>
<script src="plugin/AnimatedSVGIcons/js/svgicons.js"></script>
<script src="dist/js/au.js"></script>


<script>
$(function() {
	$.get("dist/inc/footer.html", function(data){
		$("#loadFt").html(data);
	})
});
</script>

</body>
</html>
