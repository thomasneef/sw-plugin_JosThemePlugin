{extends file="parent:frontend/checkout/ajax_cart.tpl"}

{block name='frontend_checkout_ajax_cart_alert_box'}
    {$smarty.block.parent}

    {* Deliveryfree dispatch notification *}
    {block name='frontend_checkout_cart_deliveryfree'}
        {if $theme.offcanvas_warenkorb_freeshipping_show && $sShippingcostsDifference}
            {$shippingDifferenceContent="<strong>{s namespace="frontend/checkout/cart" name='CartInfoFreeShipping'}{/s}</strong> {s namespace="frontend/checkout/cart" name='CartInfoFreeShippingDifference'}{/s}"}
            {include file="frontend/_includes/messages.tpl" type="warning" content="{$shippingDifferenceContent}"}
        {/if}
    {/block}

{/block}

{block name='frontend_checkout_ajax_cart'}
    <div class="buttons--off-canvas">
        {block name='frontend_checkout_ajax_cart_buttons_offcanvas_inner'}
            <a href="#close-categories-menu" class="close--off-canvas jos-rechts" title="{s name="AjaxCartContinueShopping"}{/s}">
                <i class="fal fa-times"></i>
            </a>
        {/block}
    </div>
    {$smarty.block.parent}
{/block}

{block name='frontend_checkout_ajax_cart_buttons_offcanvas'}
    <div class="container--title">
        {s name="AjaxCartHeadlineBasket"}Warenkorb{/s}
    </div>
{/block}

{block name='frontend_checkout_ajax_cart_item_container'}
    <div class="item--container">
        {block name='frontend_checkout_ajax_cart_item_container_inner'}
            {if $sBasket.content}
                {foreach $sBasket.content as $sBasketItem}
                    {block name='frontend_checkout_ajax_cart_row'}
                        {include file="frontend/checkout/ajax_cart_item.tpl" basketItem=$sBasketItem}
                    {/block}
                {/foreach}
            {else}
                {block name='frontend_checkout_ajax_cart_empty'}
                    <div class="cart--item is--empty is--align-center">
                        {block name='frontend_checkout_ajax_cart_empty_inner'}
                            <span class="cart--empty-text">{s name='AjaxCartInfoEmpty'}{/s}</span>
                        {/block}
                    </div>
                {/block}
            {/if}
        {/block}
    </div>
{/block}


