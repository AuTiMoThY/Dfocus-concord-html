<%@ Page Language="C#" CODEPAGE="65001" %>
<!doctype html>
<!--[if lt IE 7 ]> <html class="ie ie6 ie-lt10 ie-lt9 ie-lt8 ie-lt7 no-js" lang="zh"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 ie-lt10 ie-lt9 ie-lt8 no-js" lang="zh"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 ie-lt10 ie-lt9 no-js" lang="zh" > <![endif]-->
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
<style>
.ie-lt9 .ieHidden {
	display: none;
}
</style>
<script src="dist/js/libs/modernizr-2.7.1.dev.js"></script>
<script src="dist/js/ModernizrAu.js"></script>
<script src="plugin/AnimatedSVGIcons/js/snap.svg-min.js"></script>

<!-- Grab Google CDN's jQuery. fall back to local if necessary -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="dist/js/libs/jquery-1.11.1.js"><\/script>')</script>
<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- 尚未套程式時使用 -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular.min.js"></script> -->
<!-- <script>window.jQuery || document.write('\x3Cscript src="dist/js/libs/angular.min.js">\x3C/script>')</script> -->
<script src="dist/js/libs/angular.min.js"></script>
<!--[if lte IE 8]>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular.min.js"></script>
<![endif]-->
<script src="dist/nav.js"></script>


</head>

<body class="index_page" ng-app="app">

<!-- #Include virtual=".\dist\inc\header.html" -->

<section id="bannerSlider" class="banner flexslider" >
	<ul class="slides">
		<li class="banner" style="background-image: url(dist/images/banner-index5.jpg);">
			<a href="products_list1.html" class="index-banner hide_txt">more info</a></li>
		<li class="banner" style="background-image: url(jasonwang826-data/sys/slide/fpath.1.jpg);">
			<a href="products_list1.html" class="index-banner hide_txt">more info</a></li>
		<li class="banner" style="background-image: url(jasonwang826-data/sys/slide/fpath.2.jpg);">
			<a href="products_list1.html" class="index-banner hide_txt">more info</a></li>
		<li class="banner" style="background-image: url(jasonwang826-data/sys/slide/fpath.3.jpg);">
			<a href="products_list1.html" class="index-banner hide_txt">more info</a></li>
		<li class="banner" style="background-image: url(jasonwang826-data/sys/slide/fpath.4.jpg);">
			<a href="products_list1.html" class="index-banner hide_txt">more info</a></li>
	</ul>
</section>

<main class="">
	<section id="netAssetValueBar" class="fullbg row0 net_asset_value" ng-controller="navCtrl">
		<div class="wrapper cf">
			<div class="col-4 txt-6">Today's Net Asset Value</div>
			<div class="col-4">
				<label for="" class="net_asset_value-label col ">
					<span class="net_asset_value-label-bg"></span>
					<span class="net_asset_value-label-cnt txt-6_1">基金淨值日</span>
				</label>
				<div class="net_asset_value-txt col txt-6" ng-bind="navList[0].date">讀取資料中...</div>
			</div>
			<div class="col-4">
				<label for="" class="net_asset_value-label col ">
					<span class="net_asset_value-label-bg"></span>
					<span class="net_asset_value-label-cnt txt-6_1">最新淨值</span>
				</label>
				<div class="net_asset_value-txt col txt-6" ng-bind="navList[0].val">讀取資料中...</div>
			</div>
			<div class="col-4">
				<button type="button" id="netAssetValueBtn" class="btn btn-more">
					more
				</button>
				<a href="product_chart.html" id="" class="btn btn-moreChart">
					詳細資訊<i class="fa fa-line-chart"></i>
				</a>
			</div>
		</div>
		<div id="netAssetValuePanel" class="net_asset_value-history">
			<div class="wrapper">
				<ul class="cf">
					<li class="ieHidden" ng-repeat="nav in navList | limitTo: shownum">
						<span class="date" ng-bind="nav.date"></span><span class="num" ng-bind="nav.val">{{nav.val}}</span></li>
