<!--{strip}-->
    <div <!--{if $treeID != ""}-->id="<!--{$treeID}-->"<!--{/if}--> style="<!--{if !$display}-->display: none;<!--{/if}-->">
        <!--{foreach from=$children item=child}-->
            <div class="level<!--{$child.level}--><!--{if in_array($child.category_id, $tpl_category_id)}--> onmark<!--{/if}-->">
                <p><a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$child.category_id}-->"<!--{if in_array($child.category_id, $tpl_category_id)}--> class="onlink"<!--{/if}-->><!--{$child.category_name|h}--></a></p>
                <!--{if in_array($child.category_id, $arrParentID)}-->
                    <!--{assign var=disp_child value=1}-->
                <!--{else}-->
                    <!--{assign var=disp_child value=1}-->
                <!--{/if}-->
                <!--{if isset($child.children|smarty:nodefaults)}-->
                    <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/bloc/categoryIndex_tree_fork_children.tpl" children=$child.children display=$disp_child}-->
                <!--{/if}-->
            </div>
        <!--{/foreach}-->
    </div>
<!--{/strip}-->
