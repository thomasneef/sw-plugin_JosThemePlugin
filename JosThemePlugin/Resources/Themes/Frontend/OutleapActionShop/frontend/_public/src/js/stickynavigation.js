(function($, window) {

    $(window).scroll(function () {
        
        if ($(window).scrollTop() > 35) {
            $('.header-main').addClass('orangebytes-sticky');
            $('.navigation-main').addClass('orangebytes-sticky');
        } else {
            $('.header-main').removeClass('orangebytes-sticky');
            $('.navigation-main').removeClass('orangebytes-sticky');
        }

    });

})(jQuery, window);