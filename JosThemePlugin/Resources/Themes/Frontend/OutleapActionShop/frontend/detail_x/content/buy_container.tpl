
{extends file="parent:frontend/detail/content/buy_container.tpl"}
{* Product data *}
{block name='frontend_detail_index_buy_container_inner'}
    {if $theme.artikel_headline_position == 1}

        {* ThemeWare: Bewertungen ergänzen *}
        {* Product rating *}
        {block name="frontend_detail_comments_overview"}
            {if !{config name=VoteDisable}}
                <div class="product--rating-container {if !$sArticle.supplierImg}no-supplier-img{/if}">
                    {s namespace="frontend/detail/actions" name="DetailLinkReview" assign="snippetDetailLinkReview"}{/s}
                    <a href="#product--publish-comment" class="product--rating-link" rel="nofollow" title="{"{s namespace="frontend/detail/actions" name='DetailLinkReview'}{/s}"|escape}">
                        {include file='frontend/_includes/rating.tpl' points=$sArticle.sVoteAverage.average type="aggregated" count=$sArticle.sVoteAverage.count}
                    </a>
                </div>
            {/if}
        {/block}

 

{/if}

	{$smarty.block.parent}
{/block}

{* Product actions *}
{block name="frontend_detail_index_actions"}
	{$smarty.block.parent}

    {* ThemeWare: Button "Fragen zum Artikel" ergänzen *}
	{if $theme.fragen_zum_artikel_in_action == 'button'}
        {block name="frontend_detail_fragen_zum_artikel_in_action"}
            <nav class="product--actions">
                <div>
                    {block name="frontend_detail_fragen_zum_artikel_in_action_before"}{/block}
                    <a href="{$sInquiry}" rel="nofollow" class="btn contact-in-actions" title="{"{s name='DetailLinkContact' namespace="frontend/detail/actions"}{/s}"|escape}">
                        <i class="icon--help"></i> {s name="DetailLinkContact" namespace="frontend/detail/actions"}{/s}
                    </a>
                    {block name="frontend_detail_fragen_zum_artikel_in_action_after"}{/block}
                </div>
            </nav>	
        {/block}
	{/if}
{/block}


{* Regular price *}
{block name='frontend_detail_data_price_default'}
	<span class="price--content content--default">
			<meta itemprop="price" content="{$sArticle.price|replace:',':'.'}">
		{if $sArticle.priceStartingFrom}{s name='ListingBoxArticleStartsAt' namespace="frontend/listing/box_article"}{/s} {/if}{$sArticle.price|currency} 
		</span>
{/block}


{* Product SKU *}
{block name='frontend_detail_data_ordernumber'}
	


       {* ThemeWare: Hersteller-Logo ergänzen *}
        {* Product - Supplier information *}
        {block name='frontend_detail_supplier_info'}
            {$productSupplierClasses = 'product--supplier'}
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





	{* ThemeWare: Hersteller-Nummer ergänzen *}
	{if $theme.artikel_show_herstellernummer == 1 && $sArticle.suppliernumber}
		<li class="base-info--entry">
			{block name='frontend_detail_data_supplier_ordernumber_label'}
				<strong class="entry--label">
					{s name="SupplierDetailDataId" namespace="frontend/detail/data"}Hersteller-Nr.:{/s}
				</strong>
			{/block}

			{block name='frontend_detail_data_supplier_ordernumber_content'}
				<span class="entry--content">
					{$sArticle.suppliernumber}
				</span>
			{/block}
		</li>
	{/if}
	
	{* ThemeWare: Freitextfeld 1 ergänzen *}
	{if $theme.artikel_show_freitext_1 && $sArticle.attr1 !=""}
		<li class="base-info--entry">
			<strong class="entry--label">{s name="sArticleNameAttr1" namespace="frontend/detail/index"}Info:{/s}</strong>
			<span class="entry--content">{$sArticle.attr1}</span>
		</li>
	{/if}
	
	{* ThemeWare: Freitextfeld 2 ergänzen *}
	{if $theme.artikel_show_freitext_2 && $sArticle.attr2 !=""}
		<li class="base-info--entry">
			<strong class="entry--label">{s name="sArticleNameAttr2" namespace="frontend/detail/index"}Info:{/s}</strong>
			<span class="entry--content">{$sArticle.attr2}</span>
		</li>
	{/if}
{/block}

{* Include buy button and quantity box *}
{block name="frontend_detail_index_buybox"}
    {* ThemeWare: Custom Announcement ergänzen *}
    {* TODO: Klasse 'custom_announcment' entfernen *}
    {* @deprecated: Die Klasse 'custom_announcment' wird mit einem kommenden Update entfernt *}
	{if $theme.custom_announcement_article_show}
        {block name="frontend_detail_index_buybox_announcement_tw"}
            <div class="tcinn-custom_announcement custom_announcment">
                <div class="inside">
                    {s name="CustomAnnouncementText"}{$theme.custom_announcement_html}{/s}
                </div>
            </div>
        {/block}
	{/if}

	{$smarty.block.parent}
{/block}

{* Product attributes fields *}
{block name='frontend_detail_data_attributes'}
    {* ThemeWare: USPs ergänzen *}
	{block name='frontend_detail_data_usps'}
		<div id="usp-artikelbox">{s name="outleap_usps_htmlcode" namespace="themes/Outleap_Jagdshop_Theme"}{/s}</div>
	{/block}

    {* ThemeWare: Teilen-Buttons ergänzen *}
	{block name='frontend_detail_data_share_buttons'}
		{if $theme.share_button_1 == 1 OR $theme.share_button_2 == 1 OR $theme.share_button_3 == 1 OR $theme.share_button_4 == 1 OR $theme.share_button_5 == 1 OR $theme.share_button_6 == 1 OR $theme.share_button_7 == 1}
			<div class="share--buttons">
				{if $theme.share_button_1 == 1}<a class="icon-facebook" href="https://www.facebook.com/sharer/sharer.php?u={$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" target="_blank"><span>Facebook</span></a>{/if}
				{if $theme.share_button_4 == 1}<a class="icon-googleplus" href="https://plus.google.com/share?url={$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" target="_blank"><span>Google+</span></a>{/if}
				{if $theme.share_button_3 == 1}<a class="icon-twitter" href="https://twitter.com/intent/tweet?url={if $smarty.server.HTTPS}https://{else}http://{/if}{$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI|urlencode}" target="_blank"><span>Twitter</span></a>{/if}
				{if $theme.share_button_2 == 1}<a class="icon-pinterest" href="https://pinterest.com/pin/create/button/?url={$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}{if $sArticle.image.source}&media={$sArticle.image.source}{/if}{if $sArticle.shortDescription}&description={$sArticle.shortDescription|nl2br}{/if}" target="_blank"><span>Pinterest</span></a>{/if}
				{if $theme.share_button_6 == 1}<a class="icon-whatsapp{if $theme.share_button_6_only_desk == 1} onlydesk{/if}" href="whatsapp://send?text={$sArticle.articleName|strip_tags|replace:'"':''|replace:'&':'-'} - {$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" target="_blank"><span>Whatsapp</span></a>{/if}
				{if $theme.share_button_5 == 1}<a class="icon-email" href="mailto:?subject={$smarty.server.HTTP_HOST}&amp;body={$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}" rel="nofollow" target="_blank"><span>E-Mail</span></a>{/if}
				{if $theme.share_button_7 == 1 && $theme.share_button_7_url}<a class="icon-instagram" href="{$theme.share_button_7_url}" target="_blank"><span>Instagram</span></a>{/if}
			</div>
		{/if}
	{/block}
{/block}
