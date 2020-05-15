<div class="account--menu is-mobile">
{*
            #TEST <br>
            userloggedin: {$sUserLoggedIn}<br>
            sOneTimeAccount: {$sOneTimeAccount}<br>
            userInfo:<pre> {$userInfo|print_r} </pre> <br>
            inHeader: {$inHeader}<br>
*}
        {block name="frontend_account_menu"}
            {if $sUserLoggedIn}
                {* USER IS LOGGED IN *}
                {* Sidebar navigation headline *}
                {block name="frontend_account_menu_title"}
                    {if {config name=useSltCookie} && $userInfo}
                        <span class="navigation--headline">
                            {block name="frontend_account_menu_greeting"}
                                {s name="AccountGreetingBefore"}Hallo {/s}
                                {$userInfo['firstname']}
                                {s name="AccountGreetingAfter"}{/s}
                            {/block}
                        </span>
                    {else}
                        <span class="navigation--headline">
                            {s name="AccountHeaderNavigation"}{/s}
                        </span>
                    {/if}
                {/block}

                {* Sidebar navigation menu *}

                <ul class="sidebar--navigation navigation--list is--level0 show--active-items">
                    {block name="frontend_account_menu_list"}
                        {* Link to the account overview page *}
                        {block name="frontend_account_menu_link_overview"}
                            {block name="frontend_account_menu_link_overview_SltCookie"}
                                {*if {config name=useSltCookie} && !$userInfo && $inHeader}
                                    <li class="navigation--entry">
                                        <span class="navigation--signin">
                                            <a href="{url module='frontend' controller='account'}#hide-registration"
                                               class="blocked--link btn is--primary navigation--signin-btn{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                               data-collapseTarget="#registration"
                                               data-action="close">
                                                {s name="AccountLogin"}{/s}
                                            </a>
                                            <span class="navigation--register">
                                                {s name="AccountOr"}{/s}
                                                <a href="{url module='frontend' controller='account'}#show-registration"
                                                   class="blocked--link{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                                   data-collapseTarget="#registration"
                                                   data-action="open">
                                                    {s name="AccountRegister"}{/s}
                                                </a>
                                            </span>
                                        </span>
                                    </li>
                                {/if*}
                            {/block}

                            {block name="frontend_account_menu_link_overview_link"}
                                <li class="navigation--entry">
                                    <a href="{url module='frontend' controller='account'}" title="{s name="AccountLinkOverview"}{/s}" class="navigation--link{if {controllerName|lower} == 'account' && $sAction == 'index'} is--active{/if}">
                                        {s name="AccountLinkOverview"}{/s}
                                    </a>
                                </li>
                            {/block}


                        {/block}

                        {* Link to the account profile page *}
                        {block name="frontend_account_menu_link_profile"}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='account' action=profile}" title="{s name="AccountLinkProfile"}{/s}" class="navigation--link{if {controllerName|lower} == 'account' && $sAction == 'profile'} is--active{/if}" rel="nofollow">
                                    {s name="AccountLinkProfile"}{/s}
                                </a>
                            </li>
                        {/block}

                        {* Link to the user addresses *}
                        {block name="frontend_account_menu_link_addresses"}
                            {if $inHeader}
                                {block name="frontend_account_menu_link_addresses_inHeader"}
                                    <li class="navigation--entry">
                                        <a href="{url module='frontend' controller='address' action='index' sidebar=''}" title="{s name="AccountLinkAddresses"}{/s}" class="navigation--link{if {controllerName} == 'address'} is--active{/if}" rel="nofollow">
                                            {s name="AccountLinkAddresses"}{/s}
                                        </a>
                                    </li>
                                {/block}
                            {else}
                                {block name="frontend_account_menu_link_addresses_notInHeader"}
                                    <li class="navigation--entry">
                                        <a href="{url module='frontend' controller='address' action='index'}" title="{s name="AccountLinkAddresses"}My addresses{/s}" class="navigation--link{if {controllerName} == 'address'} is--active{/if}" rel="nofollow">
                                            {s name="AccountLinkAddresses"}My addresses{/s}
                                        </a>
                                    </li>
                                {/block}
                            {/if}
                        {/block}

                        {* Link to the user payment method settings *}
                        {block name="frontend_account_menu_link_payment"}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='account' action='payment'}" title="{s name="AccountLinkPayment"}{/s}" class="navigation--link{if $sAction == 'payment'} is--active{/if}" rel="nofollow">
                                    {s name="AccountLinkPayment"}{/s}
                                </a>
                            </li>
                        {/block}

                        {* Link to the user orders *}
                        {block name="frontend_account_menu_link_orders"}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='account' action='orders'}" title="{s name="AccountLinkPreviousOrders"}{/s}" class="navigation--link{if $sAction == 'orders'} is--active{/if}" rel="nofollow">
                                    {s name="AccountLinkPreviousOrders"}{/s}
                                </a>
                            </li>
                        {/block}

                        {* Link to the user downloads *}
                        {block name="frontend_account_menu_link_downloads"}
                            {if {config name=showEsd}}
                                <li class="navigation--entry">
                                    <a href="{url module='frontend' controller='account' action='downloads'}" title="{s name="AccountLinkDownloads"}{/s}" class="navigation--link{if $sAction == 'downloads'} is--active{/if}" rel="nofollow">
                                        {s name="AccountLinkDownloads"}{/s}
                                    </a>
                                </li>
                            {/if}
                        {/block}

                        {* Link to the user product notes *}
                        {block name="frontend_account_menu_link_notes"}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='note'}" title="{s name="AccountLinkNotepad"}{/s}" class="navigation--link{if {controllerName} == 'note'} is--active{/if}" rel="nofollow">
                                    {s name="AccountLinkNotepad"}{/s}
                                </a>
                            </li>
                        {/block}

                        {* Link to the partner statistics *}
                        {block name="frontend_account_menu_link_partner_statistics"}
                            {if $sUserLoggedIn && !$inHeader}
                                {action module='frontend' controller="account" action="partnerStatisticMenuItem"}
                            {/if}
                        {/block}
                    {/block}
                </ul>


                <div class="jos-oncanvas-buttoncontainer">
                    <a href="{url controller='account' action='logout'}" title="{s name="AccountLogout"}{/s}"
                       class="btn navigation--link link--logout navigation--personalized">
                        {block name="frontend_account_menu_logout_personalized"}
                           {s name="AccountLogout"}{/s}
                        {/block}
                    </a>
                </div>

                {* USER IS NOT LOGGED IN *}
                {else}
                {block name="frontend_account_menu_title"}
                        <span class="navigation--headline">
                            {s name="AccountHeaderNavigation"}{/s}
                        </span>
                {/block}

                <div class="jos-oncanvas-buttoncontainer">
                    <a href="{url module='frontend' controller='account'}#hide-registration" title="{s name="AccountLogout"}{/s}"
                       class="btn navigation--link link--logout navigation--personalized {if $register} registration--menu-entry entry--close-off-canvas{/if}"
                       data-collapseTarget="#registration"
                       data-action="close">
                        {s name="AccountLogin"}{/s}
                    </a>
                    <span class="navigation--register">
                                {s name="AccountOr"}{/s}
                                <a href="{url module='frontend' controller='account'}#show-registration"
                                   class="blocked--link{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                   data-collapseTarget="#registration"
                                   data-action="open">
                                 {s name="AccountRegister"}{/s}
                                 </a>
                    </span>
                </div>

                <div class="jos-account-new-infotext-container">
                    <span class="jos-account-new-infotext">
                        {s name="MenuAccountInfotext"} Nach der Anmeldung, können Sie hier auf Ihren Kundenbereich zugreifen.{/s}
                    </span>
                </div>
            {/if}
        {/block}