<!--[if lte IE 8]>
					<li><span class="date">2015-10-28</span><span class="num">10.879</span></li>
					<li><span class="date">2015-10-27</span><span class="num">10.893</span></li>
					<li><span class="date">2015-10-26</span><span class="num">10.898</span></li>
					<li><span class="date">2015-10-23</span><span class="num">10.850</span></li>
					<li><span class="date">2015-10-22</span><span class="num">10.812</span></li>
					<li><span class="date">2015-10-21</span><span class="num">10.806</span></li>
					<li><span class="date">2015-10-20</span><span class="num">10.759</span></li>
					<li><span class="date">2015-10-19</span><span class="num">10.772</span></li>
					<li><span class="date">2015-10-16</span><span class="num">10.788</span></li>
					<li><span class="date">2015-10-15</span><span class="num">10.795</span></li>
					<li><span class="date">2015-10-14</span><span class="num">10.814</span></li>
					<li><span class="date">2015-10-13</span><span class="num">10.887</span></li>
					<li><span class="date">2015-10-12</span><span class="num">10.870</span></li>
					<li><span class="date">2015-10-08</span><span class="num">10.839</span></li>
					<li><span class="date">2015-10-07</span><span class="num">10.917</span></li>
					<li><span class="date">2015-10-06</span><span class="num">10.889</span></li>
					<li><span class="date">2015-10-05</span><span class="num">10.925</span></li>
					<li><span class="date">2015-10-02</span><span class="num">10.894</span></li>
					<li><span class="date">2015-10-01</span><span class="num">10.889</span></li>
					<li><span class="date">2015-09-30</span><span class="num">10.805</span></li>
					<li><span class="date">2015-09-25</span><span class="num">10.725</span></li>
