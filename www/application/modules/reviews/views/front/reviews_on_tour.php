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