<!--{strip}-->
    <div <!--{if $treeID != ""}-->id="<!--{$treeID}-->"<!--{/if}--> style="<!--{if !$display}-->display: none;<!--{/if}-->">
        <!--{foreach from=$children item=child}-->
            <div class="level<!--{$child.level}--><!--{if in_array($child.category_id, $tpl_category_id)}--> onmark<!--{/if}--> category_index_list">
                <h3><!--{$child.category_name|h}--></h3>
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
