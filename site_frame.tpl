<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><!--{$arrSiteInfo.shop_name|h}--><!--{if $tpl_subtitle|strlen >= 1}--> / <!--{$tpl_subtitle|h}--><!--{elseif $tpl_title|strlen >= 1}--> / <!--{$tpl_title|h}--><!--{/if}--></title>
  <!--{if $arrPageLayout.author|strlen >= 1}-->
  <meta name="author" content="<!--{$arrPageLayout.author|h}-->" />
  <!--{/if}-->
  <!--{if $arrPageLayout.description|strlen >= 1}-->
  <meta name="description" content="<!--{$arrPageLayout.description|h}-->" />
  <!--{/if}-->
  <!--{if $arrPageLayout.keyword|strlen >= 1}-->
  <meta name="keywords" content="<!--{$arrPageLayout.keyword|h}-->" />
  <!--{/if}-->
  <!--{if $arrPageLayout.meta_robots|strlen >= 1}-->
  <meta name="robots" content="<!--{$arrPageLayout.meta_robots|h}-->" />
  <!--{/if}-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
  <link rel="icon" type="image/vnd.microsoft.icon" href="<!--{$TPL_URLPATH}-->img/common/favicon.ico" />
  <link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/style.css" type="text/css" media="all" />
  <!--{strip}-->
  <!--{* ▼Head COLUMN*}-->
  <!--{if $arrPageLayout.HeadNavi|@count > 0}-->
  <!--{* ▼上ナビ *}-->
  <!--{foreach key=HeadNaviKey item=HeadNaviItem from=$arrPageLayout.HeadNavi}-->
  <!--{* ▼<!--{$HeadNaviItem.bloc_name}--> *}-->
  <!--{if $HeadNaviItem.php_path != ""}-->
  <!--{include_php file=$HeadNaviItem.php_path}-->
  <!--{else}-->
  <!--{include file=$HeadNaviItem.tpl_path}-->
  <!--{/if}-->
  <!--{* ▲<!--{$HeadNaviItem.bloc_name}--> *}-->
  <!--{/foreach}-->
  <!--{* ▲上ナビ *}-->
  <!--{/if}-->
  <!--{* ▲Head COLUMN*}-->
  <!--{/strip}-->

  <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.4.2.min.js"></script>

<!--   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-migrate-1.2.1.min.js"><\/script>')</script> -->

  <!-- #2342 次期メジャーバージョン(2.14)にてeccube.legacy.jsは削除予定.モジュール、プラグインの互換性を考慮して2.13では残します. -->
  <script type="text/javascript" src="/js/eccube.js"></script>
  <script type="text/javascript" src="/js/eccube.legacy.js"></script>
  <script src="<!--{$TPL_URLPATH}-->js/plugins.js"></script>
  <script src="<!--{$TPL_URLPATH}-->js/main.js"></script>

  <!--{if $tpl_page_class_name === "LC_Page_Abouts"}-->
  <!--{if ($smarty.server.HTTPS != "") && ($smarty.server.HTTPS != "off")}-->
  <script type="text/javascript" src="https://maps-api-ssl.google.com/maps/api/js?sensor=false"></script>
  <!--{else}-->
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
  <!--{/if}-->
  <!--{/if}-->

  <script type="text/javascript">
  //<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
      <!--{$tpl_onload}-->
    });
  //]]>
  </script>

</head>

<!-- ▼BODY部 スタート -->
<!--{include file='./site_main.tpl'}-->
<!-- ▲BODY部 エンド -->

  <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
  <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X');ga('send','pageview');
  </script>

</html>
