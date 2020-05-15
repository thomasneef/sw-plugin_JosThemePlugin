{extends file="parent:frontend/detail/data.tpl"}
{* tneef -> 04.05.2020 | Unit price *}
{block name='frontend_detail_data_tax'}

{* Altersfreigabe *}
    {foreach $sArticle.sProperties as $myProperty}
        {foreach $myProperty.options as $myOption}
            {if $myOption.attributes.core}
                {* Outleap Altersfreigabe: Zusätzliche Felder *}
                {$age_rating_text = $myOption.attributes.core->get("age_rating_text")}
                {$age_rating_link = $myOption.attributes.core->get("age_rating_link")}
                {if $myOption.attributes.core->get("age_rating_link_text")}
                    {$age_rating_link_text = $myOption.attributes.core->get("age_rating_link_text")}
                {else}
                    {* Default Link Text*}
                    {$age_rating_link_text = "{s name='outleap_age_rating_link_text_default' namespace='themes/Outleap_Jagdshop_Theme'}{/s}"}
                {/if}
            {/if}
        {/foreach}
    {/foreach}

    <p class="age_rating">
    {if $sArticle.sProperties.31.name}
        <strong>{$sArticle.sProperties.31.name} {$sArticle.sProperties.31.value} </strong>
        <a class="age_rating_link modal--size-table" title="Hinweis zur Altersfreigabe ({$sArticle.sProperties.31.value})" data-content='<div class="ajax-modal--custom"><div class="panel--title is--underline">Hinweis zur Altersfreigabe</div><div class="panel--body is--wide"><h2 style="margin-bottom: 20px;">Altersfreigabe: {$sArticle.sProperties.31.value}</h2>{$age_rating_text}{if $age_rating_link}<br><br><a class="age_rating_link" href="{url controller=custom sCustom=$age_rating_link}" title="{$age_rating_link_text}">{$age_rating_link_text}</a>{/if}</div></div>' data-modalbox="true">(Mehr erfahren)</a>
    {/if}
        </p>

    {* Tax information *}
    {if "{s name='outleap_free-shipping_above-value' namespace='themes/Outleap_Jagdshop_Theme'}{/s}" lt $sArticle.price_numeric}
        <div class="free-shipping">
            <i class="fas fa-check-circle"></i>
            {s name='outleap_free-shipping_text' namespace='themes/Outleap_Jagdshop_Theme'}{/s}</div>
    {/if}
{/block}