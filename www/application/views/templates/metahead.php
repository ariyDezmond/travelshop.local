<!DOCTYPE html>
<html>
    <head>
        <title><?= $title ?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <?php if (isset($keyw) && isset($desc)): ?>
            <meta name="keywords" content="<?= $keyw ?>">
            <meta name="description" content="<?= $desc ?>">
        <?php else: ?>
            <meta name="keywords" content="<?= Modules::run('widget/getByTitle', 'meta-main-keywords') ?>">
            <meta name="description" content="<?= Modules::run('widget/getByTitle', 'meta-main-description') ?>">
        <?php endif; ?>

        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/slider.css">
        <link rel="stylesheet" href="/colorbox/colorbox.css">
        <link rel="stylesheet" href="/css/backcall.css">
        <link rel="stylesheet" href="/css/avia.css">

        <style type="text/css">
            #map-canvas{
                width: 400px;
                height: 250px;
            }
        </style>
        <!-- jQuery -->
        <script src="http://yandex.st/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <!-- Jquery-UI -->
        <script src="http://yandex.st/jquery-ui/1.8.16/jquery-ui.min.js" type="text/javascript"></script>
        <!-- языковой пакет для jQuery-UI -->
        <script src="http://yandex.st/jquery-ui/1.8.15/i18n/jquery.ui.datepicker-ru.min.js" type="text/javascript"></script>
        <script defer src="/js/jquery.flexslider.js"></script>
        <script src="/js/jquery.bxslider.js"></script>
        <script src="/js/scripts.js"></script>
        <script src="/colorbox/jquery.colorbox-min.js"></script>
        
        <!-- Pure -->
        <script src="/js/pure.min.js" type="text/javascript"></script>
        <!-- Underscore -->
        <script src="/js/underscore-min.js" type="text/javascript"></script>
        <!-- данные для автокомплита -->
        <script src="http://nano.aviasales.ru/assets/autocomplete_places_ru.js" type="text/javascript"></script>

        <!-- опеределение origin по geoip -->
        <script src="http://nano.aviasales.ru/assets/geoip_location_en.js"></script>


        <!-- инициализатор формы -->
        <script src="http://nano.aviasales.ru/assets/minimal/inline_form.js" type="text/javascript"></script>
        <script src="/js/avia.js"></script>
        <script>
            jQuery(document).ready(function () {
                
                jQuery('#backcall').colorbox({
                    opacity: 0.5,
                    width: "600",
                    height: "360",
                    close: "Закрыть"
                });
                $('.rotator a, .rotate-1 a').colorbox({
                    opacity: 0.5,
                    rel: 'gal',
                    current: "Фото {current} из {total}",
                    previous: 'Пред.',
                    next: 'След.',
                    close: 'Закрыть',
                    maxWidth: "1000",
                    maxHeight: "600",
                    scalePhotos: true
                });
                $('.rotator2 a, .rotate-2 a').colorbox({
                    opacity: 0.5,
                    rel: 'gal',
                    current: "Фото {current} из {total}",
                    previous: 'Пред.',
                    next: 'След.',
                    close: 'Закрыть',
                    maxWidth: "1000",
                    maxHeight: "600",
                    scalePhotos: true
                });
                $('.buy').colorbox({width: "580", height: "450"});
                
                
            });
        </script>

    </head>