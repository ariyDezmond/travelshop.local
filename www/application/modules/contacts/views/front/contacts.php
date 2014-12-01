<div class="inner-contacts-block-1">
    <p><?= $entry['social_text'] ?></p>
    <ul class="social">
        <li><a href="http://vk.com/<?= $entry['social_vk'] ?>"><img src="img/social-icons/vk.png" alt=""/></a></li>
        <li><a href="http://fb.com/<?= $entry['social_fb'] ?>"><img src="img/social-icons/fb.png" alt=""/></a></li>
        <li><a href="http://twitter.com/<?= $entry['social_tw'] ?>"><img src="img/social-icons/tw.png" alt=""/></a></li>
        <li><a href="http://ok.ru/<?= $entry['social_ok'] ?>"><img src="img/social-icons/ok.png" alt=""/></a></li>
    </ul>
</div>
<div class="inner-contacts-block-2">
    <p>Адрес: <?= $entry['adress'] ?></br>
        Тел: <?= $entry['phone'] ?></br>
        E-mail: <?= $entry['email'] ?>
    </p>
</div>