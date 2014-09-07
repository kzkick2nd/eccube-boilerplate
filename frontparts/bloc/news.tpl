<!--{strip}-->
    <div class="block_outer">
        <div id="news_area">
            <h2>新着情報<span class="rss"><a href="<!--{$smarty.const.ROOT_URLPATH}-->rss/<!--{$smarty.const.DIR_INDEX_PATH}-->" target="_blank">RSS</a></span></h2>
            <div class="block_body">
                <div class="news_contents">
                <!--{section name=data loop=$arrNews}-->
                <!--{assign var="date_array" value="-"|explode:$arrNews[data].cast_news_date}-->
                <dl class="newslist">
                    <dt><!--{$date_array[0]}-->年<!--{$date_array[1]}-->月<!--{$date_array[2]}-->日</dt>
                    <dt>
                        <a
                            <!--{if $arrNews[data].news_url}--> href="<!--{$arrNews[data].news_url}-->" <!--{if $arrNews[data].link_method eq "2"}--> target="_blank"
                                <!--{/if}-->
                            <!--{/if}-->
                        >
                            <!--{$arrNews[data].news_title|h|nl2br}--></a>
                    </dt>
                    <dd class="mini"><!--{$arrNews[data].news_comment|h|nl2br}--></dd>
                </dl>
                <!--{/section}-->
                </div>
            </div>
        </div>
    </div>
<!--{/strip}-->
