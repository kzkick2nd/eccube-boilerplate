<div id="mypagecolumn">
    <h2><!--{$tpl_title|h}--></h2>
    <!--{include file=$tpl_navi}-->
    <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="refusal_transactionid" value="<!--{$refusal_transactionid}-->" />
        <input type="hidden" name="mode" value="complete" />

        <div id="mycontents_area">
            <h3><!--{$tpl_subtitle|h}--></h3>
            <div id="complete_area">
                <div class="message">退会手続きを実行してもよろしいでしょうか？</div>
                <div class="message_area">
                    <div class="btn_area">
                        <p>退会手続きが完了した時点で、現在保存されている購入履歴や、<br />
                        お届け先等の情報は全てなくなりますのでご注意ください。</p>
                        <a href="./refusal.php" class="btn btn-default btn-sm">いいえ、退会しません</a>
                        <input type="submit" value="はい、退会します" name="refuse_do" id="refuse_do" class="btn btn-default btn-sm"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
