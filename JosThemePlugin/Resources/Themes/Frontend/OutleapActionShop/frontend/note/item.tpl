{extends file='parent:frontend/note/item.tpl'}
{* Price *}
{block name="frontend_note_item_price"}
    {if $sBasketItem.itemInfo}
        {$sBasketItem.itemInfo}
    {else}
        <div class="note--price">{if $sBasketItem.priceStartingFrom}{s namespace='frontend/listing/box_article' name='ListingBoxArticleStartsAt'}{/s} {/if}{$sBasketItem.price|currency}</div>
    {/if}
{/block}
