<!--{if !$tpl_login}-->
<script src="<!--{$TPL_URLPATH}-->js/login_header.tpl.js"></script>
<!--{/if}-->
<!--{strip}-->
    <div class="block_outer">
        <div id="header_login_area" class="clearfix">
            <form name="header_login_form" id="header_login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if !$tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('header_login_form')"<!--{/if}-->>
                <input type="hidden" name="mode" value="login" />
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
                <div class="block_body clearfix">
                    <!--{if $tpl_login}-->
                        <div>
                            ようこそ <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span>
                            <!--{if $smarty.const.USE_POINT !== false}-->
                                / 所持ポイント: <span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span>&nbsp;&nbsp;
                            <!--{/if}-->
                            <!--{if !$tpl_disable_logout}-->
                                <input type="button" onclick="eccube.fnFormModeSubmit('header_login_form', 'logout', '', ''); return false;" value="ログアウト" class="btn btn-default btn-sm"/>
                            <!--{/if}-->
                        </div>
                    <!--{else}-->
                        <div class="mail">
                            <input type="text" class="box150" name="login_email" value="<!--{$tpl_login_email|h}-->" style="ime-mode: disabled;" title="メールアドレスを入力して下さい" />
                        </div>
                        <div class="login_memory">
                            <input type="checkbox" name="login_memory" id="header_login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> /><label for="header_login_memory"><span>記憶</span></label>
                        </div>
                        <div class="password"><input type="password" class="box100" name="login_pass" title="パスワードを入力して下さい" /></div>
                        <div class="submit">
                            <input type="submit" value="ログイン" class="btn btn-default btn-sm"/>
                        </div>
                        <div class="forgot">
                            <a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">パスワードを忘れた方</a>
                        </div>
                    <!--{/if}-->
                </div>
            </form>
        </div>
    </div>
<!--{/strip}-->
