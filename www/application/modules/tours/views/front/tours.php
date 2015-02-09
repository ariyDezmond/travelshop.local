<div class="tours <?php if($this->uri->segment(1) == 'tours') echo 'abroad_tours'?>">
    <div class="wrapper">
        <h3 class="main_title">ТУРЫ ОТ TRAVELSHOP</h3>
        <ul>
            <?php
            if (is_array($entries)) {
                foreach ($entries as $entry):
                    ?>
                    <li>
                        <div class="tours_title">
                            <h4><a href="/<?= $module ?>/<?= $entry['url'] ?>/"><?= $entry['name'] ?></a></h4>
                            <h5><a href="/<?= $module ?>/<?= $entry['url'] ?>/"><?= $entry['country'] ?></a></h5>
                        </div>
                        <div class="tours_content">
                            <img style="height: 100%;" src="/images/<?= $module ?>/<?= $entry['image'] ?>" alt="<?= $entry['name'] ?>">
                            <h6><a href="/<?= $module ?>/<?= $entry['url'] ?>/">Акиция от TravelShop</a></h6>
                            <div class="tours_price">
                                <p><?= $entry['price'] ?><span>Тур на двоих</span></p>
                                <p class="date"><?= mysql_russian_datemonth($entry['datefrom']) ?><br><?= $entry['duration'] ?></p>
                                <a href="/<?= $module ?>/<?= $entry['url'] ?>/">Подробнее</a>
                            </div>
                        </div>
                    </li>
                    <?php
                endforeach;
            }else {
                echo 'Записей в базе не обнаружено';
            }
            ?>
        </ul>
        <a href="/tours/" class="more_tours">Еще Туры</a>
    </div><!-- /wrapper -->
</div><!-- /tours -->



<!--<div class="tours-blocks">
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
</div>-->