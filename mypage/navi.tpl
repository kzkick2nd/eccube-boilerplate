<div id="mynavi_area">
    <!--{strip}-->
        <ul class="mynavi_list clearfix">

            <!--{* 会員状態 *}-->
            <!--{if $tpl_login}-->
                <li><a href="./<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">
                    購入履歴一覧</a></li>
                <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
                    <li><a href="favorite.php" class="<!--{if $tpl_mypageno == 'favorite'}--> selected<!--{/if}-->">
                        お気に入り一覧</a></li>
                <!--{/if}-->
                <li><a href="change.php" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">
                    会員登録内容変更</a></li>
                <li><a href="delivery.php" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">
                    お届け先追加・変更</a></li>
                <li><a href="refusal.php" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">
                    退会手続き</a></li>

            <!--{* 退会状態 *}-->
            <!--{else}-->
                <li><a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">
                    購入履歴一覧</a></li>
                <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
                    <li><a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'favorite'}--> selected<!--{/if}-->">
                        お気に入り一覧</a></li>
                <!--{/if}-->
                <li><a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">
                    会員登録内容変更</a></li>
                <li><a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">
                    お届け先追加・変更</a></li>
                <li><a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">
                    退会手続き</a></li>
            <!--{/if}-->
        </ul>

        <!--▼現在のポイント-->
        <!--{if $point_disp !== false}-->
            <div class="point_announce clearfix">
                <p>ようこそ&nbsp;／&nbsp;
                    <span class="user_name"><!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様</span>
                    <!--{if $smarty.const.USE_POINT !== false}-->&nbsp;
                        現在の所持ポイントは&nbsp;<span class="point st"><!--{$CustomerPoint|number_format|default:"0"|h}-->pt</span>&nbsp;です。
                    <!--{/if}-->
                </p>
            </div>
        <!--{/if}-->
        <!--▲現在のポイント-->
    <!--{/strip}-->

</div>
<!--▲NAVI-->
