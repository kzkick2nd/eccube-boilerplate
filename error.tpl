<!--{strip}-->
<div id="undercolumn">
  <div id="undercolumn_error">
    <div class="message_area">
      <!--★エラーメッセージ-->
      <h3>エラーが発生しました</h3>
      <p><!--{$tpl_error}--></p>
    </div>

    <div class="btn_area">
      <!--{if $return_top}-->
      <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default">トップページへ</a>
      <!--{else}-->
      <a href="javascript:history.back()" class="btn btn-default">戻る</a>
      <!--{/if}-->
    </div>
  </div>
</div>
<!--{/strip}-->
