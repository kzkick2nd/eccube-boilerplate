<div id="mypagecolumn">
    <h2><!--{$tpl_title|h}--></h2>
    <!--{include file = $tpl_navi}-->
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <div id="complete_area">
            <div class="message">退会手続きが完了いたしました。<br />
                <!--{$arrSiteInfo.shop_name}-->をご利用いただき誠にありがとうございました。<br />
                またのご利用を心よりお待ち申し上げます。
            </div>

            <div class="shop_information">
                <p class="name"><!--{$arrSiteInfo.company_name|h}--></p>
                <p>TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}--> <!--{if $arrSiteInfo.business_hour != ""}-->（受付時間/<!--{$arrSiteInfo.business_hour}-->）<!--{/if}--><br />
                E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a></p>
            </div>
        </div>
    </div>
</div>
