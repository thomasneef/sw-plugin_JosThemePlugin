{extends file="parent:frontend/index/main-navigation.tpl"}
{block name='frontend_index_navigation_categories_top_home'}
   <li class="navigation--entry{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} is--active{/if} is--home homeiconlink" role="menuitem">
        {block name='frontend_index_navigation_categories_top_link_home'}
            <a class="navigation--link is--first{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} active{/if}" href="{url controller='index'}" title="{s name='IndexLinkHome' namespace="frontend/index/categories_top"}{/s}" itemprop="url">
                    <i itemprop="name" class="icon--house"></i>
            </a>
        {/block}
        </li>
{/block}

