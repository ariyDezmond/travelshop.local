<h3>Отзывы</h3>
<?php if (!empty($entries)): ?>
    <div class="reviews-items">
        <div class="reviews-item">
            <span class="date">23.09.2014</span>
            <p class="reviews_name">Кличко</p>
            <p class="stat bad">Недостатки</p><div class="clear"></div>
            <p class="desc">Начнем с того, что если вы приезжаете ночью,в так называемой регистратуре никто вас не встретит..по причине беспробудного сна..И дальше пошло-поехало..
                Здание совдеповской постройк</p>
            <a class="reed-full" data-text="Скрыть отзыв" href="#">Прочитать отзыв полностью</a>
            <p class="hidden_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui architecto et odit? Tempore quaerat vero expedita, placeat rerum magnam voluptates non! Sequi, quisquam cupiditate maiores sapiente esse ex beatae quasi est quod cumque magni, ea consequatur, nisi et aut consequuntur.</p>
        </div>
        <a class="show-more" href="#">Загрузить еще</a>
    </div>
<?php endif; ?>
<?php if (empty($entries)): ?>
    <p>Отзывов еще никто не добавлял</p>
<?php endif; ?>