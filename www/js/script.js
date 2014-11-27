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
