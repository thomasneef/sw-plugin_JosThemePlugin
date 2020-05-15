{extends file="parent:frontend/detail/tabs/description.tpl"}
{namespace name="frontend/detail/description"}


{* Headline *}
{block name='frontend_detail_description_title'}
	<div class="content--title">
		{if $theme.artikel_show_produktinformationen_title == 1}{s name="DetailDescriptionHeader"}{/s} "{$sArticle.articleName}"{/if}
	</div>
{/block}


{* Further links title *}
{block name='frontend_detail_description_links_title'}
{if !$theme.weiterfuehrende_links}
	<div class="content--title">
		{s name="ArticleTipMoreInformation"}{/s} "{$sArticle.articleName}"
	</div>
{/if}
{/block}



    {* Properties *}
    {block name='frontend_detail_description_properties'}
        {if $sArticle.sProperties}
            <div class="product--properties panel has--border">
                <table class="product--properties-table">
                    {foreach $sArticle.sProperties as $sProperty}
                        <tr class="product--properties-row">
                            {* Property label *}
                            {block name='frontend_detail_description_properties_label'}
                                <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                            {/block}

                            {* Property content *}
                            {block name='frontend_detail_description_properties_content'}
                                <td class="product--properties-value">{$sProperty.value|escape}</td>
                            {/block}
                        </tr>
                    {/foreach}
                </table>
            </div>
        {/if}

                {* Product SKU *}
                {block name='frontend_detail_data_ordernumber'}
                    <div class="base-info--entry entry--sku">

                        {* Product SKU - Label *}
                        {block name='frontend_detail_data_ordernumber_label'}
                            <span class="entry--label">
                                {s name="DetailDataId" namespace="frontend/detail/data"}{/s}
                            </span>
                        {/block}

                        {* Product SKU - Content *}
                        {block name='frontend_detail_data_ordernumber_content'}
                            <meta itemprop="productID" content="{$sArticle.articleDetailsID}"/>
                            <span class="entry--content" itemprop="sku">
                                {$sArticle.ordernumber}
                            </span>
                        {/block}
                    </div>
                {/block}


    {/block}


{* Links list *}
{block name='frontend_detail_description_links_list'}
{if !$theme.weiterfuehrende_links}
	<ul class="content--list list--unstyled d-none">
		{block name='frontend_detail_actions_contact'}
			<li class="list--entry">
				<a href="{$sInquiry}" rel="nofollow" class="content--link link--contact" title="{"{s name='DetailLinkContact' namespace="frontend/detail/actions"}{/s}"|escape}">
					<i class="icon--arrow-right"></i> {s name="DetailLinkContact" namespace="frontend/detail/actions"}{/s}
				</a>
			</li>
		{/block}

		{foreach $sArticle.sLinks as $information}
			{if $information.supplierSearch}

				{* Vendor landing page link *}
				{block name='frontend_detail_description_links_supplier'}
					<li class="list--entry" {if $theme.weitere_artikel_von == 1}data-showsu="no"{/if}>
						<a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
						   target="{$information.target}"
						   class="content--link link--supplier"
						   title="{"{s name="DetailDescriptionLinkInformation"}{/s}"|escape}">

							<i class="icon--arrow-right"></i> {s name="DetailDescriptionLinkInformation"}{/s}
						</a>
					</li>
				{/block}
			{else}

				{* Links which will be added throught the administration *}
				{block name='frontend_detail_description_links_link'}
					<li class="list--entry">
						<a href="{$information.link}"
						   target="{if $information.target}{$information.target}{else}_blank{/if}"
						   class="content--link link--further-links"
						   title="{$information.description}">
							<i class="icon--arrow-right"></i> {$information.description}
						</a>
					</li>
				{/block}
			{/if}
		{/foreach}
	</ul>
{/if}
{/block}


            {* Downloads list *}
            {block name='frontend_detail_description_downloads_content'}
                <ul class="content--list list--unstyled">
                    {foreach $sArticle.sDownloads as $download}
                        {block name='frontend_detail_description_downloads_content_link'}
                            <li class="list--entry">
                                {s name="DetailDescriptionLinkDownload" assign="snippetDetailDescriptionLinkDownload"}{/s}
                                <a href="{$download.filename}" target="_blank" class="content--link link--download" title="{$snippetDetailDescriptionLinkDownload|escape} {$download.description|escape}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"><path d="M11.362 2c4.156 0 2.638 6 2.638 6s6-1.65 6 2.457v11.543h-16v-20h7.362zm.827-2h-10.189v24h20v-14.386c0-2.391-6.648-9.614-9.811-9.614zm4.811 13h-10v-1h10v1zm0 2h-10v1h10v-1zm0 3h-10v1h10v-1z"/></svg>
									{s name="DetailDescriptionLinkDownload"}{/s} {$download.description}
                                </a>
                            </li>
                        {/block}
                    {/foreach}
                </ul>
            {/block}

