<div class="orangebytes--newsletter-stripe">
    <div class="container">

        <p class="orangebytes--newsletter-stripe-title">{s name="sFooterNewsletterHead"}Newsletter abonnieren und 10% Gutschein sichern!{/s}</p>
        
        <p>{s name="sFooterNewsletter"}Abonnieren Sie den kostenlosen Newsletter und verpassen Sie keine Neuigkeit oder Aktion mehr von Demoshop.{/s}</p>

        <form class="newsletter--form" action="{url controller='newsletter'}" method="post">
            <input type="hidden" value="1" name="subscribeToNewsletter" />

            {block name="frontend_index_footer_column_newsletter_form_field"}
                <input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexOrangebytesNewsletterStripePlaceholder"}E-Mail-Adresse{/s}" />
                {if {config name="newsletterCaptcha"} !== "nocaptcha"}
                    <input type="hidden" name="redirect">
                {/if}
            {/block}

            {block name="frontend_index_footer_column_newsletter_form_submit"}
                <button type="submit" class="newsletter--button btn is--primary">
                    <span class="button--text"> {s name='IndexFooterNewsletterSubmit'}Jetzt abonnieren{/s}</span>
                </button>
            {/block}

            {* Data protection information *}
            {block name="frontend_index_footer_column_newsletter_privacy"}
                {if {config name=ACTDPRTEXT} || {config name=ACTDPRCHECK}}
                    {$hideCheckbox=false}

                    {* If a captcha is active, the user has to accept the privacy statement on the newsletter page *}
                    {if {config name=newsletterCaptcha} !== "nocaptcha"}
                        {$hideCheckbox=true}
                    {/if}

                    {include file="frontend/_includes/privacy.tpl" hideCheckbox=$hideCheckbox}
                {/if}
            {/block}
        </form>

    </div>
</div>