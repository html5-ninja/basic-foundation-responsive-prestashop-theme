<!-- MODULE Block new products -->
<li  class="block products_block">
    <div class="title">
        <h5>{l s='New products' mod='blocknewproducts'}</h5>
    </div>
    <div class="content">
        <div class="block_content">
            {if $new_products !== false}
                <ul class="product_images clearfix block-grid four-up mobile-tow-up">
                    {foreach from=$new_products item='product' name='newProducts'}
                        {if $smarty.foreach.newProducts.index < 2}
                            <li{if $smarty.foreach.newProducts.first} class="first"{/if}><a class="th" href="{$product.link}" title="{$product.legend|escape:html:'UTF-8'}"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium_default')}"  alt="{$product.legend|escape:html:'UTF-8'}" /></a></li>
                                {/if}
                            {/foreach}
                </ul>
                <dl class="products">
                    {foreach from=$new_products item=newproduct name=myLoop}
                        <dt class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}">
                        <strong>{$newproduct.name|strip_tags|escape:html:'UTF-8'}</strong>
                        </dt>
            {if $newproduct.description_short}<dd class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}">
                    {$newproduct.description_short|strip_tags:'UTF-8'|truncate:75:'...'}<br /><a href="{$newproduct.link}" class="lnk_more">{l s='Read more' mod='blocknewproducts'}</a>
                </dd>{/if}
                {/foreach}
                </dl>
                <p><a href="{$link->getPageLink('new-products')}" title="{l s='All new products' mod='blocknewproducts'}" class="button_large">{l s='All new products' mod='blocknewproducts'}</a></p>
                {else}
                    <p>{l s='No new products at this time' mod='blocknewproducts'}</p>
                    {/if}
                    </div>
                </div>
            </li>
            <!-- /MODULE Block new products -->