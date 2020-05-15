{extends file='parent:frontend/listing/actions/action-filter-panel.tpl'}

{block name="frontend_listing_actions_filter_form_facets"}
{if $theme.sidebarFilter && $theme.sidebarFilterOpened}
    <div class="filter--facet-container ob--filter--opened">
        {include file="frontend/listing/actions/action-filter-facets.tpl" facets=$facets}
    </div>
{else}
{$smarty.block.parent}
{/if}
{/block}