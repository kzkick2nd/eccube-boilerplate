<!--▼HEADER-->
<!--{strip}-->
<div id="wrap_header">
  <div id="header">
    <div id="logo_area">
      <p>サイト説明文章が入ります<!--{$arrPageLayout.description|h}--></p>
      <h1><a href="<!--{$smarty.const.TOP_URL}-->"><!--{$arrSiteInfo.shop_name|h}--></a></h1>
    </div>
    <div id="header_utility">
      <div id="headerInternalColumn">
        <!--{* ▼HeaderInternal COLUMN *}-->
        <!--{if $arrPageLayout.HeaderInternalNavi|@count > 0}-->
        <!--{* ▼上ナビ *}-->
        <!--{foreach key=HeaderInternalNaviKey item=HeaderInternalNaviItem from=$arrPageLayout.HeaderInternalNavi}-->
        <!-- ▼<!--{$HeaderInternalNaviItem.bloc_name}--> -->
        <!--{if $HeaderInternalNaviItem.php_path != ""}-->
        <!--{include_php file=$HeaderInternalNaviItem.php_path items=$HeaderInternalNaviItem}-->
        <!--{else}-->
        <!--{include file=$HeaderInternalNaviItem.tpl_path items=$HeaderInternalNaviItem}-->
        <!--{/if}-->
        <!-- ▲<!--{$HeaderInternalNaviItem.bloc_name}--> -->
        <!--{/foreach}-->
        <!--{* ▲上ナビ *}-->
        <!--{/if}-->
        <!--{* ▲HeaderInternal COLUMN *}-->
      </div>
    </div>
    <div id="header_navi">
      <div class="menu">
        <a href="<!--{$smarty.const.HTTPS_URL}-->mypage/login.php">アカウントサービス</a>
        <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php">会員登録</a>
        <a href="<!--{$smarty.const.CART_URL}-->">カートを見る</a>
      </div>
    </div>
  </div>
</div>
<!--{/strip}-->
<!--▲HEADER-->
