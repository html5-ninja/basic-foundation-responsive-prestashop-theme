<!-- MODULE Block specials -->
<li class="block products_block exclusive blockspecials">
    <div class="title">
        <h5>{l s='Specials' mod='blockspecials'}</h5>
    </div>
    <div class="content">
        <div class="block_content">
            {if $special}
                <ul class="products block-grid four-up mobile-two-up">
                    <li class="product_image">
                        <a href="{$special.link}" class="th"><img src="{$link->getImageLink($special.link_rewrite, $special.id_image, 'medium_default')}" alt="{$special.legend|escape:html:'UTF-8'}" title="{$special.name|escape:html:'UTF-8'}" /></a>

                        {if !$PS_CATALOG_MODE}
                            {if $special.specific_prices}
                                {assign var='specific_prices' value=$special.specific_prices}
                                {if $specific_prices.reduction_type == 'percentage' && ($specific_prices.from == $specific_prices.to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $specific_prices.to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $specific_prices.from))}
                                    <span class="reduction right"><span class="round label">-{$specific_prices.reduction*100|floatval}%</span></span>
                                {/if}
                            {/if}
                        {/if}

                        <h6><a href="{$special.link}" title="{$special.name|escape:html:'UTF-8'}">{$special.name|escape:html:'UTF-8'}</a></h6>
                        {if !$PS_CATALOG_MODE}
                            <span class="price-discount"><s>{if !$priceDisplay}{displayWtPrice p=$special.price_without_reduction}{else}{displayWtPrice p=$priceWithoutReduction_tax_excl}{/if}</s></span>
                            <span class="price">{if !$priceDisplay}{displayWtPrice p=$special.price}{else}{displayWtPrice p=$special.price_tax_exc}{/if}</span>
                        {/if}
                    </li>
                </ul>

                <a href="{$link->getPageLink('prices-drop')}" title="{l s='All specials' mod='blockspecials'}">{l s='All specials' mod='blockspecials'}</a>

            {else}
                <p>{l s='No specials at this time' mod='blockspecials'}</p>
            {/if}
        </div>
    </div>
</li>
<!-- /MODULE Block specials -->