<div id="undercolumn">
    <div id="undercolumn_login">
        <h2><!--{$tpl_title|h}--></h2>
        <form name="member_form" id="member_form" method="post" action="?" onsubmit="return eccube.checkLoginFormInputted('member_form')">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="login" />

            <div class="login_area">
                <h3>会員登録がお済みのお客様</h3>
                <p class="inputtext">会員の方は、登録時に入力されたメールアドレスとパスワードでログインしてください。</p>
                <div class="inputbox">
                    <dl class="formlist clearfix">
                        <!--{assign var=key value="login_email"}-->
                        <dt>メールアドレス&nbsp;：</dt>
                        <dd>
                            <!--{if strlen($arrErr[$key]) >= 1}--><span class="attention"><!--{$arrErr[$key]}--></span><br /><!--{/if}-->
                            <input type="text" name="<!--{$key}-->" value="<!--{$tpl_login_email|h}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->; ime-mode: disabled;" class="box300" />
                            <p class="login_memory">
                                <!--{assign var=key value="login_memory"}-->
                                <input type="checkbox" name="<!--{$key}-->" value="1"<!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory" />
                                <label for="login_memory">メールアドレスをコンピューターに記憶させる</label>
                            </p>
                        </dd>
                    </dl>
                    <dl class="formlist clearfix">
                        <dt>
                            <!--{assign var=key value="login_pass"}-->
                            <span class="attention"><!--{$arrErr[$key]}--></span>
                            パスワード&nbsp;：
                        </dt>
                        <dd>
                            <input type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box300" />
                        </dd>
                    </dl>
                    <div class="btn_area">
                        <input type="submit" value="ログイン" name="log" id="log" class="btn btn-default btn-sm"/>
                    </div>
                </div>
                <p>
                    ※パスワードを忘れた方は<a href="<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="eccube.openWindow('<!--{$smarty.const.HTTPS_URL}-->forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','460',{scrollbars:'no',resizable:'no'}); return false;" target="_blank">こちら</a>からパスワードの再発行を行ってください。<br />
                    ※メールアドレスを忘れた方は、お手数ですが、<a href="<!--{$smarty.const.ROOT_URLPATH}-->contact/<!--{$smarty.const.DIR_INDEX_PATH}-->">お問い合わせページ</a>からお問い合わせください。
                </p>
            </div>
        </form>
        <div class="login_area">
            <h3>まだ会員登録されていないお客様</h3>


            <h4>会員登録をする</h4>
            <p class="inputtext">会員登録をすると便利なMyページをご利用いただけます。<br />
                また、ログインするだけで、毎回お名前や住所などを入力することなくスムーズにお買い物をお楽しみいただけます。
            </p>
            <div class="inputbox">
                <div class="btn_area">
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php" class="btn btn-default btn-sm">会員登録をする</a>
                </div>
            </div>

            <h4>会員登録をせずに購入手続きへ進む</h4>
            <p class="inputtext">会員登録をせずに購入手続きをされたい方は、下記よりお進みください。</p>
            <form name="member_form2" id="member_form2" method="post" action="?">
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <input type="hidden" name="mode" value="nonmember" />
                <div class="inputbox">
                    <div class="btn_area">
                        <input type="submit" value="購入手続きへ" name="buystep" id="buystep" class="btn btn-default btn-sm"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
