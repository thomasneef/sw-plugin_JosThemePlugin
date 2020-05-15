<nav class="shop--navigation block-group">
    <a  class="top-mobil-suche-icon" href="#" title="{$snippetIndexTitleSearchToggle|escape}" id="smobile" aria-label="{$snippetIndexTitleSearchToggle|escape}">
        <i id="topsearch" class="icon--search icon-active"></i>
        <i id="topcross" class="fal fa-times icon-inactive"></i>
    </a>

    <ul class="navigation--list block-group" role="menubar">

        {* Menu (Off canvas left) trigger *}
        {block name='frontend_index_offcanvas_left_trigger'}
            <li class="navigation--entry entry--menu-left" role="menuitem">
                <a class="entry--link entry--trigger btn is--icon-left" href="#offcanvas--left" data-offcanvas="true" data-offCanvasSelector=".sidebar-main" aria-label="">
                    <i class="far fa-bars"></i>
                    <br>
                    <span class="jos-shopmenu-text-menu"> {s namespace='frontend/index/menu_left' name="IndexLinkMenu"}Menü{/s}</span>
                </a>
            </li>
        {/block}

        {* Search form *}
        {block name='frontend_index_search'}
            <li class="navigation--entry entry--search jos_no_display" id="jos_entry--search" role="menuitem" data-search="true" aria-haspopup="true"{if $theme.focusSearch && {controllerName|lower} == 'index'} data-activeOnStart="true"{/if} data-minLength="{config name="MinSearchLenght"}">
                {s namespace="frontend/index/search" name="IndexTitleSearchToggle" assign="snippetIndexTitleSearchToggle"}{/s}
                {* Include of the search form *}
                {block name='frontend_index_search_include'}
                    {include file="frontend/index/search.tpl"}
                {/block}
            </li>
        {/block}

        {* Cart entry *}
        {block name='frontend_index_checkout_actions'}
            {* Include of the cart *}
            {block name='frontend_index_checkout_actions_include'}
                {action module=widgets controller=checkout action=info}
            {/block}
        {/block}
    </ul>
</nav>
