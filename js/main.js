(function($) {

    $(document).ready(function() {

        // var
        var $slides = $('.slides'),
            $tabs = $('.tab'),
            $tabsNav = $('.tabs-nav'),
            $formLogin = $('.form-login'),
            $formExtend = $('.form-extend');

        // slider
        $slides.carouFredSel({
            auto: 3000,
            items: 1,
            pagination: {
                container: $('.slider-nav ul'),
                anchorBuilder: false
            },
            scroll: {
                fx: 'crossfade',
                pauseOnHover: true
            }
        });

        // checkboxes
        $('form.form-login input[type="radio"]').iCheck();
        $('form.form-rent input[type="radio"]').iCheck();

        // tabs
        $tabs.not(':first-child').hide();

        $tabsNav.find('li:first-child').addClass('current');

        $tabsNav.on('click', 'a', function(event){

            var $this = $(this),
                $parent = $this.parent(),
                href = $this.attr('href');

            if (!$parent.hasClass('current')) {

                $parent.addClass('current');
                $parent.siblings().removeClass('current');
                $tabs.filter(href).show().siblings().hide();

            }

            event.preventDefault();

        });

        // login
        $('.btn-login').on('click', function(event) {
            $(this).parents('.nav-user').addClass('opened');
            $formLogin.stop(true, true).fadeToggle(250);

            event.preventDefault();
            event.stopPropagation();
        });

        // form extend
        $('.form-rent .field').on('focusin', function() {

            $formExtend.show();

        });

    });

    // form login - outside click
    $(document).on('click', function(event) {

        var $target = $(event.target);

        if(!$target.parents('.form-login').length && !$target.is('.form-login')) {
            $('.form-login').fadeOut(250);
            $('.nav-user').removeClass('.opened');
        }

    });

})(jQuery);


// ===============Back to Top javascript================= //
var btn = $('#button');

$(window).scroll(function() {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '300');
});
// ===============Back to Top javascript================= //

