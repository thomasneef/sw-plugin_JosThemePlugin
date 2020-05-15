{extends file="parent:frontend/index/topbar-navigation.tpl"}
{* Top bar main *}
{block name="frontend_index_top_bar_main"}
    <div class="top-bar">
        {* Top bar main container *}
        {block name="frontend_index_top_bar_main_container"}
            <div class="container block-group">
                {* Top bar navigation *}
                {block name="frontend_index_top_bar_nav"}
                    <nav class="top-bar--navigation" role="menubar">
                        <div class="jos_topbarcol left">{s namespace='frontend/index/checkout_actions' name='TopbarSpalte1Text'}<i class="fal fa-truck"></i> Kostenloser Versand ab € 50,- Bestellwert{/s}</div>
                        <div class="jos_topbarcol center">{s namespace='frontend/index/checkout_actions' name='TopbarSpalte2Text'}<i class="fal fa-clock"></i> Schnelle Lieferung auch während Corona{/s}</div>
                        <div class="jos_topbarcol center">{s namespace='frontend/index/checkout_actions' name='TopbarSpalte3Text'}<i class="fal fa-hand-point-right"></i> Kostenloser Rückversand{/s}</div>
                        <div class="jos_topbarcol right">{s namespace='frontend/index/checkout_actions' name='TopbarSpalte4Text'}<i class="far fa-comments"></i> Live Kundenchat{/s}</div>

                        {* Article Compare *}
                        {block name='frontend_index_navigation_inline'}
                        {/block}
                        {* Service / Support drop down *}
                        {block name="frontend_index_checkout_actions_service_menu"}
                        {/block}
                    </nav>
                {/block}
            </div>
        {/block}
    </div>
{/block}