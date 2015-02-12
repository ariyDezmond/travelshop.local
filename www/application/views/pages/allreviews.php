<div class="reviews_page">
    <div class="wrapper">
        <h3 class="main_title">Отзывы</h3>
        <div class="reviews_inner">
            <?= Modules::run('allreviews/view', true) ?>
            <div class="reviews_inner_item add_review">
                <?= Modules::run('allreviews/save', true) ?>
            </div>
            <a href="" class="add_review_btn">Добавить</a>
        </div>
    </div>
</div>