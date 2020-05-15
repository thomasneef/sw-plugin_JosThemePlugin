{* Step box *}
{block name='frontend_register_clean_theme_steps'}
    <div class="steps--container container-s">
        <div class="container">

            <div class="jos-steps-flex-container">

                {* Step - Shopping cart *}
                {block name='frontend_register_steps_cart'}
                <div class="jos-steps-flex-item jos-cart {if $sStepActive=='address'} is--active{/if}{if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                    <div class="jos-steps-flex-item-icon">
                        <span class="icon">{s name="CheckoutStepNumber01"}1{/s}</span>
                    </div>
                    <div class="jos-steps-flex-item-text">
                        <span class="text"><span class="text--inner">{s name="CheckoutStepEinkaufswagenText"}Einkaufswagen{/s}</span> <i class="icon--check"></i></span>
                    </div>
                </div>
                {/block}



                {* First Step - Address *}
                {block name='frontend_register_steps_basket'}
                <div class="jos-steps-flex-item jos-basket {if $sStepActive=='address'} is--active{/if}{if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                    <div class="jos-steps-flex-item-icon">
                        <span class="icon">{s name="CheckoutStepNumber02"}2{/s}</span>
                    </div>
                    <div class="jos-steps-flex-item-text">
                        <span class="text"><span class="text--inner">{s name="CheckoutStepAddressText"}{/s}</span>{if $sStepActive=='paymentShipping'} <i class="icon--check"></i>{/if}{if $sStepActive=='finished'} <i class="icon--check"></i>{/if}</span>
                    </div>
                </div>
                {/block}



                {* Step - Payment *}
                {block name='frontend_register_steps_register'}
                <div class="jos-steps-flex-item jos-register {if $sStepActive=='paymentShipping'} is--active{/if}{if $sStepActive=='finished'} is--active{/if}">
                    <div class="jos-steps-flex-item-icon">
                       <span class="icon">{s name="CheckoutStepNumber03"}3{/s}</span>
                    </div>
                    <div class="jos-steps-flex-item-text">
                        <span class="text"><span class="text--inner">{s name="CheckoutStepPaymentShippingText"}{/s}</span>{if $sStepActive=='finished'} <i class="icon--check"></i>{/if}</span>
                    </div>
                </div>
                {/block}

                {* Step - Confirmation *}
                {block name='frontend_register_steps_confirm'}
                <div class="jos-steps-flex-item jos-finish {if $sStepActive=='finished'} is--active{/if}">
                    <div class="jos-steps-flex-item-icon">
                        <span class="icon">{s name="CheckoutStepNumber04"}4{/s}</span>
                    </div>
                    <div class="jos-steps-flex-item-text">
                        <span class="text"><span class="text--inner">{s name="CheckoutStepConfirmText"}{/s}</span></span>
                    </div>
                </div>
                {/block}


            </div>











        </div>
    </div>
{/block}