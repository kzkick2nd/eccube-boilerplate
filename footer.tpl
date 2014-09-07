<!--▼FOOTER-->
<!--{strip}-->
<div id="wrap_footer">
  <div id="footer" class="clearfix">
    <div id="pagetop"><a href="#top">このページの先頭へ</a></div>
    <div id="copyright">Copyright ©
      &nbsp;<!--{if $smarty.const.RELEASE_YEAR != $smarty.now|date_format:"%Y"}--><!--{$smarty.const.RELEASE_YEAR}-->-<!--{/if}--><!--{$smarty.now|date_format:"%Y"}-->
      &nbsp;<!--{$arrSiteInfo.shop_name_eng|default:$arrSiteInfo.shop_name|h}--> All rights reserved.
    </div>
  </div>
</div>
<!--{/strip}-->
<!--▲FOOTER-->
