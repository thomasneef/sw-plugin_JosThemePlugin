{* Shop header *}
{block name='frontend_index_navigation'}
    <div class="header-wrap" id="header-wrap">
        <header class="header-main">
            {* Include the top bar navigation *}
            {block name='frontend_index_top_bar_container'}
                {include file="frontend/index/topbar-navigation.tpl"}
            {/block}

            {block name='frontend_index_header_navigation'}
                <div class="container header--navigation">

                    {* Logo container *}
                    {block name='frontend_index_logo_container'}
                        {include file="frontend/index/logo-container.tpl"}
                    {/block}

                    {* Shop navigation *}
                    {block name='frontend_index_shop_navigation'}
                        {include file="frontend/index/shop-navigation.tpl"}
                    {/block}

                    {block name='frontend_index_container_ajax_cart'}
                        <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
                    {/block}
                </div>
            {/block}
        </header>

        {* Maincategories navigation top *}
        {block name='frontend_index_navigation_categories_top'}
            <nav class="navigation-main">
                <div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                    {block name="frontend_index_navigation_categories_top_include"}
                        {include file='frontend/index/main-navigation.tpl'}
                    {/block}
                </div>
            </nav>
        {/block}
    </div>
{/block}