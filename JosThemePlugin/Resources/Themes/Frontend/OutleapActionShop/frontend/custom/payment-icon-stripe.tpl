{if $theme.show_payment_shipping_icons}
<div class="orangebytes--payment-icon-stripe">
    <div class="container">

        <div class="left-column column">
        
            <p class="title">{s name="sFooterPaymentStripePaymentTitle"}Zahlungsmethoden{/s}</p>

            <div class="orangebytes--payment-icons">
                {if $theme.show_paypal_icon}<img src="{link file='frontend/_public/src/img/payment/paypal-80x40.png'}" alt="Paypal Logo" />{/if}
                {if $theme.show_amazon_icon}<img src="{link file='frontend/_public/src/img/payment/amazon-80x40.png'}" alt="Amazon Logo" />{/if}
                {if $theme.show_apple_icon}<img src="{link file='frontend/_public/src/img/payment/applepay-80x40.png'}" alt="Apple Pay Logo" />{/if}
                {if $theme.show_mastercard_icon}<img src="{link file='frontend/_public/src/img/payment/mastercard-80x40.png'}" alt="Mastercard Logo" />{/if}
                {if $theme.show_amex_icon}<img src="{link file='frontend/_public/src/img/payment/amex-80x40.png'}" alt="American Express Logo" />{/if}
                {if $theme.show_visa_icon}<img src="{link file='frontend/_public/src/img/payment/visa-80x40.png'}" alt="VISA Logo" />{/if}
                {if $theme.show_eccash_icon}<img src="{link file='frontend/_public/src/img/payment/ele-cash-80x40.png'}" alt="Electronic Cash Logo" />{/if}
                {if $theme.show_heidelpay_icon}<img src="{link file='frontend/_public/src/img/payment/heidelpay-80x40.png'}" alt="Heidelpay Logo" />{/if}
                {if $theme.show_klarna_icon}<img src="{link file='frontend/_public/src/img/payment/klarna-80x40.png'}" alt="Klarna Logo" />{/if}
                {if $theme.show_klarna_invoice_icon}<img src="{link file='frontend/_public/src/img/payment/klarna-rechnung-80x40.png'}" alt="Klarna Invoice Logo" />{/if}
                {if $theme.show_paypal_rate_icon}<img src="{link file='frontend/_public/src/img/payment/paypal-ratenzahlung-80x40.png'}" alt="Paypal Rate Pay Logo" />{/if}
                {if $theme.show_giropay_icon}<img src="{link file='frontend/_public/src/img/payment/giropay-80x40.png'}" alt="Giropay Logo" />{/if}
                {if $theme.show_paysafecard_icon}<img src="{link file='frontend/_public/src/img/payment/paysafecard-80x40.png'}" alt="Paysafecard Logo" />{/if}
                {if $theme.show_bitcoin_icon}<img src="{link file='frontend/_public/src/img/payment/bitcoin-80x40.png'}" alt="Bitcoin Logo" />{/if}

                {if $theme.custom_payment_icon_1}<img src="{link file=$theme.custom_payment_icon_1}" alt="Custom Icon" />{/if}
                {if $theme.custom_payment_icon_2}<img src="{link file=$theme.custom_payment_icon_2}" alt="Custom Icon" />{/if}
                {if $theme.custom_payment_icon_3}<img src="{link file=$theme.custom_payment_icon_3}" alt="Custom Icon" />{/if}
                {if $theme.custom_payment_icon_4}<img src="{link file=$theme.custom_payment_icon_4}" alt="Custom Icon" />{/if}

            </div>

        </div>
        <div class="right-column column">

            <p class="title">{s name="sFooterPaymentStripeShippingTitle"}Versand{/s}</p>        

            <div class="orangebytes--payment-icons">
                {if $theme.show_dpd_icon}<img src="{link file='frontend/_public/src/img/payment/dpd-80x40.png'}" alt="DPD Logo" />{/if}
                {if $theme.show_dhl_icon}<img src="{link file='frontend/_public/src/img/payment/dhl-80x40.png'}" alt="DHL Logo" />{/if}
                {if $theme.show_gls_icon}<img src="{link file='frontend/_public/src/img/payment/gls-80x40.png'}" alt="GLS Logo" />{/if}
                {if $theme.show_fedex_icon}<img src="{link file='frontend/_public/src/img/payment/fedex-80x40.png'}" alt="FedEx Logo" />{/if}
                {if $theme.show_hermes_icon}<img src="{link file='frontend/_public/src/img/payment/hermes-80x40.png'}" alt="Hermes Logo" />{/if}             
                {if $theme.show_ups_icon}<img src="{link file='frontend/_public/src/img/payment/ups-80x40.png'}" alt="UPS Logo" />{/if}
                {if $theme.show_tnt_icon}<img src="{link file='frontend/_public/src/img/payment/tnt-80x40.png'}" alt="TNT Logo" />{/if}           
                {if $theme.show_deutschepost_icon}<img src="{link file='frontend/_public/src/img/payment/deutpost-80x40.png'}" alt="Deutsche Post Logo" />{/if}

                {if $theme.custom_shipping_icon_1}<img src="{link file=$theme.custom_shipping_icon_1}" alt="Custom Icon" />{/if}
                {if $theme.custom_shipping_icon_2}<img src="{link file=$theme.custom_shipping_icon_2}" alt="Custom Icon" />{/if}
                {if $theme.custom_shipping_icon_3}<img src="{link file=$theme.custom_shipping_icon_3}" alt="Custom Icon" />{/if}
                {if $theme.custom_shipping_icon_4}<img src="{link file=$theme.custom_shipping_icon_4}" alt="Custom Icon" />{/if}
            </div>

        </div>      

    </div>
</div>
{/if}