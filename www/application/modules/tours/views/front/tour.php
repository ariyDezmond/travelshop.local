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
                        <div class="five-star">
                            <ul class="stars">
                                <li><a class="active" href="#"></a></li>
                                <li><a class="active" href="#"></a></li>
                                <li><a class="active" href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
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
        <h3>Оставить отзыв:</h3>
        <form action="">
            <div class="fields">
                <label>Имя</label>
                <input type="text"/>
                <label>Достоинства</label>
                <textarea name="" cols="30" rows="10"></textarea>
                <label>Недостатки</label>
                <textarea name="" cols="30" rows="10"></textarea>
            </div>
            <input type="submit" value="Добавить"/>
        </form>
    </div>
    <div class="reviews-block">
        <h3>Отзывы</h3>
        <div class="reviews-items">
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat bad">Недостатки</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui architecto et odit? Tempore quaerat vero expedita, placeat rerum magnam voluptates non! Sequi, quisquam cupiditate maiores sapiente esse ex beatae quasi est quod cumque magni, ea consequatur, nisi et aut consequuntur.</p>
            </div>
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat good">Достоинства</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi enim, quidem quis suscipit maxime quod quaerat quos, assumenda nisi dolore natus! Quae laudantium autem, suscipit eligendi vero eveniet esse ipsum impedit velit explicabo minus commodi distinctio beatae consectetur amet! Consequuntur!</p>
            </div>
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat bad">Недостатки</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, numquam saepe libero culpa nihil quam, maxime autem sequi molestias deleniti, consectetur doloribus sapiente nemo suscipit eius odit explicabo cumque ducimus facere accusamus incidunt illum modi. Necessitatibus fugiat non est veniam!</p>
            </div>
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat good">Достоинства</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit voluptatem ex eum nulla tempora voluptatum, natus nemo facilis quaerat sunt similique dolor tenetur libero beatae deserunt odio sit ut qui ab, nisi? Tempora inventore pariatur aliquam sunt consequuntur voluptatem perspiciatis.</p>
            </div>
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat bad">Недостатки</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur, sit quibusdam temporibus! Assumenda officia eos obcaecati autem quisquam ex cupiditate, accusamus enim. Facilis eos itaque ducimus, ratione consectetur architecto dolore aliquam numquam et dicta perferendis facere rerum cum ullam enim.</p>
            </div>
            <div class="reviews-item">
                <span class="date">23.09.2014</span>
                <p class="stat bad">Недостатки</p><p class="reviews_name">Кличко</p>
                <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                    Здание совдеповской постройк</p>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
                <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque suscipit aliquam, pariatur vitae iste quisquam, assumenda. Debitis deserunt illum natus, doloribus aspernatur expedita explicabo veritatis perferendis nihil blanditiis dicta. Delectus voluptatem tempora quis itaque eum ab modi officiis nam omnis!</p>
            </div>
            <a class="show-more" href="#">Загрузить еще</a>
        </div>
    </div>
</div>