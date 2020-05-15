{namespace name="frontend/detail/description"}

{* Offcanvas buttons *}
{block name='frontend_detail_description_buttons_offcanvas'}
    <div class="buttons--off-canvas">
        {block name='frontend_detail_description_buttons_offcanvas_inner'}
            {s name="OffcanvasCloseMenu" namespace="frontend/detail/description" assign="snippetOffcanvasCloseMenu"}{/s}
            <a href="#" title="{$snippetOffcanvasCloseMenu|escape}" class="close--off-canvas">
                <i class="icon--arrow-left"></i>
                {s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}
            </a>
        {/block}
    </div>
{/block}

{block name="frontend_detail_description"}
<div class="content--description">

    {* Headline *}
    {block name='frontend_detail_description_title'}
        <div class="content--title">
            {s name="DetailDescriptionHeader"}{/s} "{$sArticle.articleName}"
        </div>
    {/block}

    {* Product description *}
    {block name='frontend_detail_description_text'}
        <div class="product--description" itemprop="description">
            {$sArticle.description_long}
        </div>
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
    {/block}

    {* Product - Further links *}
    {block name='frontend_detail_description_links'}
        {* Further links title *}
        {block name='frontend_detail_description_links_title'}
            <div class="content--title">
            </div>
        {/block}

        {* Links list *}
        {block name='frontend_detail_description_links_list'}
            <ul class="content--list list--unstyled">
                {block name='frontend_detail_actions_contact'}
                    {*if $sInquiry}
                        <li class="list--entry">
                            {s name="DetailLinkContact" namespace="frontend/detail/actions" assign="snippetDetailLinkContact"}{/s}
                            <a href="{$sInquiry}" rel="nofollow" class="content--link link--contact" title="{$snippetDetailLinkContact|escape}">
                                <i class="fal fa-chevron-right"></i> {s name="DetailLinkContact" namespace="frontend/detail/actions"}{/s}
                            </a>
                        </li>
                    {/if*}

                {/block}

                {* Product SKU *}
                {block name='frontend_detail_data_ordernumber'}
                    <li class="list--entry">{s name="DetailBottomArtikelnr" namespace="frontend/detail/actions"}Artikel-Nr.:{/s} {$sArticle.ordernumber} </li>
                {/block}


                {foreach $sArticle.sLinks as $information}
                    {if $information.supplierSearch}

                        {* Vendor landing page link *}
                        {block name='frontend_detail_description_links_supplier'}
                            {*
                            <li class="list--entry">
                                {s name="DetailDescriptionLinkInformation" assign="snippetDetailDescriptionLinkInformation"}{/s}
                                <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
                                   target="{$information.target}"
                                   class="content--link link--supplier"
                                   title="{$snippetDetailDescriptionLinkInformation|escape}">
                                    <i class="fal fa-chevron-right"></i> {s name="DetailDescriptionLinkInformation"}{/s}
                                </a>
                            </li>
                            *}
                        {/block}
                    {else}

                        {* Links which will be added throught the administration *}
                        {block name='frontend_detail_description_links_link'}
                           {*
                            <li class="list--entry">
                                <a href="{$information.link}"
                                   target="{if $information.target}{$information.target}{else}_blank{/if}"
                                   class="content--link link--further-links"
                                   title="{$information.description|escapeHtml}">
                                    <i class="fal fa-chevron-right"></i> {$information.description|escapeHtml}
                                </a>
                            </li>
                            *}
                        {/block}
                    {/if}
                {/foreach}


                {* Downloads list *}

                {block name='frontend_detail_description_downloads_content'}
                    {if $sArticle.sDownloads}
                    <ul class="content--list list--unstyled">
                        {foreach $sArticle.sDownloads as $download}
                            {block name='frontend_detail_description_downloads_content_link'}
                                <li class="list--entry">
                                    {s name="DetailDescriptionLinkDownload" assign="snippetDetailDescriptionLinkDownload"}{/s}
                                    <a href="{$download.filename}" target="_blank" class="content--link link--download" title="{$snippetDetailDescriptionLinkDownload|escape} {$download.description|escape}">
                                        <i class="fal fa-file-pdf"></i> {s name="DetailDescriptionLinkDownload"}{/s} {$download.description}
                                    </a>
                                </li>
                            {/block}
                        {/foreach}
                    </ul>
                    {/if}
                {/block}


            </ul>
        {/block}
    {/block}

    {* Downloads *}
    {block name='frontend_detail_description_downloads'}
    {* Downloads title *}
    {/block}

    {* Comment - Item open text fields attr3 *}
    {block name='frontend_detail_description_our_comment'}
        {if $sArticle.attr3}

            {* Comment title  *}
            {block name='frontend_detail_description_our_comment_title'}
                <div class="content--title">
                    {s name='DetailDescriptionComment'}{/s} "{$sArticle.articleName}"
                </div>
            {/block}

            {block name='frontend_detail_description_our_comment_title_content'}
                <blockquote class="content--quote">{$sArticle.attr3}</blockquote>
            {/block}
        {/if}
    {/block}
</div>
{/block}
