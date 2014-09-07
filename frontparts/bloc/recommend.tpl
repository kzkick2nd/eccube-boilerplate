<!--{strip}-->
    <!--{if count($arrBestProducts) > 0}-->
        <div class="block_outer clearfix">
            <div id="recommend_area">
                <h2>おすすめ商品情報</h2>
                <div class="block_body clearfix">
                    <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->
                        <div class="product_item clearfix">
                            <div class="productImage">
                                <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
                                    <img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_list_image|sfNoImageMainList|h}-->" style="max-width: 80px;max-height: 80px;" alt="<!--{$arrProduct.name|h}-->" />
                                </a>
                            </div>
                            <div class="productContents">
                                <h3>
                                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a>
                                </h3>
                                <p class="sale_price">
                                    <!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)： <span class="price"><!--{$arrProduct.price02_min_inctax|number_format}--> 円</span>
                                </p>
                                <p class="mini comment"><!--{$arrProduct.comment|h|nl2br}--></p>
                            </div>
                        </div>
                        <!--{if $smarty.foreach.recommend_products.iteration % 2 === 0}-->
                            <div class="clear"></div>
                        <!--{/if}-->
                    <!--{/foreach}-->
                </div>
            </div>
        </div>
    <!--{/if}-->
<!--{/strip}-->
