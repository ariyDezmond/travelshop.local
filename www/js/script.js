$(document).ready(function(){

    $('.video-items').bxSlider({
        useCSS: false,
        auto: true,
        pager: false,
        controls: true,
        minSlides: 4,
        maxSlides: 4,
        slideWidth: 185,
        slideMargin: 55
    });

    $('.banner-items').bxSlider({
        mode: 'fade',
        useCSS: false,
        auto: true,
        pager: false,
        controls: false
    });

});