<![endif]-->
				</ul>
			</div>
		</div>
	</section>
	<section class="fullbg row1">
		<div class="wrapper xs">
			<div class="row1-cnt">
				<hgroup id="txtImg1" class="txtImg_title-title-index_row1">
					<h1 class="hidden">康和期貨經理事業，國內唯一專營期貨經理與期貨信託<br>滿足您資產配置及財務風險規劃的服務需求</h1>
				</hgroup>
				<p class="txt-2">康和期貨經理事業股份有限公司為康和證券集團成員，資本額3億，基於金融市場長期的發展趨勢，陸續設置期貨服務事業之相關部門，秉持專業、積極的服務態度，提供客戶健全、客制化的投資工具及多樣化的金融商品，滿足投資人資產配置及財務風險規劃的服務需求，替大型投資法人與一般自然人做完整之金融代工、商品設計、顧問輔導咨詢與期貨信託受益憑證發行服務，相關業務拓展至兩岸三地華人市場。 </p>
			</div>
		</div>
	</section>
	<!--  section.row2  康和期經三大事業體  START  -->
	<section id="futures" class="row2">
		<div class="wrapper">
			<hgroup>
				<h1 class="hide_txt txt_img-BusinessDivisons title-1" data-lang="en">Business Divisons</h1>
				<h2 class="hide_txt txt_img-BusinessDivisons title-2" data-lang="tw">康和期經三大事業體</h2>
			</hgroup>
			<div class="cnt">
				<ul class="futures-list cf">
					<li class="futures-item">
						<figure><a href="futures_managed.html">
							<div class="futures-pic pic">
								<img src="dist/images/pic1.jpg" alt="">
							</div>
							<figcaption>
								<!-- <p class="futures-item-intro txt-2">期貨經理事業係指經營接受特定人委任，對委任人之委託交易資產，就有關期貨交易、期貨相關現貨商品或其他經主管機關核准項目之交易或投資為分析、判斷，並基於該分析、判斷，為委任人執行期貨交易之業務者</p> -->
							</figcaption>
						</a></figure>
						<p class="txt-ff1 txt-1">Futures Managed Account</p>
						<p class="txt-ff1 txt-1">期貨經理事業</p>
					</li>
					<li class="futures-item">
						<figure><a href="futures_fund.html">
							<div class="futures-pic pic">
								<img src="dist/images/pic2.jpg" alt="">
							</div>
							<figcaption>
								<!-- <p class="futures-item-intro txt-2">國內期貨信託事業係以向不特定人或符合主管機關所定資格條件之人募集期貨信託基金發行受益憑證，並運用期貨信託基金從事交易或投資之事業。聚集更多的小額資金，配合專業穩健的研究投資團隊，為廣大投資人進行審慎與安全的期貨交易，提供一個可參與國內外期貨市場的管道。</p> -->
							</figcaption>
						</a></figure>
						<p class="txt-ff1 txt-1">Futures Trust Fund</p>
						<p class="txt-ff1 txt-1">期貨信託事業</p>
					</li>
					<li class="futures-item">
						<figure><a href="futures_advisory.html">
							<div class="futures-pic pic">
								<img src="dist/images/pic3.jpg" alt="">
							</div>
							<figcaption>
								<!-- <p class="futures-item-intro txt-2">期貨顧問事業業務係以接受委任，對期貨交易、期貨信託基金、期貨相關現貨商品或其他經主管機關公告與核准項目之交易或投資有關事項提供研究分析意見或建議咨詢服務，與執行前款有關期貨交易或投資之出版品發行及舉辦講習者。</p> -->
							</figcaption>
						</a></figure>
						<p class="txt-ff1 txt-1">Futures Advisory</p>
						<p class="txt-ff1 txt-1">期貨顧問事業</p>
					</li>
				</ul>

				<!-- <img src="<?php //path_au('img'); ?>index-row2.jpg" alt=""> -->
			</div>
		</div>
	</section><!--  / section.row2  康和期經三大事業體  END  !!  -->
	<!--  section.row3  堅強團隊  START  -->
	<section id="team" class="row3">
		<div class="wrapper small">
			<hgroup class="txtImg_title txtImg_title-title-team">
				<h1 class="hidden title-1" data-lang="en">Managament Team</h1>
				<h2 class="hidden title-1" data-lang="tw">經營團隊</h2>
			</hgroup>
		</div>
		<footer class="character-ft">
			<div id="charMarquee" class="character-caroul">
				<ul class="character-caroul-list cf" style="width: auto; display: table; margin: auto;">
					<li class="character-item"><a href="character.html">
						<figure>
							<div class="character-pic pic about-character1">
								<img src="upload/character/character1.png">
							</div>
							<figcaption>
								<div class="left">
									<span class="inner character-name">葉一豐</span>
								</div>
								<div class="right">
									<span class="inner character-title">董事長</span>
								</div>
							</figcaption>
						</figure>
					</a></li>
					<li class="character-item"><a href="character-tem-2.html">
						<figure>
							<div class="character-pic pic about-character2">
								<img src="upload/character/character2.png">
							</div>
							<figcaption>
								<div class="left">
									<span class="inner character-name">林彥全</span>
								</div>
								<div class="right">
									<span class="inner character-title">董事<br>總經理</span>
								</div>
							</figcaption>
						</figure>
					</a></li>
					<li class="character-item"><a href="character-tem-3.html">
						<figure>
							<div class="character-pic pic about-character3">
								<img src="upload/character/character3.png">
							</div>
							<figcaption>
								<div class="left">
									<span class="inner character-name">方琮櫻</span>
								</div>
								<div class="right">
									<span class="inner character-title">副總經理</span>
								</div>
							</figcaption>
						</figure>
					</a></li>
					<li class="character-item"><a href="character-tem-4.html">
						<figure>
							<div class="character-pic pic about-character4">
								<img src="upload/character/character4.png">
							</div>
							<figcaption>
								<div class="left">
									<span class="inner character-name">林豪威</span>
								</div>
								<div class="right">
									<span class="inner character-title">投資長</span>
								</div>
							</figcaption>
						</figure>
					</a></li>
				</ul>
			</div>
			<div class="character-caroul-ctrl" style="display: none;">
				<div id="marquee_prev_btn" class="btn btn-faq-tabs-prev faq-tabs-btn" style="top: 177.5px;">
					<i class="fa fa-caret-left"></i>
				</div>
				<div id="marquee_next_btn" class="btn btn-faq-tabs-next faq-tabs-btn" style="top: 177.5px;">
					<i class="fa fa-caret-right"></i>
				</div>
			</div>
		</footer>

		<p class="txt-1">繼2013年12月多空成長成功募集後，2015年康和期經再度網羅業內菁英，完整不同投資人投資標的。
		<!-- <a href="about.php#teamProfile" class="txt-r1 link-1">認識我們的團隊</a> -->
		</p>
		<!-- <img src="<?php //path_au('img'); ?>index-row3.jpg" alt=""> -->
	</section><!--  / section.row3  堅強團隊  END  !!  -->
	<!-- section.row4  市場消息  START  -->
	<section class="fullbg row4">
		<div class="wrapper">
			<hgroup class="txtImg_title-title-news">
				<h1 class="hidden title-1" data-lang="en">News & Updates</h1>
				<h2 class="hidden title-2" data-lang="tw">市場消息</h2>
			</hgroup>
			<div class="metro-wrap">
				<div class="metro-container">
					<div class="metro-block-style1 cf ib">
						<a href="news_cnt-tem.html#29"></a>
						<div class="news-pic pic left">
							<img src="dist/images/news-cover.jpg">
						</div>
						<div class="metro-art right">
							<hgroup>
								<h1 class="news-title">期市衝規模 招手銀行保險業(聯合新聞網)</h1>
								<p class="news-time">08月05日 2015</p>
							</hgroup>
							<p class="news-shrink_text">
								新聞分享&nbsp;| 臺灣期貨交易所董事長劉連煜在經濟日報主辦「臺灣期貨市場新亮點-銀行保險業避險增益時代來臨」論壇中致詞指出，期交所去（103）年成績亮麗，交易...</p>
						</div>
					</div><!-- /.metro-block-style1  END  !! -->
					<div class="metro-block-video ib">
						<a href="javascript:void 0;"></a>
						<div class="news-pic news-video pic">
							<img src="dist/images/temp/tem4.jpg">
						</div>
					</div><!-- /.metro-block-video  END  !! -->
					<div class="metro-block-single ib">
						<a href="news_cnt-tem.html#26"></a>
						<div class="metro-art">
							<hgroup>
								<h1 class="news-title">台灣期貨市場新亮點 - 銀行保險業避險增益時代來臨</h1>
								<p class="news-time">07月20日 2015</p>
							</hgroup>
							<p class="news-shrink_text">
								新聞分享 | 台股上周開始量縮整理，且日線連續4天收黑K棒，顯示追價力道不足、上檔反壓沉重。康和期經認為，觀察8月分合約，考量估計除息點數影響，實值收盤價差由正...</p>
						</div>
					</div><!-- /.metro-block-single  END  !! -->
					<div class="metro-block-style1 cf ib">
						<a href="news_cnt-tem.html#27"></a>
						<div class="news-pic pic left">
							<img src="dist/images/news-cover.jpg">
						</div>
						<div class="metro-art right">
							<hgroup>
								<h1 class="news-title">股票期貨贏家－華通順利填息 可布局股期</h1>
								<p class="news-time">07月14日 2015</p>
							</hgroup>
							<p class="news-shrink_text">
								新聞分享 | 印刷電路板廠華通（2313）上周進行除權息，然而遇到國際股市動盪，導致股價一度跌落年線之下，但在法人持續加碼的拉升力道之下，昨日出現反彈且順利填息...								</p>
						</div>
					</div><!-- /.metro-block-style1  END  !! -->
				</div>
			</div>
		</div>
	</section><!-- / section.row4  END  !!-->
