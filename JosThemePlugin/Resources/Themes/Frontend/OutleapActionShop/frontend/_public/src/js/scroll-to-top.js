(function($, window) {

    var $window = $(window);
    var elementId = "jos-scrolltotop";

    $.plugin('JosScrollToTop', {

        defaults: {
            selector: '#'+elementId
        },

        init: function() {
            var me = this;
            var isMobileDevice = StateManager.isCurrentState(['xs', 's', 'm']);
            var isStoryTelling = window.location.hash.indexOf('emotion--') > -1;

            me._on(me.$el, 'click', function (event) {
                event.preventDefault();

                if(!isStoryTelling) {
                    $("html, body").animate({
                        scrollTop: 0
                    }, 600);
                }
            });

            if(!isStoryTelling) {
                $(window).scroll(function () {
                    if($(this).scrollTop() > 100) {
                        $(me.defaults.selector).fadeIn();
                    } else {
                        $(me.defaults.selector).fadeOut();
                    }
                });
            }
        },

        destroy: function() {
            var me = this;

            me._destroy();
        }
    });

    $(function() {
        window.StateManager.addPlugin(
            '#'+elementId,
            'JosScrollToTop'
        );
    });

})(jQuery, window);
