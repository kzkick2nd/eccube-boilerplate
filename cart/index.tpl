<div id="undercolumn">
    <div id="undercolumn_cart">
        <h2><!--{$tpl_title|h}--></h2>

        <!--{if $smarty.const.USE_POINT !== false || count($arrProductsClass) > 0}-->
            <!--★ポイント案内★-->
            <!--{if $smarty.const.USE_POINT !== false}-->
                <div class="point_announce">
                    <!--{if $tpl_login}-->
                        <span class="user_name"><!--{$tpl_name|h}--> 様</span>の、現在の所持ポイントは「<span class="point"><!--{$tpl_user_point|number_format|default:0|h}--> pt</span>」です。<br />
                    <!--{else}-->
                        ポイント制度をご利用になられる場合は、会員登録後ログインしてくださいますようお願い致します。<br />
                    <!--{/if}-->
                    ポイントは商品購入時に<span class="price">1pt＝<!--{$smarty.const.POINT_VALUE|h}-->円</span>として使用することができます。<br />
                </div>
            <!--{/if}-->
        <!--{/if}-->

        <p class="totalmoney_area">
            <!--{* カゴの中に商品がある場合にのみ表示 *}-->
            <!--{if count($cartKeys) > 1}-->
                <span class="attentionSt"><!--{foreach from=$cartKeys item=key name=cartKey}--><!--{$arrProductType[$key]|h}--><!--{if !$smarty.foreach.cartKey.last}-->、<!--{/if}--><!--{/foreach}-->は同時購入できません。<br />
                    お手数ですが、個別に購入手続きをお願い致します。
                </span>
            <!--{/if}-->

            <!--{if strlen($tpl_error) != 0}-->
                <p class="attention"><!--{$tpl_error|h}--></p>
            <!--{/if}-->

            <!--{if strlen($tpl_message) != 0}-->
                <p class="attention"><!--{$tpl_message|h|nl2br}--></p>
            <!--{/if}-->
        </p>

        <!--{if count($cartItems) > 0}-->
            <!--{foreach from=$cartKeys item=key}-->
                <div class="form_area">
                    <form name="form<!--{$key|h}-->" id="form<!--{$key|h}-->" method="post" action="?">
                        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME|h}-->" value="<!--{$transactionid|h}-->" />
                        <input type="hidden" name="mode" value="confirm" />
                        <input type="hidden" name="cart_no" value="" />
                        <input type="hidden" name="cartKey" value="<!--{$key|h}-->" />
                        <input type="hidden" name="category_id" value="<!--{$tpl_category_id|h}-->" />
                        <input type="hidden" name="product_id" value="<!--{$tpl_product_id|h}-->" />
                        <!--{if count($cartKeys) > 1}-->
                            <h3><!--{$arrProductType[$key]|h}--></h3>
                            <!--{assign var=purchasing_goods_name value=$arrProductType[$key]}-->
                        <!--{else}-->
                            <!--{assign var=purchasing_goods_name value="カゴの中の商品"}-->
                        <!--{/if}-->
                        <p>
                            <!--{$purchasing_goods_name|h}-->の合計金額は「<span class="price"><!--{$tpl_total_inctax[$key]|number_format|h}-->円</span>」です。
                            <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
                                <!--{if $arrInfo.free_rule > 0}-->
                                    <!--{if !$arrData[$key].is_deliv_free}-->
                                        あと「<span class="price"><!--{$tpl_deliv_free[$key]|number_format|h}-->円</span>」で送料無料です！！
                                    <!--{else}-->
                                        現在、「<span class="attention">送料無料</span>」です！！
                                    <!--{/if}-->
                                <!--{/if}-->
                            <!--{/if}-->
                        </p>

                        <table summary="商品情報">
                            <col width="10%" />
                            <col width="15%" />
                            <col width="30%" />
                            <col width="15%" />
                            <col width="15%" />
                            <col width="15%" />
                            <tr>
                                <th class="alignC">削除</th>
                                <th class="alignC">商品写真</th>
                                <th class="alignC">商品名</th>
                                <th class="alignC">単価</th>
                                <th class="alignC">数量</th>
                                <th class="alignC">小計</th>
                            </tr>
                            <!--{foreach from=$cartItems[$key] item=item}-->
                                <tr style="<!--{if $item.error}-->background-color: <!--{$smarty.const.ERR_COLOR|h}-->;<!--{/if}-->">
                                    <td class="alignC"><a href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->', 'delete', 'cart_no', '<!--{$item.cart_no|h}-->'); return false;">削除</a>
                                    </td>
                                    <td class="alignC">
                                    <!--{if $item.productsClass.main_image|strlen >= 1}-->
                                        <a class="expansion" target="_blank" href="<!--{$smarty.const.IMAGE_SAVE_URLPATH|h}--><!--{$item.productsClass.main_image|sfNoImageMainList|h}-->">
                                    <!--{/if}-->
                                            <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->" style="max-width: 65px;max-height: 65px;" alt="<!--{$item.productsClass.name|h}-->" />
                                            <!--{if $item.productsClass.main_image|strlen >= 1}-->
                                        </a>
                                    <!--{/if}-->
                                    </td>
                                    <td><!--{* 商品名 *}--><strong><!--{$item.productsClass.name|h}--></strong>
                                        <!--{if $item.productsClass.classcategory_name1 != ""}-->
                                            <div><!--{$item.productsClass.class_name1|h}-->：<!--{$item.productsClass.classcategory_name1|h}--></div>
                                        <!--{/if}-->
                                        <!--{if $item.productsClass.classcategory_name2 != ""}-->
                                            <div><!--{$item.productsClass.class_name2|h}-->：<!--{$item.productsClass.classcategory_name2|h}--></div>
                                        <!--{/if}-->
                                    </td>
                                    <td class="alignR">
                                        <!--{$item.price_inctax|number_format|h}-->円
                                    </td>
                                    <td class="alignC">
                                        <div id="quantity"><!--{$item.quantity|h}--></div>
                                        <div id="quantity_level">
                                            <a href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->','up','cart_no','<!--{$item.cart_no|h}-->'); return false">追加</a>
                                            <!--{if $item.quantity > 1}-->
                                                <a href="?" onclick="eccube.fnFormModeSubmit('form<!--{$key|h}-->','down','cart_no','<!--{$item.cart_no|h}-->'); return false">減らす</a>
                                            <!--{/if}-->
                                        </div>
                                    </td>
                                    <td class="alignR"><!--{$item.total_inctax|number_format|h}-->円</td>
                                </tr>
                            <!--{/foreach}-->
                            <tr>
                                <th colspan="5" class="alignR">小計</th>
                                <td class="alignR"><!--{$tpl_total_inctax[$key]|number_format|h}-->円</td>
                            </tr>
                            <tr>
                                <th colspan="5" class="alignR">合計</th>
                                <td class="alignR"><span class="price"><!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format|h}-->円</span></td>
                            </tr>
                            <!--{if $smarty.const.USE_POINT !== false}-->
                                <!--{if $arrData[$key].birth_point > 0}-->
                                    <tr>
                                        <th colspan="5" class="alignR">お誕生月ポイント</th>
                                        <td class="alignR"><!--{$arrData[$key].birth_point|number_format|h}-->pt</td>
                                    </tr>
                                <!--{/if}-->
                                <tr>
                                    <th colspan="5" class="alignR">今回加算ポイント</th>
                                    <td class="alignR"><!--{$arrData[$key].add_point|number_format|h}-->pt</td>
                                </tr>
                            <!--{/if}-->
                        </table>
                        <!--{if strlen($tpl_error) == 0}-->
                            <p class="alignC">上記内容でよろしければ「購入手続きへ」ボタンをクリックしてください。</p>
                        <!--{/if}-->
                        <div class="btn_area">
                            <!--{if $tpl_prev_url != ""}-->
                                <a href="<!--{$tpl_prev_url|h}-->" class="btn">戻る</a>
                            <!--{/if}-->
                            <!--{if strlen($tpl_error) == 0}-->
                                <input type="submit" value="レジに進む" name="confirm" class="btn btn-default"/>
                            <!--{/if}-->
                        </div>
                    </form>
                </div>
            <!--{/foreach}-->
        <!--{else}-->
            <p class="empty"><span class="attention">※ 現在カート内に商品はございません。</span></p>
        <!--{/if}-->
    </div>
</div>
