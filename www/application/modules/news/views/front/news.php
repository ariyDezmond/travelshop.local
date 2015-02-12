<div class="news_and_blog">
    <div class="wrapper">
        <h3 class="main_title">НОВОСТИ</h3>
        <?php foreach ($entries as $entry): ?>
            <div class="news_and_blog_item">
                <img src="/images/news/<?= $entry['image'] ?>" alt="<?= $entry['name'] ?>">
                <h6><?= $entry['name'] ?><span><?= date('d.m.Y h:i', strtotime($entry['date'])) ?></span></h6>
                <p><?= mb_strimwidth(strip_tags($entry['text']), 0, 500, "..."); ?></p>
                <a href="/news/<?= $entry['url'] ?>">Перейти &gt;</a>
            </div>
        <?php endforeach; ?>
    </div>
</div>