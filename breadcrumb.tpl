<!-- Breadcrumb -->
{if isset($smarty.capture.path)}{assign var='path' value=$smarty.capture.path}{/if}
<div class="breadcrumb">
    <ul class="breadcrumbs">
        <li><a href="{$base_dir}" title="{l s='return to Home'}">Home</a></li>
        {$BreadcrumbLink = '<span class="navigation-pipe">></span>'|explode:$path}
        {foreach $BreadcrumbLink as $Link}
            <li>{$Link}</li>
        {/foreach}
    </ul>
</div>
<!-- /Breadcrumb -->


