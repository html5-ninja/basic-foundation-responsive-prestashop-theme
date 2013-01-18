<!-- Module HomeSlider -->
{if isset($homeslider_slides)}
    <div id="featured">
        {foreach from=$homeslider_slides item=slide}
            {if $slide.active}
                <div>
                    <a href="{$slide.url|escape:'htmlall':'UTF-8'}" title="{$slide.description|escape:'htmlall':'UTF-8'}">
                        <img src="{$smarty.const._MODULE_DIR_}homeslider/images/{$slide.image|escape:'htmlall':'UTF-8'}" alt="{$slide.legend|escape:'htmlall':'UTF-8'}" />
                    </a>
                </div>
            {/if}
        {/foreach}
    </div>
{/if}
<!-- /Module HomeSlider -->
