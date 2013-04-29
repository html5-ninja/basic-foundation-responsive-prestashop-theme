<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$meta_language}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="{$meta_language}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="{$meta_language}"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js" lang="{$meta_language}"><![endif]-->
<html>
    <head>
        <title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        {if isset($meta_description) AND $meta_description}
            <meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
        {/if}
        {if isset($meta_keywords) AND $meta_keywords}
            <meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
        {/if}
        <meta charset="utf-8" />
        <meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
        <meta name="author" content="HTML5 Ninja, html5-ninja.com, Zied Hosni, zied.hosni.mail@gmail.com">
        <link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
        <link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />     
        <script type="text/javascript">
            var baseDir = '{$content_dir}';
            var baseUri = '{$base_uri}';
            var static_token = '{$static_token}';
            var token = '{$token}';
            var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
            var priceDisplayMethod = {$priceDisplay};
            var roundMode = {$roundMode};
        </script>
        {if isset($css_files)}
            {foreach from=$css_files key=css_uri item=media}
                <link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
            {/foreach}
        {/if}
        {if isset($js_files)}
            {foreach from=$js_files item=js_uri}
                <script type="text/javascript" src="{$js_uri}"></script>
            {/foreach}
        {/if}
        {$HOOK_HEADER}
        <script type="text/javascript"  data-main="{$js_dir}foundation-theme.js" src="{$js_dir}require.js"></script>
    </head>
    <body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="off-canvas {if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if} {if $content_only} content_only {/if}">
        {if !$content_only}
            {if isset($restricted_country_mode) && $restricted_country_mode}
                <div id="restricted-country"  class="alert-box alert">
                    {l s='You cannot place a new order from your country.'} <strong>{$geolocation_country}</strong>  <a href="" class="close">&times;</a>
                </div>
            {/if}
            <a href="http://html5-ninja.com" class="powered" title="HTML5 Ninja">HTML5 Ninja</a>
            <nav class="top-bar">
                <ul>
                    <!-- Title Area -->
                    <li class="name">
                        <h1>
                            <a href="{$base_uri}">
                                {$shop_name|escape:'htmlall':'UTF-8'}
                            </a>
                        </h1>
                    </li>
                    <li class="toggle-topbar"><a href="#"></a></li>
                </ul>
                <section>
                    {$HOOK_TOP|replace:'&controller':'&amp;controller'|replace:'&tag':'&amp;tag'}
                </section>
            </nav>
            <div id="page">
                <!-- Header -->
                <header id="header" class="row">
                    <div class="twelve columns">
                        <a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
                            <img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
                        </a>
                        <div class="row">
                            <div class="show-for-small menu-action">
                                <a class='sidebar-button tiny secondary button' id='sidebarButton' href="#sidebar">
                                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         width="18px" height="18px" viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve">
                                    <line fill="none" stroke="#000000" stroke-width="8" stroke-miterlimit="10" x1="0" y1="8.907" x2="48" y2="8.907"/>
                                    <line fill="none" stroke="#000000" stroke-width="8" stroke-miterlimit="10" x1="0" y1="24.173" x2="48" y2="24.173"/>
                                    <line fill="none" stroke="#000000" stroke-width="8" stroke-miterlimit="10" x1="0" y1="39.439" x2="48" y2="39.439"/>

                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </header>
                <div id="columns" class="row">
                    <!-- Left -->
                    <section id="sidebar" role="complementary" class="four mobile-three columns">
                        <div id="left_column">
                            {$HOOK_LEFT_COLUMN|replace:'&controller':'&amp;controller'|replace:'&tag':'&amp;tag'}
                        </div>
                    </section>
                    <!-- Center -->
                    <section role="main" id="main" class="eight mobile-four columns">
                        <div id="center_column" class="row">
                        {/if}