</main>

<!-- <footer id="loadFt"></footer> -->

<!-- #Include virtual=".\dist\inc\footer.html" -->


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
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/ScrollMagic.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/debug.addIndicators.min.js"></script>
<script src="plugin/animation.gsap.js"></script>

<script src="plugin/AnimatedSVGIcons/js/svgicons-config.js"></script>
<script src="plugin/AnimatedSVGIcons/js/svgicons.js"></script>
<script src="dist/js/au.js"></script>


<script>
$(window).load(function() {
	$("#bannerSlider").flexslider({
		animation      : "fade",
		controlNav     : true,
		directionNav   : false,
		slideshowSpeed : 5000
	})
});
$(function() {
	// $.get("dist/inc/footer.html", function(data){
	// 	$("#loadFt").html(data);
	// })

	var $charMarquee = $("#charMarquee");
	var charMarqueeH = $charMarquee.outerHeight();
	var charLength = $("#charMarquee li").length;
	var viewPortWH = viewPortWidthHeight(),
		viewPortW = viewPortWH.width;
	console.log(charLength);
	$("#marquee_prev_btn").css({
		top: (charMarqueeH-100)/2
	});
	$("#marquee_next_btn").css({
		top: (charMarqueeH-100)/2
	});
	if (charLength<=5) {
		$(".character-caroul-ctrl").hide();
		$("ul.character-caroul-list").css({
			width: 'auto',
			display: 'table',
			margin: 'auto'
		});
	}
	if (charLength<=5 && viewPortW<=1366) {
		console.log("run");
		$(".character-caroul-ctrl").show();
		$("ul.character-caroul-list").css({
			width: '',
			display: '',
			margin: ''
		});
	}

     // var dis = $('.character-item').outerHeight();
     $("#charMarquee").scrollbox({
               // distance: dis,
               speed: 60,
               direction: 'h',
               infiniteLoop: false,
               autoPlay: false
          })
     $('#marquee_prev_btn').click(function () {
          $('#charMarquee').trigger('backward');
     });
     $('#marquee_next_btn').click(function () {
          $('#charMarquee').trigger('forward');
     });

     // $("#netAssetValuePanel").hide();
    $("#netAssetValueBtn").click(function() {
    	isOpen($("#netAssetValueBar"), $("#netAssetValueBar.open"));
    	$("#netAssetValuePanel").slideToggle(400);
    });
    // $("#netAssetValueBar")
});
</script>


</body>
</html>
