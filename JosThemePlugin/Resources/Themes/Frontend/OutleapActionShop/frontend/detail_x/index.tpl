{extends file="parent:frontend/detail/index.tpl"}

{block name='frontend_index_content'}
    {include file="frontend/detail/content.tpl"}


			{* Last seen products *}
			<div class="last-seen-products is--hidden" data-last-seen-products="true">
				<div class="last-seen-products--title">
					{s namespace="frontend/plugins/index/viewlast" name='WidgetsRecentlyViewedHeadline'}{/s}
				</div>
				<div class="last-seen-products--slider product-slider" data-product-slider="true">
					<div class="last-seen-products--container product-slider--container"></div>
				</div>
			</div>

{/block}





