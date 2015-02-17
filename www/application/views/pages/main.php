<article>
    <div class="wrapper">
        <div class="news">
            <h4>Новости</h4>
            <?php foreach ($news as $entry): ?>
                <div class="block_item">
                    <a href="/news/<?= $entry['url'] ?>" class="block_img_wrapper"><img src="/images/news/<?= $entry['image'] ?>" alt="<?= $entry['name'] ?>"></a>
                    <div class="block_item_content">
                        <h5><a href="/news/<?= $entry['url'] ?>"><?= mb_strimwidth(strip_tags($entry['name']), 0, 61, "..."); ?></a></h5>
                        <p><?= mb_strimwidth(strip_tags($entry['text']), 0, 200, "..."); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>

            <a href="/news/" class="read_more">Читать еще...</a>

        </div><!-- news -->

        <div class="blog">
            <h4>Блог</h4>
            <?php foreach ($blog as $entry): ?>
                <div class="block_item">
                    <a href="/blog/<?= $entry['url'] ?>" class="block_img_wrapper"><img src="/images/blog/<?= $entry['image'] ?>" alt="<?= $entry['name'] ?>"></a>
                    <div class="block_item_content">
                        <h5><a href="/blog/<?= $entry['url'] ?>"><?= mb_strimwidth(strip_tags($entry['name']), 0, 61, "..."); ?></a></h5>
                        <p><?= mb_strimwidth(strip_tags($entry['text']), 0, 200, "..."); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>

            <a href="/blog/" class="read_more">Читать еще...</a>

        </div><!-- blog -->
    </div><!-- /wrapper -->
</article><!-- /article -->


<div class="search_tour">
    <div class="wrapper">
        <iframe src="http://spb.ntk-intourist.ru/main.aspx?userCSS=<?= base_url() ?>css/ex2.css" width="100%" height="100%"></iframe>
    </div><!-- /wrapper -->
</div><!-- /search_tour -->

<?= Modules::run('tours/view', true) ?>

<div class="hotel">
    <div class="wrapper">

        <h3 class="main_title">НАЙТИ ОТЕЛЬ</h3>

        <div class="left_side">
            <p class="blue"><?= Modules::run('widget/getByTitle', 'main-text-1') ?></p>
            <p><?= Modules::run('widget/getByTitle', 'main-text-2') ?></p>
        </div>

        <?= Modules::run('requests/save'); ?>

    </div><!-- /wrapper -->
</div><!-- /hotel -->

<div class="reviews">
    <div class="wrapper">

        <h3 class="main_title">ОТЗЫВЫ КЛИЕНТОВ</h3>

        <div class="flexslider">
            <ul class="slides reviews_slider">
                <?= Modules::run('allreviews/get_for_slider') ?>
            </ul>
        </div><!-- /flexslider -->

    </div><!-- /wrapper -->
</div><!-- /reviews -->




<div class="partners">
    <?= Modules::run('partners/view', true) ?>
</div><!-- /partners -->




<!--<div class="avia-block">
    <div class="avia-block-inner">
        <script charset="utf-8" async="true" src="//www.travelpayouts.com/widgets/aaf797c0f8cac524e381229d52f16774.js?v=329"></script>
    </div>
</div>
<div class="main-container">
<? Modules::run('tours/view', true) ?>
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
<? Modules::run('requests/save'); ?>
    </div>
<? Modules::run('partners/view', true) ?>-->
