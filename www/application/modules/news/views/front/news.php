<div class="news-blog-list-page">
    <h1 class="block-title">Новости</h1>
    <div class="news-blog-list-items">
        <?php foreach ($entries as $entry): ?>
            <div class="news-blog-list-item">
                <img src="/images/news/<?= $entry['image'] ?>" alt=""/>
                <a class="title" href="/news/<?= $entry['url'] ?>"><?= $entry['name'] ?></a>
                <span><?= date('d.m.Y h:i', strtotime($entry['date'])) ?></span>
                <p><?= mb_strimwidth(strip_tags($entry['text']), 0, 500, "..."); ?></p>
                <a class="link-more" href="/news/<?= $entry['url'] ?>">Перейти ></a>
            </div>
        <?php endforeach; ?>
    </div>
    <!--<ul class="pagination">-->
    <!--<a class="first" href="#">Предыдущая</a>-->
    <!--<li><a href="#">1</a></li>-->
    <!--<li><a href="#">2</a></li>-->
    <!--<li><a href="#">3</a></li>-->
    <!--<li><a href="#">4</a></li>-->
    <!--<li><a href="#">5</a></li>-->
    <!--<li><a href="#">6</a></li>-->
    <!--<li><a href="#">7</a></li>-->
    <!--<li><a href="#">8</a></li>-->
    <!--<li><a href="#">9</a></li>-->
    <!--<a class="last" href="#">Следующая</a>-->
    <!--</ul>-->
</div>