$(document).ready(function(){

    $(document).scroll(function(){
        if($(document).scrollTop() >= 97){
            $(".main-menu").addClass("fix-menu");
        }else{
            $(".main-menu").removeClass("fix-menu");
        }
    });

    $('.partners').bxSlider({
        useCSS: false,
        auto: true,
        pager: false,
        controls: true,
        minSlides: 6,
        maxSlides: 6,
        slideWidth: 150,
        slideMargin: 15
    });


    var divs = $('ul.rotate-1 > li'),
        k = 0,
        cntInGroup = 2; // по сколько элементов в группе

    divs.each(function(i){
        if(i % cntInGroup == 0){
            k++;
        }
        $(this).addClass('tmp-1' + k);
    });
    for(i = 1; i <= divs.length + 1 / cntInGroup; i++){
        $('.tmp-1' + i).wrapAll('<div class="slide" style="width: 100px; height: 100%; float: left;"></div>');
    }

    var divs2 = $('ul.rotate-2 > li'),
        k = 0,
        cntInGroup = 2; // по сколько элементов в группе

    divs2.each(function(i){
        if(i % cntInGroup == 0){
            k++;
        }
        $(this).addClass('tmp-2' + k);
    });
    for(i = 1; i <= divs2.length + 1 / cntInGroup; i++){
        $('.tmp-2' + i).wrapAll('<div class="slide" style="width: 100px; height: 100%; float: left;"></div>');
    }

    $('.rotate-1').bxSlider({
        useCSS: true,
        //auto: true,
        pager: false,
        controls: true,
        minSlides: 3,
        maxSlides: 3,
        slideWidth: 98,
        slideMargin: 5,
        slideSelector: '.slide',
        infiniteLoop: false
    });

    $('.rotate-2').bxSlider({
        useCSS: true,
        //auto: true,
        pager: false,
        controls: true,
        minSlides: 3,
        maxSlides: 3,
        slideWidth: 98,
        slideMargin: 5,
        slideSelector: '.slide',
        infiniteLoop: false
    });

    var myMap;

// Дождёмся загрузки API и готовности DOM.
    ymaps.ready(init);

    function init () {
        //Создание экземпляра карты и его привязка к контейнеру с
        //заданным id ("map").
        myMap = new ymaps.Map('map', {
            // При инициализации карты обязательно нужно указать
            // её центр и коэффициент масштабирования.
            center: [55.76, 37.64], // Москва
            zoom: 10
        });
    }

});
