<!-- MODULE Block contact infos -->
<div id="block_contact_infos" class="twelve columns">
    <h6>{l s='Contact us' mod='blockcontactinfos'}</h6>
    <p>
{if $blockcontactinfos_company != ''}<strong>{$blockcontactinfos_company|escape:'htmlall':'UTF-8'}</strong>{/if} 
{if $blockcontactinfos_address != ''}{$blockcontactinfos_address|escape:'htmlall':'UTF-8'}{/if} 
{if $blockcontactinfos_phone != ''}{l s='Tel:' mod='blockcontactinfos'} {$blockcontactinfos_phone|escape:'htmlall':'UTF-8'}{/if} 
{if $blockcontactinfos_email != ''}{l s='Email:' mod='blockcontactinfos'} {mailto address=$blockcontactinfos_email|escape:'htmlall':'UTF-8' encode="hex"}{/if}
</p>
</div>
<!-- /MODULE Block contact infos -->