{block name='frontend_checkout_ajax_cart_prices_container'}
    {if $sBasket.content}

        {* Gutschein *}
        {if $theme.offcanvasCart && $theme.offcanvas_warenkorb_show_vourcher}
            {block name='frontend_checkout_error_messages_voucher_error'}
                {if $sVoucherError}
                    <div id="offcanvas-vourcher-error">
                        {include file="frontend/_includes/messages.tpl" content=$sVoucherError[0] type="error"}
                    </div>
                {/if}
            {/block}
            {block name='frontend_checkout_cart_footer_add_voucher'}
                <form method="post" id="offcanvas-warenkorb-vourcher" data-base-url="{s name='ThemeWareShopBaseUrl' namespace='frontend/themeware'}//{$Shop->getHost()}{$Shop->getBaseUrl()}{/s}">
                    <input type="text" name="sVoucher" placeholder="{"{s name='CheckoutFooterAddVoucherLabelInline' namespace="frontend/checkout/cart_footer"}{/s}"|escape}" />
                    <button type="submit" class="btn is--primary"> <i class="fal fa-times"></i></button>
                </form>
            {/block}
        {/if}

        {* Versandkosten anzeigen *}
        {if {config name=showShippingCostsOffCanvas} == 0 AND !$theme.offcanvas_warenkorb_show_prices}
            {block name='frontend_checkout_ajax_cart_prices_container_without_shipping_costs'}
                <div class="prices--container">
                    {block name='frontend_checkout_ajax_cart_prices_container_inner'}
                        <div class="prices--articles">
                            <span class="prices--articles-text">{s name="AjaxCartTotalAmount"}{/s}</span>
                            <span class="prices--articles-amount">{$sBasket.Amount|currency}</span>
                        </div>
                    {/block}
                    {block name='frontend_checkout_ajax_cart_prices_info'}
                        <p class="prices--tax">
                            {s name="DetailDataPriceInfo" namespace="frontend/detail/data"}{/s}
                        </p>
                    {/block}
                </div>
            {/block}
        {else}
            {if {config name=showShippingCostsOffCanvas} != 0}
                {* Shopware Versandkosten *}
                {block name='frontend_checkout_ajax_cart_prices_container_with_shipping_costs'}
                    <div class="prices--container">
                        {block name='frontend_checkout_ajax_cart_prices_container_inner'}
                            <div class="small--information">
                                <span>{s name="AjaxCartTotalAmount"}{/s}</span>
                                <span class="small--prices">{$sBasket.Amount|currency}{s name="Star" namespace="frontend/listing/box_article"}{/s}</span>
                            </div>
                        {/block}
                        {* Shipping costs & Shipping costs pre-calculation *}
                        {if {config name=showShippingCostsOffCanvas} == 1}
                            {block name='frontend_checkout_shipping_costs_country_trigger'}
                                {if !$sUserLoggedIn && !$sUserData.additional.user.id}
                                    <a href="#show-hide--shipping-costs" class="table--shipping-costs-trigger">
                                        {s name='CheckoutFooterEstimatedShippingCosts' namespace="frontend/checkout/cart_footer"}{/s}
                                        <i class="icon--arrow-right"></i>
                                    </a>
                                {else}
                                    <span class="table--shipping-costs-trigger-no-action">
                                        {s name='CheckoutFooterEstimatedShippingCosts' namespace="frontend/checkout/cart_footer"}{/s}:
                                    </span>
                                {/if}
                                <span class="small--information">
                                    <span class="small--prices"> {$sShippingcosts|currency}{s name="Star" namespace="frontend/listing/box_article"}{/s}
                                    </span>
                                </span>
                            {/block}
                            {block name='frontend_checkout_shipping_costs_country_include'}
                                {include file="frontend/checkout/shipping_costs.tpl" calculateShippingCosts=$showShippingCalculation}
                            {/block}
                        {/if}
                        {if {config name=showShippingCostsOffCanvas} == 2}
                            {block name='frontend_checkout_shipping_costs_country_include'}
                                <div class="small--information">
                                    <span>{s name='CheckoutFooterEstimatedShippingCosts' namespace="frontend/checkout/cart_footer"}{/s}</span>
                                    <span class="small--prices"> {$sShippingcosts|currency}{s name="Star" namespace="frontend/listing/box_article"}{/s}
                                    </span>
                                </div>
                                {include file="frontend/checkout/shipping_costs.tpl" calculateShippingCosts=true}
                            {/block}
                        {/if}
                        {* Total sum *}
                        {block name='frontend_checkout_cart_footer_field_labels_total'}
                            <div class="prices--articles">
                                <span class="prices--articles-text">{s name="CartFooterLabelTotal" namespace="frontend/checkout/cart_footer"}{/s}</span>
                                <span class="prices--articles-amount">
                                    {$sAmount|currency}{s name="Star" namespace="frontend/listing/box_article"}{/s}
                                </span>
                            </div>
                        {/block}
                        {block name='frontend_checkout_ajax_cart_prices_info'}
                            <p class="prices--tax">
                                {s name="Star" namespace="frontend/listing/box_article"}{/s}{s name="AjaxDetailDataPriceInfo"}{/s}
                            </p>
                        {/block}
                    </div>
                {/block}
            {else}
                {* ThemeWare | MwSt. und Versandkosten *}
                <div class="prices--container showprices">
                    <ul class="aggregation--list">
                        {block name='frontend_checkout_cart_footer_field_labels_sum'}
                            <li class="list--entry block-group entry--sum">
                                {block name='frontend_checkout_cart_footer_field_labels_sum_label'}
                                    <div class="entry--label block">
                                        {s name="CartFooterLabelSum" namespace="frontend/checkout/cart_footer"}{/s}
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_sum_value'}
                                    <div class="entry--value block">
                                        {$sBasket.Amount|currency}
                                    </div>
                                {/block}
                            </li>
                        {/block}

                        {block name='frontend_checkout_cart_footer_field_labels_shipping'}
                            <li class="list--entry block-group entry--shipping">
                                {block name='frontend_checkout_cart_footer_field_labels_shipping_label'}
                                    <div class="entry--label block">
                                        {s name="CartFooterLabelShipping" namespace="frontend/checkout/cart_footer"}{/s}
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_shipping_value'}
                                    <div class="entry--value block">
                                        {$sShippingcosts|currency}{if $theme.offcanvas_shipping_show_infotext}<sup>*</sup>{/if}
                                    </div>
                                {/block}
                            </li>
                            {if $theme.offcanvasCart && $theme.offcanvas_shipping_show_infotext}
                                <li class="list--entry block-group entry--infobox">
                                    <span><sup>*</sup>{s name="offcanvasShippingInfotext" namespace="frontend/checkout/cart_footer"}{$theme.offcanvas_shipping_infotext}{/s}</span>
                                </li>
                            {/if}
                        {/block}

                        {block name='frontend_checkout_cart_footer_field_labels_total'}
                            <li class="list--entry block-group entry--total">
                                {block name='frontend_checkout_cart_footer_field_labels_total_label'}
                                    <div class="entry--label block">
                                        <strong>{s name="CartFooterLabelTotal" namespace="frontend/checkout/cart_footer"}{/s}</strong>
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_total_value'}
                                    <div class="entry--value block is--no-star">
                                        <strong>{if $sAmountWithTax && $sUserData.additional.charge_vat}{$sAmountWithTax|currency}{else}{$sAmount|currency}{/if}</strong>
                                    </div>
                                {/block}
                            </li>
                        {/block}

                        {block name='frontend_checkout_cart_footer_field_labels_totalnet'}
                            {if $sUserData.additional.charge_vat}
                                <li class="list--entry block-group entry--totalnet">
                                    {block name='frontend_checkout_cart_footer_field_labels_totalnet_label'}
                                        <div class="entry--label block">
                                            {s name="CartFooterTotalNet" namespace="frontend/checkout/cart_footer"}{/s}
                                        </div>
                                    {/block}
                                    {block name='frontend_checkout_cart_footer_field_labels_totalnet_value'}
                                        <div class="entry--value block is--no-star">
                                            {$sAmountNet|currency}
                                        </div>
                                    {/block}
                                </li>
                            {/if}
                        {/block}

                        {block name='frontend_checkout_cart_footer_field_labels_taxes'}
                            {if $sUserData.additional.charge_vat}
                                {foreach $sBasket.sTaxRates as $rate => $value}
                                    {block name='frontend_checkout_cart_footer_field_labels_taxes_entry'}
                                        <li class="list--entry block-group entry--taxes">
                                            {block name='frontend_checkout_cart_footer_field_labels_taxes_label'}
                                                <div class="entry--label block">
                                                    {s name="CartFooterTotalTax" namespace="frontend/checkout/cart_footer"}{/s}
                                                </div>
                                            {/block}
                                            {block name='frontend_checkout_cart_footer_field_labels_taxes_value'}
                                                <div class="entry--value block is--no-star">
                                                    {$value|currency}
                                                </div>
                                            {/block}
                                        </li>
                                    {/block}
                                {/foreach}
                            {/if}
                        {/block}
                    </ul>
                    {block name='frontend_checkout_ajax_cart_prices_container_inner'}{/block}
                </div>

                <div class="is--hidden">
                    {if !$sUserLoggedIn && $sBasket.content && !$sUserData.additional.user.id}
                        {block name='frontend_checkout_shipping_costs_country_include'}
                            {include file="frontend/checkout/shipping_costs.tpl"}
                        {/block}
                    {/if}
                </div>
            {/if}
        {/if}

    {/if}
{/block}


