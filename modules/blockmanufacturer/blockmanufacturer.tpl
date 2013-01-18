<!-- Block manufacturers module -->
<div id="manufacturers_block_left" class="block blockmanufacturer">
    <h5>{if $display_link_manufacturer}<a href="{$link->getPageLink('manufacturer')}" title="{l s='Manufacturers' mod='blockmanufacturer'}">{/if}{l s='Manufacturers' mod='blockmanufacturer'}{if $display_link_manufacturer}</a>{/if}</h5>
    <div class="block_content panel">
        {if $manufacturers}
            {if $text_list}
                <ul class="bullet">
                    {foreach from=$manufacturers item=manufacturer name=manufacturer_list}
                        {if $smarty.foreach.manufacturer_list.iteration <= $text_list_nb}
                            <li class="{if $smarty.foreach.manufacturer_list.last}last_item{elseif $smarty.foreach.manufacturer_list.first}first_item{else}item{/if}"><a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}" title="{l s='More about' mod='blockmanufacturer'} {$manufacturer.name}">{$manufacturer.name|escape:'htmlall':'UTF-8'}</a></li>
                        {/if}
                    {/foreach}
                </ul>
            {/if}
        </div>
        <fieldset>
            {if $form_list}
                <form action="{$smarty.server.SCRIPT_NAME|escape:'htmlall':'UTF-8'}" method="get" class="custom">
                    <select id="manufacturer_list" onchange="autoUrl('manufacturer_list', '');" style="display:none;">
                        <option value="0">{l s='All manufacturers' mod='blockmanufacturer'}</option>
                        {foreach from=$manufacturers item=manufacturer}
                            <option value="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}">{$manufacturer.name|escape:'htmlall':'UTF-8'}</option>
                        {/foreach}
                    </select>
                </form>
            {/if}
        {else}
            <p>{l s='No manufacturer' mod='blockmanufacturer'}</p>
        {/if}
    </fieldset>
</div>
<!-- /Block manufacturers module -->
