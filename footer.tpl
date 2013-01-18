{if !$content_only}

    <!-- Right -->
    <ul id="right_column" class="accordion">
        {$HOOK_RIGHT_COLUMN|replace:'&controller':'&amp;controller'|replace:'&tag':'&amp;tag'}
    </ul>    
</div>
</section>

</div>

<!-- Footer -->
<footer id="footer" class="row">
    <div class="twelve columns">
        <hr/>
        <div class="row">
            {$HOOK_FOOTER|replace:'&controller':'&amp;controller'|replace:'&tag':'&amp;tag'}
        </div>
        {if $PS_ALLOW_MOBILE_DEVICE}
            <a href="{$link->getPageLink('index', true)}?mobile_theme_ok">{l s='Browse the mobile site'}</a>
        {/if}
        <a href="http://html5-ninja.com" target="_blank" class="right" title="html5-ninja.com is a marketplace where authors or designers propose their creations (themes, scripts... ) for selling.">Powered by HTML5 Ninja</a>
    </div>

</footer>
</div>
{/if}
</body>
</html>