{* Basket link *}
{block name='frontend_checkout_ajax_cart_button_container'}
    <div class="button--container">
        {block name='frontend_checkout_ajax_cart_button_container_inner'}
            {block name='frontend_checkout_ajax_cart_open_checkout'}
                {if $sBasket.content}
                    {if !($sDispatchNoOrder && !$sDispatches)}
                        {block name='frontend_checkout_ajax_cart_open_checkout_inner'}
                            <a href="{if {config name=always_select_payment}}{url controller='checkout' action='shippingPayment'}{else}{url controller='checkout' action='confirm'}{/if}" class="btn is--primary button--checkout is--icon-right" title="{"{s name='AjaxCartLinkConfirm'}{/s}"|escape}">
                                <i class="icon--arrow-right"></i>
                                {s name='AjaxCartLinkConfirm'}{/s}
                            </a>
                        {/block}
                    {else}
                        {block name='frontend_checkout_ajax_cart_open_checkout_inner_disabled'}
                            <span class="btn is--disabled is--primary button--checkout is--icon-right" title="{"{s name='AjaxCartLinkConfirm'}{/s}"|escape}">
								<i class="icon--arrow-right"></i>
								{s name='AjaxCartLinkConfirm'}{/s}
							</span>
                        {/block}
                    {/if}
                    {block name='frontend_checkout_ajax_cart_open_basket'}
                        {if $theme.offcanvasCart && $theme.offcanvas_warenkorb_bearbeiten_show_button}
                            <a href="{url controller='checkout' action='cart'}" class="btn button--open-basket is--icon-right" title="{"{s name='AjaxCartLinkBasket'}{/s}"|escape}">
                                <i class="icon--arrow-right"></i>
                                {s name='AjaxCartLinkBasket'}{/s}
                            </a>
                        {/if}
                    {/block}
                {else}
                    {* AjaxCartContinueShopping moved in 1.5.6 *}
                {/if}

                {if $theme.offcanvasCart && $theme.offcanvas_cart_continue_shopping_button == 1 && !$sBasket.content OR $theme.offcanvasCart && $theme.offcanvas_cart_continue_shopping_button == 2}
                    <a href="#close-categories-menu" class="close--off-canvas btn button--close-basket is--icon-right" title="{"{s name='AjaxCartContinueShopping' namespace='frontend/checkout/ajax_cart'}{/s}"|escape}">
                        <i class="icon--cross"></i> {s name='AjaxCartContinueShopping' namespace='frontend/checkout/ajax_cart'}{/s}
                    </a>
                {/if}
            {/block}
        {/block}
    </div>

    {block name="frontend_checkout_ajax_cart_zahlungsarten_content"}
        {if $theme.offcanvasCart && $theme.offcanvas_warenkorb_zahlungsarten_show == 2 && !$sBasket.content
        OR $theme.offcanvasCart && $theme.offcanvas_warenkorb_zahlungsarten_show == 3 && $sBasket.content
        OR $theme.offcanvasCart && $theme.offcanvas_warenkorb_zahlungsarten_show == 4}
            <div class="zahlungsanbieter-ajax-cart{if $theme.zahlungsarten_image_grayscale == "true"} grayscale{/if}">
                {include file="frontend/index/footer-logos-payment-method.tpl" type="offcanvasCart"}
            </div>
        {/if}
    {/block}

    {block name="frontend_checkout_ajax_cart_htmlbox_content"}
        {if $theme.offcanvasCart && $theme.offcanvas_warenkorb_htmlbox_show == 2 && !$sBasket.content
        OR $theme.offcanvasCart && $theme.offcanvas_warenkorb_htmlbox_show == 3 && $sBasket.content
        OR $theme.offcanvasCart && $theme.offcanvas_warenkorb_htmlbox_show == 4}
            <div id="offcanvas-htmlbox">
                {s name="offcanvasHTMLbox" namespace="frontend/checkout/cart_footer"}{$theme.offcanvas_warenkorb_htmlbox}{/s}
            </div>
        {/if}
    {/block}
{/block}