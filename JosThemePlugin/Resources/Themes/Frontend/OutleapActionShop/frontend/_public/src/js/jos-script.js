(function ($, window, document, undefined)
{
    'use strict';
    $("a").removeAttr("title");



    $('#topcross').hide();
    $('#smobile').click(function()
    {
        $('#topsearch').toggle();
        $('#topcross').toggle();
        $('#jos_entry--search').toggleClass('jos_no_display');
        $('#jos_entry--search').toggleClass('jos_display');
        $('.main-search--form').toggle();

    });






})(jQuery, window);