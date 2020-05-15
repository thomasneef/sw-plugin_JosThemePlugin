{*extends file="parent:frontend/index/footer-navigation.tpl"*}

{* Service Über uns *}
{block name="frontend_index_footer_column_service_about"}
    <div class="footer--column column--about">
        {block name="frontend_index_footer_column_service_about_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceWir"} Über Uns{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_about_content"}
            <div class="column--content content-about">
                <p>Wir lieben Sport! Und wir lieben Action! <br>Deshalb haben wir es uns zur Aufgabe gemacht nicht einfach nur Airsofts, Druckluftwaffen, Munition und Zubehör im Internet zu verkaufen, sondern dir ein ganz besonderes Kauferlebnis zu schaffen. Ein Kauferlebnis, welches wir selbst bislang vermisst haben.</p> <p>Denn wir, das Team vom ActionShop24, wissen worauf man bei unseren Produkten achten muss. Wir testen am liebsten all unsere Produkte selbst und arbeiten ausschließlich mit renommierten Herstellern zusammen.</p> <p>Was uns zusätzlich einzigartig macht ist die Zusammenarbeit mit unabhängigen Produkttestern und Influencern. So haben wir immer den perfekten Überblick über den Markt, bekommen direktes Feedback und können euch alles für perfekte Action anbieten.</p> <p>Also, schaue dich bei uns im Shop gerne um, nimm bei Fragen Kontakt mit uns auf und vor allem: Habe Spaß und maximale Action mit unseren Produkten!</p> <p>Dein Team vom ActionShop24</p>

            </div>
        {/block}
    </div>
{/block}

{* Service INFOMENU *}
{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu ">
        {block name="frontend_index_footer_column_information_menu_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterShopNavi2"}Informationen{/s}</div>
        {/block}
        {block name="frontend_index_footer_column_information_menu_content"}
            <nav class="column--navigation column--content">
                <ul class="navigation--list" role="menu">
                    {block name="frontend_index_footer_column_information_menu_before"}{/block}
                    {foreach $sMenu.bottom2 as $item}

                        {block name="frontend_index_footer_column_information_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    <span class="jos-footer-li-icon"><i class="fas fa-square "></i></span><span class="jos-footer-li-text"> {$item.description}</span>
                                </a>


                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    <span class="jos-footer-li-icon"><i class="fas fa-square "></i></span> <span class="jos-footer-li-text">{$subItem.description}</span>
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
{/block}



{* Service Chat *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline ">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceHotlineHead"}Service Chat{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">{s  namespace="frontend/index/menu_footer" name="sFooterServiceHotline"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}



{* Service Community *}
{block name="frontend_index_footer_column_service_community"}
    <div class="footer--column column--community ">
        {block name="frontend_index_footer_column_service_community_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceSocialHead"}unsere Communitys{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_community_content"}
            <div class="column--content content-community">
                <div class="footer--columns--grid-items">
                    <a href="https://www.facebook.com/actionshop24" target="_blank"><div class="footer--columns--items-social item-facebook grayscale"></div></a>
                </div>
            </div>
        {/block}
    </div>
{/block}


{* Service Community *}
{block name="frontend_index_footer_column_service_payment"}
    <div class="footer--column column--payment">
        {block name="frontend_index_footer_column_service_payment_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServicePaymentsHead"}unsere Zahlungsarten{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_payment_content"}
            <div class="column--content">
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
            </div>
        {/block}
    </div>
{/block}


{* Service Community *}
{block name="frontend_index_footer_column_service_shipping"}
    <div class="footer--column column--shipping ">
        {block name="frontend_index_footer_column_service_shipping_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceShippingsHead"}Wir versenden mit{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_shipping_content"}
            <div class="column--content">
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
            </div>
        {/block}
    </div>
{/block}


{block name="frontend_index_footer_column_newsletter"}
{/block}