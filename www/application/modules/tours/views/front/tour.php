<div class="tour-page">
    <h1 class="block-title"><?= $entry['name'] ?></h1>
    <div class="description-block">
        <div class="images-block">
            <div class="main-image">
                <a href="#"><img src="/images/tours/<?= $entry['image'] ?>" alt=""/></a>
            </div>
            <div class="rotation-images">
                <ul class="rotate-1">
                    <?php foreach ($tour_images as $img): ?>
                        <li><a href="javascript:"><img src="/images/tours/<?= $img['image'] ?>" alt=""/></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
        <div class="tour-desc-block">
            <p><span>Вылет:</span><?= $entry['flightout'] ?></p>
            <p><span>Курорт:</span><?= $entry['country'] ?></p>
            <p><span>Длительность:</span><?= $entry['duration'] ?></p>
            <p><span>Даты тура:</span>с <?= mysql_russian_date($entry['datefrom']) ?> по <?= mysql_russian_date($entry['dateto']) ?></p></br>
            <p><span>Отель:</span><?php
                if (count($hotel) > 1) {
                    echo $hotel['name'];
                } else {
                    echo 'Нет';
                }
                ?></p>
            <p><span>Размещение:</span><?= $entry['placement'] ?></p>
            <p><span>Питание:</span><?= $entry['feed'] ?></p>
            <p><span>Номер:</span><?= $entry['room'] ?></p></br>
            <p><span>Рейс туда:</span><?php
                if ($entry['outflight']) {
                    echo $entry['outflight'];
                } else {
                    echo 'Нет';
                }
                ?></p>
            <p><span>Рейс обратно:</span><?php
                if ($entry['backflight'])
                    echo $entry['outflight'];
                else
                    echo 'Нет'
                    ?></p>
            <p class="info">В стоимость тура включено: <?= $entry['priceinc'] ?></p>
            <div class="inner-block">
                <span>Итоговая цена</span>
                <p><?= $entry['price'] ?></p>
                <span>= <?= $entry['priceperone'] ?> за 1 чел.</span>
            </div>
            <div class="inner-block">
                <a href="#">Купить</a>
            </div>
        </div>
        <div class="tour-number">
            <p>Тур № <?= $entry['id'] ?></p>
        </div>
    </div>
    <?php if (count($hotel) > 1): ?>
        <div class="hotel-description-block">
            <h2 class="block-title" style="font-size: 25px;">Описание отеля</h2>
            <div class="hotel-inner-description-block">
                <div class="inner-block">
                    <div class="images-block">
                        <div class="main-image">
                            <a href="#"><img src="/images/hotels/<?= $hotel['image'] ?>" alt=""/></a>
                        </div>
                        <div class="rotation-images">
                            <ul class="rotate-2">
                                <?php foreach ($hotel_images as $img): ?>
                                    <li><a href="javascript:"><img src="/images/hotels/<?= $img['image'] ?>" alt=""/></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                    <div class="hotel-desc">
                        <h3><?= $hotel['name'] ?></h3>
                        <?php $s = $hotel['status'] ?>
                        <div class="five-star">
                            <ul class="stars" title="Статус отеля">
                                <li><a <?php if ($s >= 1): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 2): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 3): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 4): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 5): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 6): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                                <li><a <?php if ($s >= 7): ?> class="active" <?php endif; ?>href="javascript:" style="cursor: default"></a></li>
                            </ul>
                        </div>
                        <p>Сайт отеля: <a href="<?= $hotel['site'] ?>"><?= $hotel['site'] ?></a></p>
                        <p>Телефон: <?= $hotel['phone'] ?></p>
                        <p>Факс: <?= $hotel['fax'] ?></p>
                        <p>Email: <?= $hotel['email'] ?></p>
                        <p>Количество номеров: <?= $hotel['rooms'] ?></p>
                        <p>Пляжная линия: <?= $hotel['beachl'] ?></p>
                    </div>
                    <div class="hotel-info">
                        <h3>Информация об отеле:</h3>
                        <p><?= $hotel['text'] ?></p>
                    </div>
                </div>
                <div class="hotel-services">
                    <h3>Услуги при отеле</h3>
                    <div class="services-items">
                        <div class="service-item">
                            <img src="/img/services/service-1.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-2.jpg" alt=""/>
                            <p class="title">Парковка:</p>
                            <p>Частная</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-3.jpg" alt=""/>
                            <p class="title">Спорт:</p>
                            <p>Пешие прогулки</p>
                            <p>Водные виды</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-4.jpg" alt=""/>
                            <p class="title">Удобcтва в номерах:</p>
                            <p>Кондиционер</p>
                            <p>Обслуживание в номерах</p>
                            <p>Телевизор</p>
                            <p>Душ</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-5.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-6.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-7.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-8.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-9.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                        <div class="service-item">
                            <img src="/img/services/service-10.jpg" alt=""/>
                            <p class="title">Общие услуги:</p>
                            <p>Сад</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <div class="reviews-form-block">
        <?= Modules::run('reviews/save', true) ?>
    </div>
    <div class="reviews-block">
        <?= Modules::run('reviews/view', true) ?>
    </div>
</div>