{extends file="parent:frontend/index/topbar-navigation.tpl"}

{block name="frontend_index_top_bar_nav"}
<div class="orangebytes-topbarcol">{s namespace='frontend/index/checkout_actions' name='TopbarCol1Text'}<i class="fas fa-shipping-fast"></i> Kostenloser Versand ab € 50,- Bestellwert{/s}</div>
<div class="orangebytes-topbarcol center">{s namespace='frontend/index/checkout_actions' name='TopbarCol2Text'}<i class="fas fa-clock"></i> Schnelle Lieferung auch während Corona{/s}</div>
<div class="orangebytes-topbarcol center">{s namespace='frontend/index/checkout_actions' name='TopbarCol3Text'}<i class="fas fa-hand-point-right"></i> Kostenloser Rückversand{/s}</div>
<div class="orangebytes-topbarcol center">{s namespace='frontend/index/checkout_actions' name='TopbarCol4Text'}<i class="far fa-comments"></i> Live Kundenchat{/s}</div>
{$smarty.block.parent}
{/block}