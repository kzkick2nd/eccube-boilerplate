<div id="undercolumn">
    <div id="undercolumn_entry">
        <h2><!--{$tpl_title|h}--></h2>
        <p class="message">【重要】 会員登録をされる前に、下記ご利用規約をよくお読みください。</p>
        <p>規約には、本サービスを使用するに当たってのあなたの権利と義務が規定されております。<br />
            「同意して会員登録へ」ボタンをクリックすると、あなたが本規約の全ての条件に同意したことになります。
        </p>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <textarea name="textfield" class="kiyaku_text" cols="80" rows="30" readonly="readonly"><!--{"\n"}--><!--{$tpl_kiyaku_text|h}--></textarea>

            <div class="btn_area">
                <a href="<!--{$smarty.const.TOP_URL}-->" class="btn">同意しない</a>
                <a href="<!--{$smarty.const.ENTRY_URL}-->" class="btn btn-default">同意して会員登録へ</a>
            </div>

        </form>
    </div>
</div>
