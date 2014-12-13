<div class="contacts-block">
    <h1 class="block-title">Контакты</h1>
    <div class="inner-contacts-block-1">
        <p><?= $entry['social_text'] ?></p>
        <ul class="social">
            <?php if ($entry['social_vk']): ?>
                <li><a href="http://vk.com/<?= $entry['social_vk'] ?>"><img src="/img/social-icons/vk.png" alt=""/></a></li>
            <?php endif; ?>
            <?php if ($entry['social_fb']): ?>
                <li><a href="http://fb.com/<?= $entry['social_fb'] ?>"><img src="/img/social-icons/fb.png" alt=""/></a></li>
            <?php endif; ?>
            <?php if ($entry['social_tw']): ?>
                <li><a href="http://twitter.com/<?= $entry['social_tw'] ?>"><img src="/img/social-icons/tw.png" alt=""/></a></li>
            <?php endif; ?>
            <?php if ($entry['social_ok']): ?>
                <li><a href="http://ok.ru/<?= $entry['social_ok'] ?>"><img src="/img/social-icons/ok.png" alt=""/></a></li>
            <?php endif; ?>
        </ul>
    </div>
    <div class="inner-contacts-block-2">
        <p>Адрес: <?= $entry['adress'] ?></br>
            Тел: <?= $entry['phone'] ?></br>
            E-mail: <?= $entry['email'] ?>
        </p>
    </div>
    <div class="inner-contacts-block-3">
        <p>Посмотреть на карте</p>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB83YhiUJ6TXml08s-fBd1oMof0nNboIhg"></script>
        <script type="text/javascript">
            function initialize() {
                var myLatlng = new google.maps.LatLng(<?= $entry['coords'] ?>);
                var mapOptions = {
                    zoom: 13,
                    center: myLatlng
                }
                var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: 'TravelShop'
                });
                google.maps.event.addListener(marker, "dragend", function (event) {
                    var point = marker.getPosition();// новые координаты маркера: point.lat() и point.lng()
                    $('#coords').val(point);
                });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        <div class="map">
            <div id="map-canvas"></div>
        </div>
    </div>
</div>