</div>

<div class="account--menu is-desk">

    <div class="jos-account-desk-title"> {s name="AccountHeaderTitelNavigation"}Kundenkonto{/s} </div>

    <div class="jos-account-desk-items">
        {if $sUserLoggedIn}

                {if {config name=useSltCookie} && $userInfo}
                    <span class="navigation--headline">
                            {block name="frontend_account_menu_greeting"}
                                {s name="AccountGreetingBefore"}Hallo {/s}
                                {$userInfo['firstname']}
                                {s name="AccountGreetingAfter"}{/s}
                            {/block}
                        </span>
                {else}
                    <span class="navigation--headline">
                            {s name="AccountHeaderNavigation"}{/s}
                        </span>
                {/if}
            <ul class="sidebar--navigation navigation--list is--level0 show--active-items">
                {block name="frontend_account_menu_list"}
                    {* Link to the account overview page *}
                    {block name="frontend_account_menu_link_overview"}
                        {block name="frontend_account_menu_link_overview_SltCookie"}
                            {*if {config name=useSltCookie} && !$userInfo && $inHeader}
                                <li class="navigation--entry">
                                    <span class="navigation--signin">
                                        <a href="{url module='frontend' controller='account'}#hide-registration"
                                           class="blocked--link btn is--primary navigation--signin-btn{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                           data-collapseTarget="#registration"
                                           data-action="close">
                                            {s name="AccountLogin"}{/s}
                                        </a>
                                        <span class="navigation--register">
                                            {s name="AccountOr"}{/s}
                                            <a href="{url module='frontend' controller='account'}#show-registration"
                                               class="blocked--link{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                               data-collapseTarget="#registration"
                                               data-action="open">
                                                {s name="AccountRegister"}{/s}
                                            </a>
                                        </span>
                                    </span>
                                </li>
                            {/if*}
                        {/block}

                        {block name="frontend_account_menu_link_overview_link"}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='account'}" title="{s name="AccountLinkOverview"}{/s}" class="navigation--link{if {controllerName|lower} == 'account' && $sAction == 'index'} is--active{/if}">
                                    {s name="AccountLinkOverview"}{/s}
                                </a>
                            </li>
                        {/block}


                    {/block}

                    {* Link to the account profile page *}
                    {block name="frontend_account_menu_link_profile"}
                        <li class="navigation--entry">
                            <a href="{url module='frontend' controller='account' action=profile}" title="{s name="AccountLinkProfile"}{/s}" class="navigation--link{if {controllerName|lower} == 'account' && $sAction == 'profile'} is--active{/if}" rel="nofollow">
                                {s name="AccountLinkProfile"}{/s}
                            </a>
                        </li>
                    {/block}

                    {* Link to the user addresses *}
                    {block name="frontend_account_menu_link_addresses"}
                        {if $inHeader}
                            {block name="frontend_account_menu_link_addresses_inHeader"}
                                <li class="navigation--entry">
                                    <a href="{url module='frontend' controller='address' action='index' sidebar=''}" title="{s name="AccountLinkAddresses"}{/s}" class="navigation--link{if {controllerName} == 'address'} is--active{/if}" rel="nofollow">
                                        {s name="AccountLinkAddresses"}{/s}
                                    </a>
                                </li>
                            {/block}
                        {else}
                            {block name="frontend_account_menu_link_addresses_notInHeader"}
                                <li class="navigation--entry">
                                    <a href="{url module='frontend' controller='address' action='index'}" title="{s name="AccountLinkAddresses"}My addresses{/s}" class="navigation--link{if {controllerName} == 'address'} is--active{/if}" rel="nofollow">
                                        {s name="AccountLinkAddresses"}My addresses{/s}
                                    </a>
                                </li>
                            {/block}
                        {/if}
                    {/block}

                    {* Link to the user payment method settings *}
                    {block name="frontend_account_menu_link_payment"}
                        <li class="navigation--entry">
                            <a href="{url module='frontend' controller='account' action='payment'}" title="{s name="AccountLinkPayment"}{/s}" class="navigation--link{if $sAction == 'payment'} is--active{/if}" rel="nofollow">
                                {s name="AccountLinkPayment"}{/s}
                            </a>
                        </li>
                    {/block}

                    {* Link to the user orders *}
                    {block name="frontend_account_menu_link_orders"}
                        <li class="navigation--entry">
                            <a href="{url module='frontend' controller='account' action='orders'}" title="{s name="AccountLinkPreviousOrders"}{/s}" class="navigation--link{if $sAction == 'orders'} is--active{/if}" rel="nofollow">
                                {s name="AccountLinkPreviousOrders"}{/s}
                            </a>
                        </li>
                    {/block}

                    {* Link to the user downloads *}
                    {block name="frontend_account_menu_link_downloads"}
                        {if {config name=showEsd}}
                            <li class="navigation--entry">
                                <a href="{url module='frontend' controller='account' action='downloads'}" title="{s name="AccountLinkDownloads"}{/s}" class="navigation--link{if $sAction == 'downloads'} is--active{/if}" rel="nofollow">
                                    {s name="AccountLinkDownloads"}{/s}
                                </a>
                            </li>
                        {/if}
                    {/block}

                    {* Link to the user product notes *}
                    {block name="frontend_account_menu_link_notes"}
                        <li class="navigation--entry">
                            <a href="{url module='frontend' controller='note'}" title="{s name="AccountLinkNotepad"}{/s}" class="navigation--link{if {controllerName} == 'note'} is--active{/if}" rel="nofollow">
                                {s name="AccountLinkNotepad"}{/s}
                            </a>
                        </li>
                    {/block}

                    {* Link to the partner statistics *}
                    {block name="frontend_account_menu_link_partner_statistics"}
                        {if $sUserLoggedIn && !$inHeader}
                            {action module='frontend' controller="account" action="partnerStatisticMenuItem"}
                        {/if}
                    {/block}
                {/block}
            </ul>


        {else}
            <div class="jos-oncanvas-buttoncontainer">
                <a href="{url module='frontend' controller='account'}#hide-registration" title="{s name="AccountLogout"}{/s}"
                   class="btn navigation--link link--logout navigation--personalized {if $register} registration--menu-entry entry--close-off-canvas{/if}"
                   data-collapseTarget="#registration"
                   data-action="close">
                    {s name="AccountLogin"}{/s}
                </a>
                <span class="navigation--register">
                                {s name="AccountOr"}{/s}
                                <a href="{url module='frontend' controller='account'}#show-registration"
                                   class="blocked--link{if $register} registration--menu-entry entry--close-off-canvas{/if}"
                                   data-collapseTarget="#registration"
                                   data-action="open">
                                 {s name="AccountRegister"}{/s}
                                 </a>
                    </span>
            </div>

            <div class="jos-account-new-infotext-container">
                    <span class="jos-account-new-infotext">
                        {s name="MenuAccountInfotext"} Nach der Anmeldung, können Sie hier auf Ihren Kundenbereich zugreifen.{/s}
                    </span>
            </div>
        {/if}
    </div>



</div>