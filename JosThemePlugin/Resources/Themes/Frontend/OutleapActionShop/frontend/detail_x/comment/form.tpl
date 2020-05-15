{extends file="parent:frontend/detail/comment/form.tpl"}

{block name="frontend_detail_comment_input_notice"}

	{* DSGVO *}
	{if $theme.dsgvo_bewertungen != "0"}
		{block name='frontend_register_privacy_dsgvo'}
			<div class="bewertungen--privacy" data-content="" data-modalbox="true" data-targetselector="a" data-mode="ajax">
				{if $theme.dsgvo_bewertungen == "1"}<input type="checkbox" name="privacycheckbox" id="privacycheckbox" required="required" /> {/if}{s name="DSGVOPrivacy"}Die <a title="Datenschutzbestimmungen" href="{url controller=custom sCustom=7}">Datenschutzbestimmungen</a> habe ich zur Kenntnis genommen.{/s}
			</div>
		{/block}
	{/if}

	{$smarty.block.parent}
{/block}