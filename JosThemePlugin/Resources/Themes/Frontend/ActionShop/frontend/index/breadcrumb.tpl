{extends file="parent:frontend/index/breadcrumb.tpl"}

{block name="frontend_index_breadcrumb_prefix"}
<li class="breadcrumb--entry" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
    <a class="breadcrumb--link" href="/" itemprop="item"><i class="fas fa-home"></i></a>
    <meta itemprop="name" content="Home" />
    <meta itemprop="position" content="0" />
</li>
<li class="breadcrumb--separator">
<i class="icon--arrow-right"></i>
</li>
{/block}