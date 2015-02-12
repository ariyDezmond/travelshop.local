<h5 class="hotel_title_2">Отзывы</h5>

<div class="reviews_page reviews_page_2">
    <div class="reviews_inner">
        <?php if (!empty($entries)): ?>
            <?php foreach ($entries as $e): ?>
                <div class="reviews_inner_item">
                    <span><?= date('d.m.Y H:i', strtotime($e['date'])) ?></span>
                    <h6 class="shortcomings">Недостатки</h6>
                    <p>Новый экспериментальный рейс будет состыкован в Азербайджане с рейсом Баку – Нью-Йорк – Баку. Рейсы будут выполняться ЗАО «Азербайджанские авиалинии» (AZAL) два раза в неделю – по вторникам и воскресеньям.</p>
                    <a href="" class="view_all">прочитать отзыв полностью</a>
                </div>
            <?php endforeach; ?>
            <a href="#" class="more_reviews">Загрузить еще</a>
        <?php else: ?>
            <p>Отзывов еще никто не добавлял. Будьте первым!</p>
        <?php endif; ?>
    </div>
</div>





<h3>Отзывы</h3>
<?php if (!empty($entries)): ?>
    <div class="reviews-items">
        <?php foreach ($entries as $e): ?>
            <div class="reviews-item">
                <span class="date"><?= date('d.m.Y H:i', strtotime($e['date'])) ?></span>
                <p class="reviews_name"><?= $e['name'] ?></p>
                <?php if (!empty($e['worths'])): ?>
                    <p class="stat good">Достоинства</p><div class="clear"></div>
                    <?php if (strlen($e['worths']) >= 200): ?>
                        <p class="desc"><?= mb_strimwidth(strip_tags($e['worths']), 0, 200, "...") ?></p>
                    <?php else: ?>
                        <p class="desc"><?= strip_tags($e['worths']) ?></p>
                    <?php endif; ?>
                    <p class="hidden_text"><?= $e['worths'] ?></p>
                    <br/>
                <?php endif; ?>
                <?php if (!empty($e['flaws'])): ?>
                    <p class="stat bad">Недостатки</p><div class="clear"></div>
                    <p class="desc"><?= mb_strimwidth(strip_tags($e['flaws']), 0, 200, "..."); ?></p>
                    <p class="hidden_text"><?= $e['flaws'] ?></p>
                <?php endif; ?>
                <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
            </div>
        <?php endforeach; ?>
        <!--<a class="show-more" href="#">Загрузить еще</a>-->
    </div>
<?php endif; ?>
<?php if (empty($entries)): ?>
    <p>Отзывов еще никто не добавлял</p>
<?php endif; ?>