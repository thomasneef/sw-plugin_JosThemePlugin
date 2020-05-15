{extends file="parent:frontend/detail/config_upprice.tpl"}

{* Configurator drop down *}
{block name='frontend_detail_group_selection'}
	<div class="select-field">
		<select name="group[{$sConfigurator.groupID}]"{if $theme.ajaxVariantSwitch} data-ajax-select-variants="true"{else} data-auto-submit="true"{/if}>
			<option value="">{s name="DetailConfigValueSelect" namespace="frontend/detail/config_step"}{/s}</option>
			{foreach $sConfigurator.values as $configValue}
				{if !{config name=hideNoInstock} || ({config name=hideNoInstock} && $configValue.selectable)}
					{if !$configValue.selectable && $theme.artikel_hide_inaktive_varianten}
					{else}
						<option{if $configValue.selected} selected="selected"{/if} value="{$configValue.optionID}">
							{$configValue.optionname} 
						</option>
					{/if}
				{/if}
			{/foreach}
		</select>
	</div>
{/block}
