{* Footer menu *}
{block name='frontend_index_footer_first'}
    <div class="footer--columns-firstrow ">

        <div class="footer--columns-block-wir">
            {block name="frontend_index_footer_column_wir_headline"}
                <div class="footer--columns--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceWir"} Über Uns{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_service_wir_content"}
                <div class="column--content"> <p>Wir lieben Sport! Und wir lieben Action! <br>Deshalb haben wir es uns zur Aufgabe gemacht nicht einfach nur Airsofts, Druckluftwaffen, Munition und Zubehör im Internet zu verkaufen, sondern dir ein ganz besonderes Kauferlebnis zu schaffen. Ein Kauferlebnis, welches wir selbst bislang vermisst haben.</p> <p>Denn wir, das Team vom ActionShop24, wissen worauf man bei unseren Produkten achten muss. Wir testen am liebsten all unsere Produkte selbst und arbeiten ausschließlich mit renommierten Herstellern zusammen.</p> <p>Was uns zusätzlich einzigartig macht ist die Zusammenarbeit mit unabhängigen Produkttestern und Influencern. So haben wir immer den perfekten Überblick über den Markt, bekommen direktes Feedback und können euch alles für perfekte Action anbieten.</p> <p>Also, schaue dich bei uns im Shop gerne um, nimm bei Fragen Kontakt mit uns auf und vor allem: Habe Spaß und maximale Action mit unseren Produkten!</p> <p>Dein Team vom ActionShop24</p> </div>
            {/block}
        </div>

        <div class="footer--columns-block-info">
            {block name="frontend_index_footer_column_info_headline"}
                <div class="footer--columns--headline">{s name="sFooterShopNavi2"}Informationen{/s}</div>
            {/block}

            {block name="frontend_index_footer_column_service_wir_content"}
                <nav class="column--navigation column--content">
                    <ul class="navigation--list" role="menu">
                        {block name="frontend_index_footer_column_information_menu_before"}{/block}
                        {foreach $sMenu.bottom2 as $item}

                            {block name="frontend_index_footer_column_information_menu_entry"}
                                <li class="navigation--entry" role="menuitem">
                                    <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                        {$item.description}
                                    </a>

                                    {* Sub categories *}
                                    {if $item.childrenCount > 0}
                                        <ul class="navigation--list is--level1" role="menu">
                                            {foreach $item.subPages as $subItem}
                                                <li class="navigation--entry" role="menuitem">
                                                    <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                        {$subItem.description}
                                                    </a>
                                                </li>
                                            {/foreach}
                                        </ul>
                                    {/if}
                                </li>
                            {/block}
                        {/foreach}
                        {block name="frontend_index_footer_column_information_menu_after"}{/block}
                    </ul>
                </nav>
            {/block}
        </div>
    </div>
{/block}

{* SECOND ROW *}
{block name='frontend_index_footer_first'}
<div class="footer--columns-secondrow ">

    <div class="footer--columns-block">
        {block name="frontend_index_footer_column_wir_headline"}
            <div class="footer--columns--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceHotlineHead"}Service Chat{/s}</div>
        {/block}
        {block name="frontend_index_footer_column_service_wir_content"}
            <p class="column--desc">{s  namespace="frontend/index/menu_footer" name="sFooterServiceHotline"}{/s}</p>
        {/block}
    </div>

    <div class="footer--columns-block">
        {block name="frontend_index_footer_column_social_headline"}
            <div class="footer--columns--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceSocialHead"}unsere Communitys{/s}</div>
        {/block}
        {block name="frontend_index_footer_column_social_content"}
            {block name="frontend_index_footer_column_shipping_content"}
                <div class="footer--columns--grid-items">
                        <div class="footer--columns--items-social item-facebook grayscale"></div>
                </div>
            {/block}
        {/block}
    </div>

    <div class="footer--columns-block">
        {block name="frontend_index_footer_column_payments_headline"}
            <div class="footer--columns--headline">{s namespace="frontend/index/menu_footer" name="sFooterServicePaymentsHead"}unsere Zahlungsarten{/s}</div>
        {/block}
        {block name="frontend_index_footer_column_payments_content"}
            {block name="frontend_index_footer_column_shipping_content"}
                <div class="footer--columns--grid-items">
                    {if $theme.show_amazon_icon}
                        <div class="footer--columns--items item-amazon grayscale" ></div>
                    {/if}
                        <div class="footer--columns--items item-nachnahme grayscale" ></div>
                        <div class="footer--columns--items item-vorkasse grayscale" ></div>
                    {if $theme.show_klarna_icon}
                        <div class="footer--columns--items item-klarna grayscale" ></div>
                    {/if}
                </div>
            {/block}
        {/block}
    </div>

    <div class="footer--columns-block">
        {block name="frontend_index_footer_column_shipping_headline"}
            <div class="footer--columns--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceShippingsHead"}Wir versenden mit{/s}</div>
        {/block}
        {block name="frontend_index_footer_column_shipping_content"}
            <div class="footer--columns--grid-items">
                {if $theme.show_dpd_icon}
                <div class="footer--columns--items item-dpd grayscale" ></div>
                {/if}
                {if $theme.show_dhl_icon}
                <div class="footer--columns--items item-dhl grayscale" ></div>
                {/if}
                {if $theme.show_gls_icon}
                <div class="footer--columns--items item-gls grayscale" ></div>
                {/if}
            </div>
        {/block}
    </div>
</div>
{/block}