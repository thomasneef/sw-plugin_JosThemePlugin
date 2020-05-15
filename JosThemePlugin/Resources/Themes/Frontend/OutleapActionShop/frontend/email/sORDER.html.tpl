<body class="is--minimal-header">
<div class="page-wrap">
    <div class="topbar--features">
        <div>
            <div class="feature-1 b280 b478 b767 b1023 b1259"><i class="icon--truck"></i><span>Kostenloser Versand ab € 50,- Bestellwert</span></div>
            <div class="feature-2 b767 b1023 b1259"><i class="icon--clock"></i><span>Schnelle Lieferung auch während Corona</span></div>
            <div class="feature-3 b1023 b1259"><i class="icon--thumbsup"></i><span>Kostenloser Rückversand</span></div>
            <div class="feature-4 b1023 b1259"><i class="icon--speachbubble"></i><span>Live Kundenchat</span></div>
        </div>
    </div>
    <header class="header-main-min">
        <div class="container">
            <div class="logo" role="banner">
                <a class="logo--link" href="https://www.action-shop24.de/" title="ACTIONSHOP24 - Hier geht's zum Shop">
                    <picture>
                        <source srcset="https://www.action-shop24.de/media/image/bb/ce/ff/logo.jpg" media="(min-width: 78.75em)">
                        <source srcset="https://www.action-shop24.de/media/image/bb/ce/ff/logo.jpg" media="(min-width: 64em)">
                        <source srcset="https://www.action-shop24.de/media/image/bb/ce/ff/logo.jpg" media="(min-width: 48em)">
                        <img srcset="https://www.action-shop24.de/media/image/0e/28/63/logo-actionshop24-smartphone.jpg" alt="ACTIONSHOP24 - zur Startseite wechseln" title="ACTIONSHOP24 - zur Startseite wechseln">
                    </picture>
                </a>
            </div>
            <div class="cel support-text">
                <strong>Fragen zu deiner Bestellung?</strong><br><strong></strong> <small>Wir sind Mo-Fr von 9:00 bis 16:00 Uhr per Chat für dich da</small>
            </div>
            <div class="cel">
                <a href="https://www.action-shop24.de/" class="btn is--small btn--back-top-shop is--icon-left" title="Zurück zum Shop">
                    <i class="icon--arrow-left"></i>
                    Zurück zum Shop
                </a>
            </div>
        </div>
    </header>

    <section class="content-main container block-group" style="max-width: 720px;">
        <div class="content-main--inner">
            <div class="content--wrapper">
                <div class="content content--mail">
                    <p>Hallo {$billingaddress.salutation|salutation} {$billingaddress.lastname},<br/>
                        <br/>
                        vielen Dank für Ihre Bestellung im {config name=shopName} am {$sOrderDay} um {$sOrderTime}.<br/>
                        <br/>
                        <strong>Informationen zu Ihrer Bestellung:</strong></p><br/>


                    <table width="80%" border="0" style="font-family:Arial, Helvetica, sans-serif; font-size:12px;">
                        <tr>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;"><strong>Pos.</strong></td>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;"><strong>Artikel</strong></td>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;">Bezeichnung</td>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;"><strong>Menge</strong></td>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;"><strong>Preis</strong></td>
                            <td bgcolor="#F7F7F2" style="border-bottom:1px solid #cccccc;"><strong>Summe</strong></td>
                        </tr>

                        {foreach item=details key=position from=$sOrderDetails}
                            <tr>
                                <td style="border-bottom:1px solid #cccccc;">{$position+1|fill:4} </td>
                                <td style="border-bottom:1px solid #cccccc;">{if $details.image.src.0 && $details.modus == 0}<img style="height: 57px;" height="57" src="{$details.image.src.0}" alt="{$details.articlename}" />{else} {/if}</td>
                                <td style="border-bottom:1px solid #cccccc;">
                                    {$details.articlename|wordwrap:80|indent:4}<br>
                                    Artikel-Nr: {$details.ordernumber|fill:20}
                                </td>
                                <td style="border-bottom:1px solid #cccccc;">{$details.quantity|fill:6}</td>
                                <td style="border-bottom:1px solid #cccccc;">{$details.price|padding:8|currency}</td>
                                <td style="border-bottom:1px solid #cccccc;">{$details.amount|padding:8|currency}</td>
                            </tr>
                        {/foreach}

                    </table>

                    <p>
                        <br/>
                        <br/>
                        Versandkosten: {$sShippingCosts|currency}<br/>
                        Gesamtkosten Netto: {$sAmountNet|currency}<br/>
                        {if !$sNet}
                            {foreach $sTaxRates as $rate => $value}
                                zzgl. {$rate|number_format:0}% MwSt. {$value|currency}<br/>
                            {/foreach}
                            <strong>Gesamtkosten Brutto: {$sAmount|currency}</strong><br/>
                        {/if}
                        <br/>
                        <br/>
                        <strong>Gewählte Zahlungsart:</strong> {$additional.payment.description}<br/>
                        {$additional.payment.additionaldescription}
                        {if $additional.payment.name == "debit"}
                            Unsere Bankverbindung:<br/>
                            {config name=bankAccount}
                            <br/>
                            Wir ziehen den Betrag in den nächsten Tagen von Ihrem Konto ein.<br/>
                        {/if}
                        <br/>
                        <br/>
                        {if $additional.payment.name == "prepayment"}
                            Unsere Bankverbindung:<br/>
                            Volksbank Hellweg eG<br/>
                            IBAN: DE64 4146 0116 6126 4835 15<br/>
                            BIC: GENODEM1SOE<br/>
                        {/if}
                        <br/>
                        <br/>
                        <strong>Gewählte Versandart:</strong> {$sDispatch.name}<br/>
                        {$sDispatch.description}<br/>
                    </p>
                    <p>
                        {if $sComment}
                            <strong>Ihr Kommentar:</strong><br/>
                            {$sComment}<br/>
                        {/if}
                        <br/>
                        <br/>
                        <strong>Rechnungsadresse:</strong><br/>
                        {$billingaddress.company}<br/>
                        {$billingaddress.firstname} {$billingaddress.lastname}<br/>
                        {$billingaddress.street} {$billingaddress.streetnumber}<br/>
                        {if {config name=showZipBeforeCity}}{$billingaddress.zipcode} {$billingaddress.city}{else}{$billingaddress.city} {$billingaddress.zipcode}{/if}<br/>
                        {$additional.country.countryname}<br/>
                        <br/>
                        <br/>
                        <strong>Lieferadresse:</strong><br/>
                        {$shippingaddress.company}<br/>
                        {$shippingaddress.firstname} {$shippingaddress.lastname}<br/>
                        {$shippingaddress.street} {$shippingaddress.streetnumber}<br/>
                        {if {config name=showZipBeforeCity}}{$shippingaddress.zipcode} {$shippingaddress.city}{else}{$shippingaddress.city} {$shippingaddress.zipcode}{/if}<br/>
                        {$additional.countryShipping.countryname}<br/>
                        <br/>
                        {if $billingaddress.ustid}
                            Ihre Umsatzsteuer-ID: {$billingaddress.ustid}<br/>
                            Bei erfolgreicher Prüfung und sofern Sie aus dem EU-Ausland<br/>
                            bestellen, erhalten Sie Ihre Ware umsatzsteuerbefreit.<br/>
                        {/if}
                        <br/>
                        <br/>
                        Für Rückfragen stehen wir Ihnen jederzeit gerne zur Verfügung.<br/>

                </div>
            </div>
        </div>
    </section>

    <footer class="footer-minimal">
        <div class="container">
            <div class="footer--service-menu">
                <ul class="service--list is--rounded" role="menu">
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/altershinweis" title="Altershinweis">
                            Altershinweis
                        </a>
                    </li>
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/versand-und-zahlungsbedingungen" title="Versand und Zahlungsbedingungen">
                            Versand und Zahlungsbedingungen
                        </a>
                    </li>
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/widerrufsrecht" title="Widerrufsrecht">
                            Widerrufsrecht
                        </a>
                    </li>
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/datenschutz" title="Datenschutz">
                            Datenschutz
                        </a>
                    </li>
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/allgemeine-geschaeftsbedingungen-agb" title="Allgemeine Geschäftsbedingungen (AGB)">
                            Allgemeine Geschäftsbedingungen (AGB)
                        </a>
                    </li>
                    <li class="service--entry" role="menuitem">
                        <a class="service--link" href="https://www.action-shop24.de/impressum" title="Impressum">
                            Impressum
                        </a>
                    </li>
                </ul>


            </div>
            <div class="footer--vat-info">
                <p class="vat-info--text">
                </p>
            </div>
            <div class="copyright">© 2020 German Sport Guns GmbH – Alle Rechte vorbehalten. </div>	</div>
    </footer>
</div>
</body>