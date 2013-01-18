<!-- block seach mobile -->
{if isset($hook_mobile)}
    <div class="input_search" data-role="fieldcontain">
        <form method="get" action="{$link->getPageLink('search')}" id="searchbox">
            <input type="hidden" name="controller" value="search" />
            <input type="hidden" name="orderby" value="position" />
            <input type="hidden" name="orderway" value="desc" />
            <input class="search_query" type="search" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{/if}" />
        </form>
    </div>
{else}
    <!-- Block search module TOP -->
    <ul class="right">
        <li class="divider"></li>
        <li>
            <a href="#" data-reveal-id="searchModal">{l s='Search' mod='blocksearch'}</a>
        </li>
    </ul>
    <div id="searchModal" class="reveal-modal [expand, xlarge, large, medium, small]">
        <form method="get" action="{$link->getPageLink('search')}">
            <div class="row">
                <div class="towelve">
                    <fieldset>
                        <legend>{l s='Search' mod='blocksearch'}</legend>
                        <input type="hidden" name="controller" value="search" />
                        <input type="hidden" name="orderby" value="position" />
                        <input type="hidden" name="orderway" value="desc" />
                        <div class="row collapse">
                            <div class="ten mobile-three columns">
                                <input class="search_query" type="text" id="search_query_top" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{/if}" />
                            </div>
                            <div class="two mobile-one columns">
                                <button type="submit" name="submit_search" value="{l s='Search' mod='blocksearch'}" class="button small postfix">
                                    <i class="foundicon-search"></i>
                                </button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </form>

        {include file="$self/blocksearch-instantsearch.tpl"}
        <a class="close-reveal-modal">&#215;</a>
    </div>
{/if}
<!-- /Block search module TOP -->


