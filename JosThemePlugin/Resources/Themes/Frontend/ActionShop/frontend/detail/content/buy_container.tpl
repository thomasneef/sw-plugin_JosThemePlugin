{extends file="parent:frontend/detail/content/buy_container.tpl"}

{block name="frontend_detail_rich_snippets_brand"}
{include file="frontend/detail/content/header.tpl"}
{$smarty.block.parent}
{/block}

{block name='frontend_detail_data_attributes'}
{/block}

{block name='frontend_detail_data_ordernumber'}
{$smarty.block.parent}
<li class="base-info--entry">
    <strong class="entry--label">
        {s name="DetailDataOrangebytesBrand" namespace="frontend/detail/data"}Marke{/s}:
    </strong>

    <span class="entry--content">
        {$sArticle.supplierName}
    </span>
</li>
{/block}