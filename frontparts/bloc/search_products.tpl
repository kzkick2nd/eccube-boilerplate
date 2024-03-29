<!--{strip}-->
    <div class="block_outer">
        <div id="search_area">
            <h2>検索条件</h2>
            <div class="block_body">
                <!--検索フォーム-->
                <form name="search_form" id="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
                    <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                    <dl class="formlist">
                        <dt>商品カテゴリから選ぶ</dt>
                        <dd><input type="hidden" name="mode" value="search" />
                        <select name="category_id" class="box145">
                            <option label="全ての商品" value="">全ての商品</option>
                            <!--{html_options options=$arrCatList selected=$category_id}-->
                        </select>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <!--{if $arrMakerList}-->
                        <dt>メーカーから選ぶ</dt>
                        <dd><select name="maker_id" class="box145">
                            <option label="全てのメーカー" value="">全てのメーカー</option>
                            <!--{html_options options=$arrMakerList selected=$maker_id}-->
                        </select>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <!--{/if}-->
                        <dt>商品名を入力</dt>
                        <dd><input type="text" name="name" class="box140" maxlength="50" value="<!--{$smarty.get.name|h}-->" /></dd>
                    </dl>
                    <input type="submit" value="検索" name="search" class="btn btn-default btn-sm"/>
                </form>
            </div>
        </div>
    </div>
<!--{/strip}-->
