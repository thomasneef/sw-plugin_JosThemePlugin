{extends file="parent:frontend/detail/actions.tpl"}
   
{block name='frontend_detail_actions_notepad'}
   {if $theme.notepad_service_show != "true"}
    <form action="{url controller='note' action='add' ordernumber=$sArticle.ordernumber}" method="post" class="action--form">
        <button type="submit"
           class="action--link link--notepad"
           title="{"{s name='DetailLinkNotepad'}{/s}"|escape}"
           data-ajaxUrl="{url controller='note' action='ajaxAdd' ordernumber=$sArticle.ordernumber}"
           data-text="{s name="DetailNotepadMarked"}{/s}">
            <i class="icon--heart"></i> <span class="action--text">{s name="DetailLinkNotepadShort"}{/s}</span>
        </button>
    </form>
    {/if}
{/block}

{block name='frontend_detail_actions_review'}
	{if $theme.fragen_zum_artikel_in_action == 'list'}
		<a href="{$sInquiry}" rel="nofollow" class="action--link link--contact" title="{"{s name='DetailLinkContact' namespace="frontend/detail/actions"}{/s}"|escape}">
			<i class="icon--help"></i> {s name="DetailLinkContact" namespace="frontend/detail/actions"}{/s}
		</a>
	{/if}
	{$smarty.block.parent}
{/block}