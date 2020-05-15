{extends file="parent:frontend/detail/content/buy_container.tpl"}

{block name="frontend_detail_rich_snippets_brand"}
{include file="frontend/detail/content/header.tpl"}
{$smarty.block.parent}
{/block}


{* Product - Base information *}
{block name='frontend_detail_index_buy_container_base_info'}
    <div class="jos-product--base-info ">

        {* Product SKU *}
        {block name='frontend_detail_data_ordernumber'}
        {/block}

        {* Product attributes fields *}
        {block name='frontend_detail_data_attributes'}

            {* Product attribute 1 *}
            {block name='frontend_detail_data_attributes_attr1'}
            {/block}

            {* Product attribute 2 *}
            {block name='frontend_detail_data_attributes_attr2'}
            {/block}

            {* Product - Supplier information *}
            {block name='frontend_detail_supplier_info'}
                {$productSupplierClasses = 'jos-product--supplier'}
                {$imgSrc = $sArticle.supplierImg}
                {$imgSrcSet = ''}
                {if $sArticle.supplierMedia.thumbnails[0].source}
                    {$imgSrc = $sArticle.supplierMedia.thumbnails[0].source}

                    {if $sArticle.supplierMedia.thumbnails[0].retinaSource}
                        {$retinaSource = $sArticle.supplierMedia.thumbnails[0].retinaSource}
                        {$imgSrcSet = "$imgSrc, $retinaSource 2x"}
                    {/if}

                    {if $sArticle.supplierMedia.extension == 'svg'}
                        {$productSupplierClasses = $productSupplierClasses|cat:' image--svg'}
                    {/if}
                {/if}

                {if $imgSrc}
                    <div class="{$productSupplierClasses}">
                        {s name="DetailDescriptionLinkInformation" namespace="frontend/detail/description" assign="snippetDetailDescriptionLinkInformation"}{/s}
                        <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
                           title="{$snippetDetailDescriptionLinkInformation|escape}"
                           class="product--supplier-link">
                            <img src="{$imgSrc}" {if !empty($imgSrcSet)}srcset="{$imgSrcSet}" {/if} alt="{$sArticle.supplierName|escape}">
                        </a>
                    </div>
                {/if}
            {/block}

            {* USPs ergänzen *}
            {block name='frontend_detail_data_usps'}
                <div id="usp-artikelbox" class="usp-artikelbox">
                    <ul class="usp-artikelbox-ul">
                    {s name="jos_usp_list_detailbottom" namespace="frontend/detail"}
                            <li class="usp-artikelbox-li"> <i class="far fa-check detail-usp-icon"></i> Du hast Fragen zu einem Produkt? Nutze unseren Live Chat</li>
                            <li class="usp-artikelbox-li"> <i class="far fa-check detail-usp-icon"></i> Du brauchst eine Spezialausstattung? Wir kümmern uns darum</li>
                            <li class="usp-artikelbox-li"> <i class="far fa-check detail-usp-icon"></i> Du benötigst Hilfe mit deiner Ausstattung? Wir helfen dir gerne weiter</li>
                    {/s}
                    </ul>
                </div>
            {/block}


        {/block}
    </div>
{/block}