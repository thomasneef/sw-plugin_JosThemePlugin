{extends file="parent:frontend/detail/content.tpl"}

{* Product image *}
{block name='frontend_detail_index_image_container'}
	<div class="product--image-container image-slider{if $sArticle.image && {config name=sUSEZOOMPLUS}} product--image-zoom{/if}"
		{if $sArticle.image}
		 data-image-slider="true"
		 {if !$theme.lightbox_artikelseite}data-image-gallery="false"{else}data-image-gallery="true"{/if}
		 data-maxZoom="{$theme.lightboxZoomFactor}"
		 data-thumbnails=".image--thumbnails"
		{/if}>
		{include file="frontend/detail/image.tpl"}
	</div>
{/block}