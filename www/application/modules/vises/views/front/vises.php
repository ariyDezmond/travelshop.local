<div class="sidebar_viza">
    <?php if (!empty($entries)): ?>
        <ul>
            <?php foreach ($entries as $entry): ?>
                <li><a href="/vises/<?= $entry['url'] ?>/"><?= $entry['name'] ?></a></li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>
</div>
<div class="sidebar_content">
    <?php
    if ($this->uri->segment(1) == 'vises' && !is_string($this->uri->segment(2))) {
        echo $firstEntry['text'];
    } else {
        echo $text['text'];
    }
    ?>
</div>

