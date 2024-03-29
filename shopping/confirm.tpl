<!-- 2014/09/04 JSとりあえず外に -->
<script src="<!--{$TPL_URLPATH}-->js/confirm.tpl.js"></script>
<div id="undercolumn">
    <div id="undercolumn_shopping">
        <table id="progress">
            <tr class="progress_bar">
                <td class="done"></td>
                <td class="done"></td>
                <td class="done"></td>
                <td class="done"></td>
                <td class="doing"></td>
                <td></td>
            </tr>
            <tr class="stepps">
                <td colspan="2" class="done">1.配送</td>
                <td colspan="2" class="done">2.会計</td>
                <td colspan="2" class="doing">3.確認</td>
            </tr>
        </table>

        <h2><!--{$tpl_title|h}--></h2>

        <p class="information">下記ご注文内容で送信してもよろしいでしょうか？<br />
            よろしければ、「<!--{if $use_module}-->次へ<!--{else}-->注文を確定する<!--{/if}-->」ボタンをクリックしてください。</p>

        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />

            <div class="btn_area">
                <a href="./payment.php" class="btn">戻る</a>
                <!--{if $use_module}-->
                <input type="submit" onclick="return fnCheckSubmit();"value="次へ" name="next-top" id="next-top" class="btn btn-default"/>
                <!--{else}-->
                <input type="submit" onclick="return fnCheckSubmit();" value="注文を確定する" name="next-top" id="next-top" class="btn btn-default btn-sm"/>
                <!--{/if}-->
            </div>

            <table summary="ご注文内容確認">
                <col width="10%" />
                <col width="40%" />
                <col width="20%" />
                <col width="10%" />
                <col width="20%" />
                <tr>
                    <th scope="col">商品写真</th>
                    <th scope="col">商品名</th>
                    <th scope="col">単価</th>
                    <th scope="col">数量</th>
                    <th scope="col">小計</th>
                </tr>
                <!--{foreach from=$arrCartItems item=item}-->
                    <tr>
                        <td class="alignC">
                            <a
                                <!--{if $item.productsClass.main_image|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->" class="expansion" target="_blank"
                                <!--{/if}-->
                            >
                                <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->" style="max-width: 65px;max-height: 65px;" alt="<!--{$item.productsClass.name|h}-->" /></a>
                        </td>
                        <td>
                            <ul>
                                <li><strong><!--{$item.productsClass.name|h}--></strong></li>
                                <!--{if $item.productsClass.classcategory_name1 != ""}-->
                                <li><!--{$item.productsClass.class_name1|h}-->：<!--{$item.productsClass.classcategory_name1|h}--></li>
                                <!--{/if}-->
                                <!--{if $item.productsClass.classcategory_name2 != ""}-->
                                <li><!--{$item.productsClass.class_name2|h}-->：<!--{$item.productsClass.classcategory_name2|h}--></li>
                                <!--{/if}-->
                            </ul>
                        </td>
                        <td class="alignR">
                            <!--{$item.price_inctax|number_format}-->円
                        </td>
                        <td class="alignR"><!--{$item.quantity|number_format}--></td>
                        <td class="alignR"><!--{$item.total_inctax|number_format}-->円</td>
                    </tr>
                <!--{/foreach}-->
                <tr>
                    <th colspan="4" class="alignR" scope="row">小計</th>
                    <td class="alignR"><!--{$tpl_total_inctax[$cartKey]|number_format}-->円</td>
                </tr>
                <!--{if $smarty.const.USE_POINT !== false}-->
                    <!--{if $arrForm.use_point > 0}-->
                    <tr>
                        <th colspan="4" class="alignR" scope="row">値引き（ポイントご使用時）</th>
                        <td class="alignR">
                            <!--{assign var=discount value=`$arrForm.use_point*$smarty.const.POINT_VALUE`}-->
                            -<!--{$discount|number_format|default:0}-->円</td>
                    </tr>
                    <!--{/if}-->
                <!--{/if}-->
                <tr>
                    <th colspan="4" class="alignR" scope="row">送料</th>
                    <td class="alignR"><!--{$arrForm.deliv_fee|number_format}-->円</td>
                </tr>
                <tr>
                    <th colspan="4" class="alignR" scope="row">手数料</th>
                    <td class="alignR"><!--{$arrForm.charge|number_format}-->円</td>
                </tr>
                <tr>
                    <th colspan="4" class="alignR" scope="row">合計</th>
                    <td class="alignR"><span class="price"><!--{$arrForm.payment_total|number_format}-->円</span></td>
                </tr>
            </table>

            <!--{* ログイン済みの会員のみ *}-->
            <!--{if $tpl_login == 1 && $smarty.const.USE_POINT !== false}-->
                <table summary="ポイント確認" class="delivname">
                <col width="30%" />
                <col width="70%" />
                    <tr>
                        <th scope="row">ご注文前のポイント</th>
                        <td><!--{$tpl_user_point|number_format|default:0}-->Pt</td>
                    </tr>
                    <tr>
                        <th scope="row">ご使用ポイント</th>
                        <td>-<!--{$arrForm.use_point|number_format|default:0}-->Pt</td>
                    </tr>
                    <!--{if $arrForm.birth_point > 0}-->
                    <tr>
                        <th scope="row">お誕生月ポイント</th>
                        <td>+<!--{$arrForm.birth_point|number_format|default:0}-->Pt</td>
                    </tr>
                    <!--{/if}-->
                    <tr>
                        <th scope="row">今回加算予定のポイント</th>
                        <td>+<!--{$arrForm.add_point|number_format|default:0}-->Pt</td>
                    </tr>
                    <tr>
                    <!--{assign var=total_point value=`$tpl_user_point-$arrForm.use_point+$arrForm.add_point`}-->
                        <th scope="row">加算後のポイント</th>
                        <td><!--{$total_point|number_format}-->Pt</td>
                    </tr>
                </table>
            <!--{/if}-->
            <!--{* ログイン済みの会員のみ *}-->

            <!--{* ▼注文者 *}-->
            <h3>ご注文者</h3>
            <table summary="ご注文者" class="customer">
                <col width="30%" />
                <col width="70%" />
                <tbody>
                    <tr>
                        <th scope="row">お名前</th>
                        <td><!--{$arrForm.order_name01|h}--> <!--{$arrForm.order_name02|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">お名前(フリガナ)</th>
                        <td><!--{$arrForm.order_kana01|h}--> <!--{$arrForm.order_kana02|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">会社名</th>
                        <td><!--{$arrForm.order_company_name|h}--></td>
                    </tr>
                    <!--{if $smarty.const.FORM_COUNTRY_ENABLE}-->
                    <tr>
                        <th scope="row">国</th>
                        <td><!--{$arrCountry[$arrForm.order_country_id]|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">ZIPCODE</th>
                        <td><!--{$arrForm.order_zipcode|h}--></td>
                    </tr>
                    <!--{/if}-->
                    <tr>
                        <th scope="row">郵便番号</th>
                        <td>〒<!--{$arrForm.order_zip01|h}-->-<!--{$arrForm.order_zip02|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">住所</th>
                        <td><!--{$arrPref[$arrForm.order_pref]}--><!--{$arrForm.order_addr01|h}--><!--{$arrForm.order_addr02|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">電話番号</th>
                        <td><!--{$arrForm.order_tel01}-->-<!--{$arrForm.order_tel02}-->-<!--{$arrForm.order_tel03}--></td>
                    </tr>
                    <tr>
                        <th scope="row">FAX番号</th>
                        <td>
                            <!--{if $arrForm.order_fax01 > 0}-->
                                <!--{$arrForm.order_fax01}-->-<!--{$arrForm.order_fax02}-->-<!--{$arrForm.order_fax03}-->
                            <!--{/if}-->
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">メールアドレス</th>
                        <td><!--{$arrForm.order_email|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">性別</th>
                        <td><!--{$arrSex[$arrForm.order_sex]|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">職業</th>
                        <td><!--{$arrJob[$arrForm.order_job]|default:'(未登録)'|h}--></td>
                    </tr>
                    <tr>
                        <th scope="row">生年月日</th>
                        <td>
                            <!--{$arrForm.order_birth|regex_replace:"/ .+/":""|regex_replace:"/-/":"/"|default:'(未登録)'|h}-->
                        </td>
                    </tr>
                </tbody>
            </table>

            <!--{* ▼お届け先 *}-->
            <!--{foreach item=shippingItem from=$arrShipping name=shippingItem}-->
                <h3>お届け先<!--{if $is_multiple}--><!--{$smarty.foreach.shippingItem.iteration}--><!--{/if}--></h3>
                <!--{if $is_multiple}-->
                    <table summary="ご注文内容確認">
                        <col width="10%" />
                        <col width="60%" />
                        <col width="20%" />
                        <col width="10%" />
                        <tr>
                            <th scope="col">商品写真</th>
                            <th scope="col">商品名</th>
                            <th scope="col">数量</th>
                            <th scope="col">小計</th>
                        </tr>
                        <!--{foreach item=item from=$shippingItem.shipment_item}-->
                            <tr>
                                <td class="alignC">
                                    <a
                                        <!--{if $item.productsClass.main_image|strlen >= 1}--> href="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->" class="expansion" target="_blank"
                                        <!--{/if}-->
                                    >
                                        <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->" style="max-width: 65px;max-height: 65px;" alt="<!--{$item.productsClass.name|h}-->" /></a>
                                </td>
                                <td><!--{* 商品名 *}--><strong><!--{$item.productsClass.name|h}--></strong><br />
                                    <!--{if $item.productsClass.classcategory_name1 != ""}-->
                                        <!--{$item.productsClass.class_name1}-->：<!--{$item.productsClass.classcategory_name1}--><br />
                                    <!--{/if}-->
                                    <!--{if $item.productsClass.classcategory_name2 != ""}-->
                                        <!--{$item.productsClass.class_name2}-->：<!--{$item.productsClass.classcategory_name2}-->
                                    <!--{/if}-->
                                </td>
                                <td class="alignC"><!--{$item.quantity}--></td>
                                <td class="alignR">
                                    <!--{$item.total_inctax|number_format}-->円
                                </td>
                            </tr>
                        <!--{/foreach}-->
                    </table>
                <!--{/if}-->

                <table summary="お届け先確認" class="delivname">
                    <col width="30%" />
                    <col width="70%" />
                    <tbody>
                        <tr>
                            <th scope="row">お名前</th>
                            <td><!--{$shippingItem.shipping_name01|h}--> <!--{$shippingItem.shipping_name02|h}--></td>
                        </tr>
                        <tr>
                            <th scope="row">お名前(フリガナ)</th>
                            <td><!--{$shippingItem.shipping_kana01|h}--> <!--{$shippingItem.shipping_kana02|h}--></td>
                        </tr>
                        <tr>
                            <th scope="row">会社名</th>
                            <td><!--{$shippingItem.shipping_company_name|h}--></td>
                        </tr>
                        <!--{if $smarty.const.FORM_COUNTRY_ENABLE}-->
                        <tr>
                            <th scope="row">国</th>
                            <td><!--{$arrCountry[$shippingItem.shipping_country_id]|h}--></td>
                        </tr>
                        <tr>
                            <th scope="row">ZIPCODE</th>
                            <td><!--{$shippingItem.shipping_zipcode|h}--></td>
                        </tr>
                        <!--{/if}-->
                        <tr>
                            <th scope="row">郵便番号</th>
                            <td>〒<!--{$shippingItem.shipping_zip01|h}-->-<!--{$shippingItem.shipping_zip02|h}--></td>
                        </tr>
                        <tr>
                            <th scope="row">住所</th>
                            <td><!--{$arrPref[$shippingItem.shipping_pref]}--><!--{$shippingItem.shipping_addr01|h}--><!--{$shippingItem.shipping_addr02|h}--></td>
                        </tr>
                        <tr>
                            <th scope="row">電話番号</th>
                            <td><!--{$shippingItem.shipping_tel01}-->-<!--{$shippingItem.shipping_tel02}-->-<!--{$shippingItem.shipping_tel03}--></td>
                        </tr>
                        <tr>
                            <th scope="row">FAX番号</th>
                            <td>
                                <!--{if $shippingItem.shipping_fax01 > 0}-->
                                    <!--{$shippingItem.shipping_fax01}-->-<!--{$shippingItem.shipping_fax02}-->-<!--{$shippingItem.shipping_fax03}-->
                                <!--{/if}-->
                            </td>
                        </tr>
                        <!--{if $cartKey != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
                            <tr>
                                <th scope="row">お届け日</th>
                                <td><!--{$shippingItem.shipping_date|default:"指定なし"|h}--></td>
                            </tr>
                            <tr>
                                <th scope="row">お届け時間</th>
                                <td><!--{$shippingItem.shipping_time|default:"指定なし"|h}--></td>
                            </tr>
                        <!--{/if}-->
                    </tbody>
                </table>
            <!--{/foreach}-->
            <!--{* ▲お届け先 *}-->

            <h3>配送方法・お支払方法・その他お問い合わせ</h3>
            <table summary="配送方法・お支払方法・その他お問い合わせ" class="delivname">
                <col width="30%" />
                <col width="70%" />
                <tbody>
                <tr>
                    <th scope="row">配送方法</th>
                    <td><!--{$arrDeliv[$arrForm.deliv_id]|h}--></td>
                </tr>
                <tr>
                    <th scope="row">お支払方法</th>
                    <td><!--{$arrForm.payment_method|h}--></td>
                </tr>
                <tr>
                    <th scope="row">その他お問い合わせ</th>
                    <td><!--{$arrForm.message|h|nl2br}--></td>
                </tr>
                </tbody>
            </table>

            <div class="btn_area">
                <a href="./payment.php" class="btn">戻る</a>
                <!--{if $use_module}-->
                    <input type="submit" onclick="return fnCheckSubmit();" value="次へ" name="next" id="next" class="btn"/>
                <!--{else}-->
                    <input type="submit" onclick="return fnCheckSubmit();" value="注文を確定する"  name="next" id="next" class="btn btn-default"/>
                <!--{/if}-->
                </ul>
            </div>
        </form>
    </div>
</div>
