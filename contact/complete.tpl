<div id="undercolumn">
    <h2><!--{$tpl_title|h}--></h2>
    <div id="undercolumn_contact">
        <div id="complete_area">
            <p class="message">お問い合わせ内容の送信が完了いたしました。</p>
            <p>
                万一、ご回答メールが届かない場合は、トラブルの可能性もありますので<br />大変お手数ではございますがもう一度お問い合わせいただくか、お電話にてお問い合わせください。<br />
                今後ともご愛顧賜りますようよろしくお願い申し上げます。
            </p>
            <div class="shop_information">
            <p class="name"><!--{$arrSiteInfo.company_name|h}--><br />
            <p>TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}-->
                <!--{if $arrSiteInfo.business_hour != ""}-->
                (受付時間/<!--{$arrSiteInfo.business_hour}-->)
                <!--{/if}--><br />
                E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a></p>
            </p>
            </div>

            <div class="btn_area">
                <a href="<!--{$smarty.const.TOP_URL}-->" class="btn btn-default btn-sm">トップページへ</a>
            </div>
        </div>
    </div>
</div>
