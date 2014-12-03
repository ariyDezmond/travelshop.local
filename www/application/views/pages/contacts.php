<div class="main-container" style="margin-top: 100px;">
    <div class="contacts-page">
        <h1 class="block-title">Контакты</h1>
        <?= Modules::run('contacts/view', true, 'contacts') ?>
        <?= Modules::run('feedback/view', true) ?>
        <style type="text/css">
            #map-contacts{
                width: 1100px;
                height: 350px;
            }
        </style>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB83YhiUJ6TXml08s-fBd1oMof0nNboIhg"></script>
        <script type="text/javascript">
            function initialize() {
                var myLatlng = new google.maps.LatLng(<?= $contacts['coords'] ?>);
                var mapOptions = {
                    zoom: 13,
                    center: myLatlng
                }
                var map = new google.maps.Map(document.getElementById('map-contacts'), mapOptions);

                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: 'TravelShop'
                });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        <div class="map">
            <div id="map-contacts"></div>
        </div>
    </div>
</div>
</div>