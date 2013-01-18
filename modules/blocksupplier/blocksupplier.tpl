<!-- Block suppliers module -->
<div id="suppliers_block_left" class="block blocksupplier">
    <h5>{if $display_link_supplier}<a href="{$link->getPageLink('supplier')}" title="{l s='Suppliers' mod='blocksupplier'}">{/if}{l s='Suppliers' mod='blocksupplier'}{if $display_link_supplier}</a>{/if}</h5>
    <div class="block_content panel">
        {if $suppliers}
            {if $text_list}
                <ul class="bullet">
                    {foreach from=$suppliers item=supplier name=supplier_list}
                        {if $smarty.foreach.supplier_list.iteration <= $text_list_nb}
                            <li class="{if $smarty.foreach.supplier_list.last}last_item{elseif $smarty.foreach.supplier_list.first}first_item{else}item{/if}">
                                <a href="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}" title="{l s='More about' mod='blocksupplier'} {$supplier.name}">{$supplier.name|escape:'htmlall':'UTF-8'}</a>
                            </li>
                        {/if}
                    {/foreach}
                </ul>
            {/if}
        </div>
        <fieldset>
            {if $form_list}
                <form action="{$smarty.server.SCRIPT_NAME|escape:'htmlall':'UTF-8'}" method="get" class="custom">
                    <select id="supplier_list" onchange="autoUrl('supplier_list', '');" style="display:none;">
                        <option value="0">{l s='All suppliers' mod='blocksupplier'}</option>
                        {foreach from=$suppliers item=supplier}
                            <option value="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}">{$supplier.name|escape:'htmlall':'UTF-8'}</option>
                        {/foreach}
                    </select>    
                </form>
            {/if}
        {else}
            <p>{l s='No supplier' mod='blocksupplier'}</p>
        {/if}
    </fieldset>
</div>
<!-- /Block suppliers module -->
