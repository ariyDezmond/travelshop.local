<div class="avia-block">
    <div class="avia-block-inner">
        <script charset="utf-8" async="true" src="//www.travelpayouts.com/widgets/aaf797c0f8cac524e381229d52f16774.js?v=329"></script>
    </div>
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
    <?= Modules::run('partners/view', true) ?>
