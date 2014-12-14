<?php if (!empty($entries)): ?>
    <div class="partners-block">
        <h1 class="block-title">Партнеры</h1>
        <ul class="partners">
            <?php foreach ($entries as $entry): ?>
                <li>
                    <a style="cursor:default" href="javascript:"><img src="/getimage.php?key=images/partners/<?= $entry['image'] ?>&type=1" alt=""/></a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
<?php endif; ?>