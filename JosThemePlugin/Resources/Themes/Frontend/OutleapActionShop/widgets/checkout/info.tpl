{* My account entry *}
{*block name="frontend_index_checkout_actions_my_options"}
<li class="navigation--entry entry--account{if {config name=useSltCookie} || $sOneTimeAccount} with-slt{/if}"
    role="menuitem"
    data-offcanvas="true"
    data-offCanvasSelector=".account--dropdown-navigation">
    {block name="frontend_index_checkout_actions_account"}
        <a href="{url controller='account'}"
           title="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
           aria-label="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
           class="btn is--icon-left entry--link account--link{if $userInfo} account--user-loggedin{/if}">
            <i class="fal fa-user"></i><br>
                <span class="account--display">
                        {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}
                </span>
        </a>
    {/block}
{/block*}

{* My account entry *}
{block name="frontend_index_checkout_actions_my_options"}
    <li class="navigation--entry entry--account{if {config name=useSltCookie} || $sOneTimeAccount} with-slt{/if}"
        role="menuitem"
        data-offcanvas="true"
        data-offCanvasSelector=".account--dropdown-navigation">
        {block name="frontend_index_checkout_actions_account"}
            <a href="{url controller='account'}"
               title="{"{if $sUserLoggedIn}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
               aria-label="{"{if $sUserLoggedIn}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
               class="btn is--icon-left entry--link account--link{if $sUserLoggedIn} account--user-loggedin{/if}">
                <i class="fal fa-user"></i><br>
                {if $sUserLoggedIn == 1}
                    <span class="account--display">
                        {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}
                    </span>
                {else}
                    <span class="account--display">
                        {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}
                    </span>
                {/if}
            </a>
        {/block}

        {if {config name=useSltCookie} || $sOneTimeAccount}
            {block name="frontend_index_checkout_actions_account_navigation"}
                <div class="account--dropdown-navigation">

                    {block name="frontend_index_checkout_actions_account_navigation_smartphone"}
                        <div class="navigation--smartphone">
                            <div class="entry--close-off-canvas">
                                <a href="#close-account-menu"
                                   class="account--close-off-canvas"
                                   title="{s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s}"
                                   aria-label="{s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s}">
                                    {s namespace='frontend/index/menu_left' name="IndexActionCloseMenu"}{/s} <i class="fal fa-times mobile-menu-close"></i>
                                </a>
                            </div>
                        </div>
                    {/block}

                    {block name="frontend_index_checkout_actions_account_menu"}
                        {include file="frontend/account/sidebar.tpl" showSidebar=true inHeader=true}



                    {/block}
                </div>
            {/block}
        {/if}
    </li>
{/block}








{* Notepad entry *}
{block name="frontend_index_checkout_actions_notepad"}
    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='note'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}"|escape}" class="btn">
            <i class="fal fa-heart"></i>
            {if $sNotesQuantity > 0}
            <span class="badge notes--quantity">
                    {$sNotesQuantity}
                </span>
            {/if}<br>
            <span class="jos-shopmenu-text-notepad">{s namespace='frontend/index/checkout_actions' name='OrangebytesShopNavigationNotepadLabel'}Merkzettel{/s}</span>
        </a>
    </li>
{/block}


{* Cart entry *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        <a class="btn cart--link" href="{url controller='checkout' action='cart'}" title="{"{s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}"|escape}">
            <span class="cart--display">
                {if $sUserLoggedIn}
                    {s name='IndexLinkCheckout' namespace='frontend/index/checkout_actions'}{/s}
                {else}
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}
                {/if}
            </span>

            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>
            <i class="fal fa-shopping-basket"></i>
            <br>
            <span class="cart--amount jos-shopmenu-text-card"><span>{s namespace='frontend/index/checkout_actions' name='OrangebytesShopNavigationBasketLabel'}Warenkorb{/s}</span>
            </span>
        </a>
        <div class="ajax-loader">&nbsp;</div>
    </li>
{/block}