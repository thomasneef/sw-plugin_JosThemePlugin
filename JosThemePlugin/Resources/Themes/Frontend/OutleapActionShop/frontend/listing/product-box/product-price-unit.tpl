{extends file='parent:frontend/listing/product-box/product-price-unit.tpl'}
{* tneef -> 04.05.2020 | Unit price *}
{namespace name="frontend/listing/box_article"}
{$hasPurchaseUnit = $sArticle.purchaseunit && $sArticle.purchaseunit != 0}
{$hasReferenceUnit = $sArticle.purchaseunit && $sArticle.referenceunit && $sArticle.purchaseunit != $sArticle.referenceunit}

{if $hasPurchaseUnit}
    {$purchaseUnit = "{$sArticle.purchaseunit} {$sArticle.sUnit.description}"}
    {$tooltip = "{$tooltip} {$purchaseUnit|escape:'html'}"}
{/if}

{if $hasReferenceUnit}
    {$price = "{$sArticle.referenceprice|currency}"}
    {$unit = "/ {$sArticle.referenceunit} {$sArticle.sUnit.description}"}
    {$referenceUnit = "({$price} {$unit|escape:'html'})"}
    {$tooltip = "{$tooltip} {$referenceUnit}"}
{/if}



<div class="price--unit">

    {* Price is based on the purchase unit *}
    {if $sArticle.purchaseunit && $sArticle.purchaseunit != 0 && $sArticle.referenceprice}

        {* Unit price label *}
        {block name='frontend_listing_box_article_unit_label'}
            <span class="price--label label--purchase-unit is--bold is--nowrap">
                {s name="ListingBoxArticleContent"}{/s}
            </span>
        {/block}

        {* Unit price content *}
        {block name='frontend_listing_box_article_unit_content'}
            <span class="is--nowrap">
                {$sArticle.purchaseunit} {$sArticle.sUnit.description}
            </span>
        {/block}
    {/if}

    {* Unit price is based on a reference unit *}
    {if $sArticle.purchaseunit && $sArticle.purchaseunit != $sArticle.referenceunit}

        {* Reference unit price content *}
        {block name='frontend_listing_box_article_unit_reference_content'}
            <span class="is--nowrap">
                ({$sArticle.referenceprice|currency} / {$sArticle.referenceunit} {$sArticle.sUnit.unit})
            </span>
        {/block}
    {/if}
</div>


