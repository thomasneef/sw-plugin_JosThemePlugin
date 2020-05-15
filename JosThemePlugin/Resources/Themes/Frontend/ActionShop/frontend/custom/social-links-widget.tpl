<div class="orangebytes--social-share-widget" style="font-size:30px;">
    {if $theme.social_media_link_facebook}<a href="{$theme.social_media_link_facebook}" target="_blank" title="Facebook"><i class="fab fa-facebook-square"></i></a>{/if}
    {if $theme.social_media_link_twitter}<a href="{$theme.social_media_link_twitter}" target="_blank" title="Twitter"><i class="fab fa-twitter-square"></i></a>{/if}
    {if $theme.social_media_link_instagram}<a href="{$theme.social_media_link_instagram}" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>{/if}
    {if $theme.social_media_link_google}<a href="{$theme.social_media_link_google}" target="_blank" title="Google Plus"><i class="fab fa-google-plus-square"></i></a>{/if}
    {if $theme.social_media_link_linkedin}<a href="{$theme.social_media_link_linkedin}" target="_blank" title="LinkedIn"><i class="fab fa-linkedin"></i></a>{/if}
    {if $theme.social_media_link_youtube}<a href="{$theme.social_media_link_youtube}" target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a>{/if}
    {if $theme.social_media_link_pinterest}<a href="{$theme.social_media_link_pinterest}" target="_blank" title="Pinterest"><i class="fab fa-pinterest-square"></i></a>{/if}
    {if $theme.social_media_link_xing}<a href="{$theme.social_media_link_xing}" target="_blank" title="Xing"><i class="fab fa-xing-square"></i></a>{/if}

    {if $theme.social_media_link_blog}<a href="{$theme.social_media_link_blog}" target="_blank" title="Blog"><i class="fab fa-wordpress"></i></a>{/if}
    {if $theme.social_media_link_info}<a href="{$theme.social_media_link_info}" target="_blank" title="Info"><i class="fas fa-info-circle"></i></a>{/if}    
    {if $theme.social_media_link_news}<a href="{$theme.social_media_link_news}" target="_blank" title="News"><i class="far fa-newspaper"></i></a>{/if}

    {if !$theme.social_media_link_facebook && !$theme.social_media_link_twitter && !$theme.social_media_link_instagram && !$theme.social_media_link_google && !$theme.social_media_link_linkedin && !$theme.social_media_link_youtube && !$theme.social_media_link_pinterest && !$theme.social_media_link_xing && !$theme.social_media_link_info && !$theme.social_media_link_blog && !$theme.social_media_link_news}
    <a href="https://www.facebook.com/orangebytes.net/" target="_blank" title="Facebook"><i class="fab fa-facebook-square"></i></a>
    {/if}
</div>