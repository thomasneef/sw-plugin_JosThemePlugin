{extends file='parent:frontend/listing/text.tpl'}

{block name="frontend_listing_text_content"}
{if $sCategoryContent.cmstext}
{$smarty.block.parent}
{/if}
{/block}