<div id="mypagecolumn">
    <h2><!--{$tpl_title|h}--></h2>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <p class="inforamtion">登録住所以外への住所へ送付される場合等にご利用いただくことができます。<br />
        ※最大<span class="attention"><!--{$smarty.const.DELIV_ADDR_MAX|h}-->件</span>まで登録できます。</p>

        <!--{if $tpl_linemax < $smarty.const.DELIV_ADDR_MAX}-->
            <!--{* 退会時非表示 *}-->
            <!--{if $tpl_login}-->
                <p class="add_address">
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="eccube.openWindow('./delivery_addr.php','delivadd','600','640',{menubar:'no'}); return false;" target="_blank">新しいお届け先を追加</a>
                </p>
            <!--{/if}-->
        <!--{/if}-->

        <!--{if $tpl_linemax > 0}-->
            <form name="form1" id="form1" method="post" action="?" >
                <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
                <input type="hidden" name="mode" value="" />
                <input type="hidden" name="other_deliv_id" value="" />
                <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->" />

                <table summary="お届け先">
                <col width="5%" />
                <col width="25%" />
                <col width="50%" />
                <col width="10%" />
                <col width="10%" />
                    <tr>
                        <th colspan="5">お届け先</th>
                    </tr>
                    <!--{section name=cnt loop=$arrOtherDeliv}-->
                        <!--{assign var=OtherPref value="`$arrOtherDeliv[cnt].pref`"}-->
                        <!--{assign var=OtherCountry value="`$arrOtherDeliv[cnt].country_id`"}-->
                        <tr>
                            <td class="alignC"><!--{$smarty.section.cnt.iteration}--></td>
                            <td><label for="add<!--{$smarty.section.cnt.iteration}-->">お届け先住所</label></td>
                            <td>
                                <!--{if $smarty.const.FORM_COUNTRY_ENABLE}-->
                                <!--{$arrCountry[$OtherCountry]|h}--><br/>
                                <!--{/if}-->
                                〒<!--{$arrOtherDeliv[cnt].zip01}-->-<!--{$arrOtherDeliv[cnt].zip02}--><br />
                                <!--{$arrPref[$OtherPref]|h}--><!--{$arrOtherDeliv[cnt].addr01|h}--><!--{$arrOtherDeliv[cnt].addr02|h}--><br />
                                <!--{$arrOtherDeliv[cnt].company_name|h}-->&nbsp;<!--{$arrOtherDeliv[cnt].name01|h}-->&nbsp;<!--{$arrOtherDeliv[cnt].name02|h}-->
                            </td>
                            <td class="alignC">
                                <a href="./delivery_addr.php" onclick="eccube.openWindow('./delivery_addr.php?other_deliv_id=<!--{$arrOtherDeliv[cnt].other_deliv_id}-->','deliv_disp','600','640'); return false;">変更</a>
                            </td>
                            <td class="alignC">
                                <a href="#" onclick="eccube.setModeAndSubmit('delete','other_deliv_id','<!--{$arrOtherDeliv[cnt].other_deliv_id}-->'); return false;">削除</a>
                            </td>
                        </tr>
                    <!--{/section}-->
                </table>
            </form>
        <!--{else}-->
            <p class="delivempty"><strong>新しいお届け先はありません。</strong></p>
        <!--{/if}-->
    </div>
</div>
