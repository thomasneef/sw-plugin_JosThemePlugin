{extends file='parent:frontend/index/index.tpl'}
{block name='frontend_index_html'}
{*debug*}
{/block}

{block name='frontend_index_header'}
    {include file='frontend/index/header.tpl'}
{/block}


{block name="frontend_index_page_wrap"}

    <div class="orangebytes--page-wrap  {if $theme.stickyNavigation} orangebytes--sticky-navigation{/if}">

            {* Shop header *}
            {block name='frontend_index_navigation'}
                <header class="header-main jos-sticky">
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

                    {block name='frontend_index_top_bar_mobile_container'}
                        {include file="frontend/index/topbar-mobile-navigation.tpl"}
                    {/block}


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

                    {block name='frontend_index_navigation_steps_top'}
                    {/block}

                </header>


            {/block}

            {block name='frontend_index_emotion_loading_overlay'}
                {if $hasEmotion}
                    <div class="emotion--overlay">
                        <i class="emotion--loading-indicator"></i>
                    </div>
                {/if}
            {/block}

            {block name='frontend_index_content_main'}
                <section class="{block name="frontend_index_content_main_classes"}content-main container block-group{/block}">

                    {* Breadcrumb *}
                    {block name='frontend_index_breadcrumb'}
                        {if count($sBreadcrumb)}
                            <nav class="content--breadcrumb block">
                                {block name='frontend_index_breadcrumb_inner'}
                                    {include file='frontend/index/breadcrumb.tpl'}
                                {/block}
                            </nav>
                        {/if}
                    {/block}

                    {* Content top container *}
                    {block name="frontend_index_content_top"}{/block}

                    <div class="content-main--inner">

                        {* Cookie consent manager*}
                        {block name='frontend_index_cookie_consent_manager'}
                            {include file='frontend/index/cookie_consent.tpl'}
                        {/block}

                        {* Sidebar left *}
                        {block name='frontend_index_content_left'}
                            {include file='frontend/index/sidebar.tpl'}
                        {/block}

                        {* Main content *}
                        {block name='frontend_index_content_wrapper'}
                            <div class="content--wrapper">
                                {block name='frontend_index_content'}{/block}
                            </div>
                        {/block}

                        {* Sidebar right *}
                        {block name='frontend_index_content_right'}{/block}

                        {* Last seen products *}
                        {block name='frontend_index_left_last_articles'}
                            {if $sLastArticlesShow && $Controller == 'detail' }
                                <div class="last-seen-products is--hidden" data-last-seen-products="true" data-productLimit="{config name='LastArticles::lastarticlestoshow'}">
                                    <div class="last-seen-products--title">
                                        {s namespace="frontend/plugins/index/viewlast" name='WidgetsRecentlyViewedHeadline'}{/s}
                                    </div>
                                    <div class="last-seen-products--slider product-slider" data-product-slider="true">
                                        <div class="last-seen-products--container product-slider--container"></div>
                                    </div>
                                </div>
                            {/if}
                        {/block}
                    </div>
                </section>
            {/block}

            {* Footer *}
            {* Footer *}
            {block name="frontend_index_footer"}

            {/block}

            {block name='frontend_index_body_inline'}{/block}
        </div>

        {*$smarty.block.parent*}



    {* Footer *}
    {block name="frontend_index_footer"}
        <footer class="footer-main">
            <div class="container">
                {block name="frontend_index_footer_container"}
                    {include file='frontend/index/footer.tpl'}
                {/block}
            </div>
            <div class="jos-footer-bottom">
                <div class="container">
                    <div class="jos-footer-bottom-box">
                        <div class="jos-footer-item jos-footer-bottom-box-vat">* Alle Preise inkl. gesetzl. Mehrwertsteuer zzgl. Versandkosten, wenn nicht anders beschrieben. | Die durchgestrichenen Preise entsprechen dem UVP.</div>
                        <div class="jos-footer-item jos-footer-bottom-box-copyright">&copy 2020 German Sport Guns GmbH – Alle Rechte vorbehalten.</div>
                    </div>
                </div>
            </div>
        </footer>
        <div id="jos-scrolltotop" style="display:none;"><i class="icon--custom arrow-icon"></i></div>
    {/block}
{/block}



{* Include jQuery and all other javascript files at the bottom of the page *}
{block name="frontend_index_header_javascript_jquery_lib"}
    {compileJavascript timestamp={themeTimestamp} output="javascriptFiles"}
    {foreach $javascriptFiles as $file}
        {block name="frontend_index_header_javascript_jquery_lib_file"}
            <script{if $theme.asyncJavascriptLoading} async{/if} src="{preload file=$file as="script"}" id="main-script"></script>
        {/block}
    {/foreach}

{/block}