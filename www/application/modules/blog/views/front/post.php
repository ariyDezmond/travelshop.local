<div class="news-blog-page">
    <h1 class="block-title"><?= $entry['name'] ?></h1>
    <span class="date"><?= date('d.m.Y h:i', strtotime($entry['date'])) ?></span>
    <img width="300px" src="/images/blog/<?= $entry['image'] ?>" alt=""/>
    <?= $entry['text'] ?>
</div>