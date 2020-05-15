{extends file='parent:frontend/listing/product-box/box-basic.tpl'}

{block name='frontend_listing_box_article_name'}
    <a href="{$sArticle.linkDetails}"
        class="product--title"
        title="{$sArticle.articleName}">
        {$sArticle.articleName|truncate:85}
    </a>
{/block}

{* Product price - Unit price *}
{block name='frontend_listing_box_article_unit'}
{/block}