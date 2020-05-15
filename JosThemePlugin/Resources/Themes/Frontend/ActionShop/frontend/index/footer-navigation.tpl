{namespace name="frontend/index/menu_footer"}
{* ueber uns *}
{block name="frontend_index_footer_column_wir"}
    <div class="footer--column column--wir is--first block">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceWir"} Über Uns{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">
                    {s name="sFooterUeberUns"}
                        <b>Wir lieben Sport! Und wir lieben Action!</b><br>
                        Deshalb haben wir es uns zur Aufgabe gemacht nicht einfach nur Airsofts, Druckluftwaffen, Munition und Zubehör im Internet zu verkaufen, sondern dir ein ganz besonderes Kauferlebnis zu schaffen. Ein Kauferlebnis, welches wir selbst bislang vermisst haben.
                        <br><br>
                        Denn wir, das Team vom ActionShop24, wissen worauf man bei unseren Produkten achten muss. Wir testen am liebsten all unsere Produkte selbst und arbeiten ausschließlich mit renommierten Herstellern zusammen.
                        <br><br>
                        Was uns zusätzlich einzigartig macht ist die Zusammenarbeit mit unabhängigen Produkttestern und Influencern. So haben wir immer den perfekten Überblick über den Markt, bekommen direktes Feedback und können Euch alles für perfekte Action anbieten.
                        <br><br>
                        Also, schaue dich bei uns im Shop gerne um, nehmen bei Fragen Kontakt mit uns auf und vor allem: Habe Spaß und maximale Action mit unseren Produkten.
                        <br>
                        <b>Dein Team vom ActionShop24</b>
                    {/s}
                </p>
            </div>
        {/block}
    </div>
{/block}


{block name="frontend_index_footer_column_service_menu"}
{/block}

{block name="frontend_index_footer_column_information_menu"}
    <div class="footer--column column--menu block">
        {block name="frontend_index_footer_column_information_menu_headline"}
            <div class="column--headline">{s name="sFooterShopNavi2"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_information_menu_content"}
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
{/block}

{* hotline *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline is--first block">
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterServiceHotlineHead"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <div class="footer--chat-icon">
                    <a href="#">
                        <img src="{link file='frontend/_public/src/img/livechat-logo.png'}" alt="Zum Seitenanfang" />
                    </a>
                </div>
                <p class="column--desc">{s name="sFooterServiceHotline"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}


