<li  class="block">
    <div class="title">
        <h5>{l s='Contact us' mod='blockcontact'}</h5>
    </div>
    <div class="content">
        <div class="block_content clearfix">
            <p>{l s='Our hotline is available 24/7' mod='blockcontact'}</p>
        {if $telnumber != ''}<p class="tel"><i class="general foundicon-phone"></i> {$telnumber|escape:'htmlall':'UTF-8'}</p>{/if}
    {if $email != ''}<i class="general foundicon-mail"></i>  <a href="mailto:{$email|escape:'htmlall':'UTF-8'}">{l s='Contact our hotline' mod='blockcontact'}</a>{/if}
</div>
</div>
</li>
