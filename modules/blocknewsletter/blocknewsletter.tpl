<!-- Block Newsletter module-->
<div class="block">
    <fieldset>
         <legend>{l s='Newsletter' mod='blocknewsletter'}</legend>
        {if isset($msg) && $msg}
            <p class="{if $nw_error}warning_inline{else}success_inline{/if}">{$msg}</p>
        {/if}
        <form action="{$link->getPageLink('index')}" method="post">
            <div class="row collapse">
                <div class="ten mobile-three columns">
                    <input type="text" name="email" 
                           value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='blocknewsletter'}{/if}" 
                           onfocus="javascript:if(this.value=='{l s='your e-mail' mod='blocknewsletter' js=1}')this.value='';" 
                           onblur="javascript:if(this.value=='')this.value='{l s='your e-mail' mod='blocknewsletter' js=1}';" 
                           class="inputNew" />
                </div>
                <div class="two mobile-one columns">
                    <button type="submit" value="ok" class="button small expand postfix" name="submitNewsletter"><i class="general foundicon-mail"></i></button>
                </div>
            </div>


            <input type="hidden" name="action" value="0" />
        </form>
    </fieldset>
</div>
<!-- /Block Newsletter module-->



