
<div class="avia-block">
    <div class="avia-block-inner">
        <h2>Онлайн бронироавние билетов</h2>

            <input type="radio" name="option[]" value="a1">
          <span class="checkbox">В одну сторону</span>
            <input type="radio" name="option[]" value="a2">
          <span class="checkbox">Туда и обратно</span>
            <input type="radio" name="option[]" value="a3">
          <span class="checkbox">Составить маршрут</span>
            <div class="clear"></div>
        <div class="avia-block-item avia-block-item-1">
            <label for="">Город вылета</label>
            <input type="text">
        </div>
            <span class="form_marker"></span>
        <div class="avia-block-item avia-block-item-2">
            <label for="">Город назначения</label>
            <input type="text">
        </div>
            <div class="clear"></div>
        <div class="avia-block-item avia-block-item-3">
            <label for="">Туда</label>
            <input type="text">
        </div>
        <div class="avia-block-item avia-block-item-4">
            <label for="">Обратно</label>
            <input type="text">
        </div>
            <div class="clear"></div>
        <div class="passangers">
            <p>Количество пассажиров</p>
            <div class="passangers_item passangers_item_1">
                <span></span>
                <input class="passangers_field" type="text" value="0">
                <a href="" class="passangers_more"></a>
                <a href="" class="passangers_less"></a>
            </div>
            <div class="passangers_item passangers_item_2">
                <span></span>
                <input class="passangers_field" type="text" value="0">
                <a href="" class="passangers_more"></a>
                <a href="" class="passangers_less"></a>
            </div>
            <div class="passangers_item passangers_item_3">
                <span></span>
                <input class="passangers_field" type="text" value="0">
                <a href="" class="passangers_more"></a>
                <a href="" class="passangers_less"></a>
            </div>
        </div>
        <input type="submit" class="economy_class" value="Эконом">
        <input type="submit" class="business_class" value="Бизнесс">
            <div class="clear"></div>
        <input type="radio" class="checkbox_bottom" name="option2" value="a5">
        <span class="checkbox">Показать отели в соседней вкладке</span>
            <a href="#" class="blue_find_btn">Найти</a>
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
    