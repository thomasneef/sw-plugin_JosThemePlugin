{extends file="parent:frontend/detail/data.tpl"}
{* tneef -> 04.05.2020 | Unit price *}
    {block name='frontend_detail_data_tax'}
		{* Tax information *}
			{if "{s name='outleap_free-shipping_above-value' namespace='themes/Outleap_Jagdshop_Theme'}{/s}" lt $sArticle.price_numeric}
					<div class="product--tax">
						{s name='outleap_tax_info' namespace='themes/Outleap_Jagdshop_Theme'}{/s}
					</div>
			{else}
					<div class="product--tax" data-content="" data-modalbox="true" data-targetSelector="a" data-mode="ajax">
						{s name="DetailDataPriceInfo"}{/s}
					</div>
			{/if}	
		{* Altersfreigabe *}
		{if $sArticle.sProperties.31.name} 
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
		<p class="age_rating"><strong>{$sArticle.sProperties.31.name} {$sArticle.sProperties.31.value} </strong>
			<a class="age_rating_link modal--size-table" title="Hinweis zur Altersfreigabe ({$sArticle.sProperties.31.value})" data-content='<div class="ajax-modal--custom"><div class="panel--title is--underline">Hinweis zur Altersfreigabe</div><div class="panel--body is--wide"><h2 style="margin-bottom: 20px;">Altersfreigabe: {$sArticle.sProperties.31.value}</h2>{$age_rating_text}{if $age_rating_link}<br><br><a class="age_rating_link" href="{url controller=custom sCustom=$age_rating_link}" title="{$age_rating_link_text}">{$age_rating_link_text}</a>{/if}</div></div>' data-modalbox="true">(Mehr erfahren)</a></p>	
		{/if}


		{* Tax information *}
			{if "{s name='outleap_free-shipping_above-value' namespace='themes/Outleap_Jagdshop_Theme'}{/s}" lt $sArticle.price_numeric}
					<div class="free-shipping">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-1.25 17.292l-4.5-4.364 1.857-1.858 2.643 2.506 5.643-5.784 1.857 1.857-7.5 7.643z"/></svg>
						{s name='outleap_free-shipping_text' namespace='themes/Outleap_Jagdshop_Theme'}{/s}</div>
			{/if}			
    {/block}
	{* Discount price content *}
	{block name='frontend_detail_data_pseudo_price_discount_content'}
		<span class="content--discount">
			{block name='frontend_detail_data_pseudo_price_discount_before'}
				{s name="priceDiscountLabel"}{/s}
			{/block}
			<span class="price--line-through">{$sArticle.pseudoprice|currency}</span>

			{block name='frontend_detail_data_pseudo_price_discount_after'}
				{s name="priceDiscountInfo"}{/s}
			{/block}
			{* Percentage discount *}
			{block name='frontend_detail_data_pseudo_price_discount_content_percentage'}
				{if $sArticle.pseudopricePercent.float}
					<span class="price--discount-percentage">({$sArticle.pseudopricePercent.float|number|round}% {s name="DetailDataInfoSavePercent"}{/s})</span>
				{/if}
			{/block}
		</span>
	{/block}