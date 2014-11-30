<div class="tours-blocks">
    <h1 class="block-title">Туры за рубежом</h1>
    <div class="tours-items">
        <?php
        if (is_array($entries)) {
            foreach ($entries as $entry):
                ?>
                <div class="tour-item">
                    <div class="tour-item-header">
                        <p class="title"><?= $entry['name'] ?></p>
                        <p class="city"><?= $entry['country'] ?></p>
                    </div>
                    <div class="tour-item-body">
                        <img src="/images/<?= $module ?>/<?= $entry['image'] ?>" alt=""/>
                        <div class="desc">
                            <div class="desc-inner">
                                <span class="price"><?= $entry['price'] ?></span>
                                <span class="date"><?= mysql_russian_datemonth($entry['datefrom']) ?></span>
                                <span class="count"><?= $entry['type'] ?></span>
                                <span class="period"><?= $entry['duration'] ?></span>
                            </div>
                            <a href="/<?= $module ?>/<?= $entry['url'] ?>">Подробнее</a>
                        </div>
                    </div>
                </div>
                <?php
            endforeach;
        }else {
            echo 'Записей в базе не обнаружено';
        }
        ?>
        <a class="see-all-tour" href="/tours">Еще туры</a>
    </div>
</div>