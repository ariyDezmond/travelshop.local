<article>
    <div class="wrapper">
        <div class="news">
            <h4>Новости</h4>

            <div class="block_item">
                <a href="#" class="block_img_wrapper"><img src="img/jpg/news-img.jpg" alt=""></a>
                <div class="block_item_content">
                    <h5><a href="#">Новая спортивная точка “Геркулес”!</a></h5>
                    <p>Минус 30 см в объемах за две недели - это не розыгрыш! Занимаясь по системе для похудения оксисайз с Мариной Корпан, следуя советам диетолога . . .</p>
                    <div class="info_block">
                        <a href="#" class="views">160</a>
                        <a href="#" class="comments">12</a>
                        <span>29.11.2014 - 18:29</span>
                    </div>
                </div>
            </div>
            <!-- /block_item -->


            <a href="" class="read_more">Читать еще...</a>

        </div><!-- news -->

        <div class="blog">
            <h4>Блог</h4>

            <div class="block_item">
                <a href="#" class="block_img_wrapper"><img src="img/jpg/blog-img.jpg" alt=""></a>
                <div class="block_item_content">
                    <h5><a href="#">Как не заболеть зимой при занятии  спортом на улице?</a></h5>
                    <p>Выглядеть моложе без дорогих операций и сложных косметических процедур? Антивозрастная программа . . . </p>
                    <div class="info_block">
                        <a href="#" class="views">160</a>
                        <a href="#" class="comments">12</a>
                        <span>29.11.2014 - 18:29</span>
                    </div><!-- info_block -->
                </div><!-- block_item_content -->
            </div>
            <!-- /block_item -->


            <a href="" class="read_more">Читать еще...</a>

        </div><!-- blog -->
    </div><!-- /wrapper -->
</article><!-- /article -->


<div class="search_tour">
    <div class="wrapper">
        <!--<iframe src="http://spb.ntk-intourist.ru/main.aspx?userCSS=<?= base_url() ?>css/ex2.css&ClientID=#####" width="100%" height="100%">-->
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
                <?php for ($i = 0; $i < 4; $i++): ?>
                    <li>
                        <div class="reviews_item_wrapper">

                            <div class="reviews_item">
                                <div class="reviews_icon"> <img src="/img/miniIcon.png" alt=""></div>
                                <h6>Виктор Иванов</h6>
                                <div class="clear"></div>
                                <p>Прикольная штука, заказал сразу 2 шт., для себя и для друга, часто летаем за границу по делам, теперь в полной зарядке все наши гаджеты, заряда хватает для всех. Спасибо! </p>
                            </div><!-- /reviews_item -->

                            <div class="reviews_item reviews_item_2">
                                <div class="reviews_icon"> <img src="/img/miniIcon.png" alt=""></div>
                                <h6>Виктор Иванов</h6>
                                <div class="clear"></div>
                                <p>Прикольная штука, заказал сразу 2 шт., для себя и для друга, часто летаем за границу по делам, теперь в полной зарядке все наши гаджеты, заряда хватает для всех. Спасибо! </p>
                            </div><!-- /reviews_item -->

                            <div class="reviews_item">
                                <div class="reviews_icon"> <img src="/img/miniIcon.png" alt=""></div>
                                <h6>Виктор Иванов</h6>
                                <div class="clear"></div>
                                <p>Прикольная штука, заказал сразу 2 шт., для себя и для друга, часто летаем за границу по делам, теперь в полной зарядке все наши гаджеты, заряда хватает для всех. Спасибо! </p>
                            </div><!-- /reviews_item -->

                            <div class="reviews_item reviews_item_2">
                                <div class="reviews_icon"> <img src="/img/miniIcon.png" alt=""></div>
                                <h6>Виктор Иванов</h6>
                                <div class="clear"></div>
                                <p>Прикольная штука, заказал сразу 2 шт., для себя и для друга, часто летаем за границу по делам, теперь в полной зарядке все наши гаджеты, заряда хватает для всех. Спасибо! </p>
                            </div><!-- /reviews_item -->

                        </div><!-- /reviews_item_wrapper -->
                    </li>
                <?php endfor; ?>
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
