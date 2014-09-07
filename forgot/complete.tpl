<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_header.tpl" subtitle="パスワードを忘れた方(完了ページ)"}-->

<div id="window_area">
    <h2>パスワードを忘れた方</h2>
    <p class="information">パスワードの発行が完了いたしました。ログインには下記のパスワードをご利用ください。<br />
        ※下記パスワードは、MYページの「会員登録内容変更」よりご変更いただけます。</p>
    <form action="?" method="post" name="form1">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <div id="forgot">
            <!--{if $smarty.const.FORGOT_MAIL != 1}-->
                <p><span class="attention"><!--{$arrForm.new_password}--></span></p>
            <!--{else}-->
            <p><span class="attention">ご登録メールアドレスに送付致しました。</span></p>
            <!--{/if}-->
        </div>
        <div class="btn_area">
            <a href="javascript:window.close()" class="btn btn-default">閉じる</a>
        </div>
    </form>
</div>

<!--{include file="`$smarty.const.TEMPLATE_REALDIR`popup_footer.tpl"}-->
