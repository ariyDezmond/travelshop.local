<!DOCTYPE html>
<html>
    <head>
        <title><?= $title ?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <link rel="stylesheet" href="/scss/style.css">
        <link rel="stylesheet" href="/colorbox/colorbox.css">
        <link rel="stylesheet" href="/css/backcall.css">

        <style type="text/css">
            #map-canvas{
                width: 400px;
                height: 250px;
            }
        </style>
        <script src="/js/jquery-2.1.1.min.js"></script>
        <script src="/js/jquery.bxslider.js"></script>
        <script src="/js/script.js"></script>
        <script src="/colorbox/jquery.colorbox-min.js"></script>
        <script>
            jQuery(document).ready(function () {
                jQuery('a#backcall').colorbox({
                    opacity: 0.5,
                    height: "400",
                    width: "500",
                    close: "Закрыть"
                });
            });
        </script>

    </head>