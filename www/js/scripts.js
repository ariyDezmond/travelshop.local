
$(window).load(function(){
   $('.flexslider').flexslider({
     animation: "slide",
     start: function(slider){
      $('#window').css({'display':'none','left':0});
       $('body').removeClass('loading');}
   });
 });

// function show(state){
//    document.getElementById('modal-wrapper').style.display = state;
//    document.getElementById('bg').style.display = state;
//    if(state == 'block') {
//     initScroll();
//    }
// }


// (function(cash) {
//   $(window).load(function() {

//    $('.modal-open').on('click',function(){
//        var modal_id = $(this).data('modal-id');
//        $(modal_id).fadeIn();
//        return false;
//    });
//    $('.modal-wrapper .bg, .modal-wrapper .close-modal').on('click',function(){
//        $(this).parents('.modal-wrapper').fadeOut();
//        return false;
//    });

//    $('.plagination').click(function( event ) {
//   $('html,body').animate({ scrollTop: $($(this).attr('href')).offset().top+"px" },1000);
//   event.preventDefault();
// });

//    // $('[data-tooltip]').hover(function(){ var t = $(this).data('tooltip');$(this).data('tooltip',$(this).html());$(this).html(t);}, function(){var t = $(this).data('tooltip');$(this).data('tooltip',$(this).html());$(this).html(t);});

//   });
// })(jQuery);
