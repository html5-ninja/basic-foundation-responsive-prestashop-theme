<div  class="block products_block clearfix">
    <h1>{l s='Featured products' mod='homefeatured'}</h1>
    {if isset($products) AND $products}

        {assign var='liHeight' value=250}
        {assign var='nbItemsPerLine' value=4}
        {assign var='nbLi' value=$products|@count}
        {math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
        {math equation="nbLines*liHeight" nbLines=$nbLines|ceil liHeight=$liHeight assign=ulHeight}
        <ul>
            {foreach from=$products item=product name=homeFeaturedProducts}
                {math equation="(total%perLine)" total=$smarty.foreach.homeFeaturedProducts.total perLine=$nbItemsPerLine assign=totModulo}
            {if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
            <li class="row ajax_block_product {if $smarty.foreach.homeFeaturedProducts.first}first_item{elseif $smarty.foreach.homeFeaturedProducts.last}last_item{else}item{/if} {if $smarty.foreach.homeFeaturedProducts.iteration%$nbItemsPerLine == 0}last_item_of_line{elseif $smarty.foreach.homeFeaturedProducts.iteration%$nbItemsPerLine == 1} {/if} {if $smarty.foreach.homeFeaturedProducts.iteration > ($smarty.foreach.homeFeaturedProducts.total - $totModulo)}last_line{/if}">
                <div  class="twelve columns">
                    <div class="row">
                        <div class="three mobile-one columns">
                            <a href="{$product.link}" title="{$product.name|escape:html:'UTF-8'}" class="th productimg">
                                <img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')}"  alt="{$product.name|escape:html:'UTF-8'}" />{if isset($product.new) && $product.new == 1}
                                <span class="new round label">{l s='New' mod='homefeatured'}</span>{/if}
                            </a>
                            {if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}
                                {if ($product.quantity > 0 OR $product.allow_oosp)}
                                    <a class="exclusive ajax_add_to_cart_button left" rel="ajax_id_product_{$product.id_product}" href="{$link->getPageLink('cart')}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" title="{l s='Add to cart' mod='homefeatured'}"><i class="foundicon-cart"></i></a>
                                {else}
                                    <span class="exclusive"><i class="foundicon-cart"></i></span>
                                {/if}
                            {else}
                                <div style="height:23px;"></div>
                            {/if} 
            {if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}<span class="price right">{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}</span>{else}<div style="height:21px;"></div>{/if}

        </div>
        <div class="nine mobile-three columns">
            <h2><a  href="{$product.link}" title="{l s='View' mod='homefeatured'}">{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</a></h2>
            <p class="lead">
                {$product.description_short|strip_tags|truncate:65:'...'}
            </p>
        </div>
    </div>
</div>     
</li>
{/foreach}
</ul>

{else}
    <p>{l s='No featured products' mod='homefeatured'}</p>
{/if}
</div>
<!-- /MODULE Home Featured Products -->
