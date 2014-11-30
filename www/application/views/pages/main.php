<div class="avia-block">

</div>
<div class="main-container">
    <?= Modules::run('tours/view', true) ?>
    <div class="search-hotel-block">
        <h1 class="block-title">Найти отель</h1>
        <div class="hotel-desc">
            <img src="img/img.png" alt=""/>
            <p class="title">Оставьте заявку и наш менеджер
                свяжется с Вами, как только найдет
                подходящий отель для Вас.</p>
            <p class="dd">
                Теперь Вам не нужно самому искать отели,
                доверьте эту работу нам, Вам нужно только
                указать параметры отеля, а мы позаботимся
                об остальном сами.
            </p>
        </div>
        <?= Modules::run('requests/save'); ?>
    </div>
    <div class="partners-block">
        <h1 class="block-title">Партнеры</h1>
        <ul class="partners">
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
            <li><a href="#"><img src="img/partner-image.png" alt=""/></a></li>
        </ul>
    </div>