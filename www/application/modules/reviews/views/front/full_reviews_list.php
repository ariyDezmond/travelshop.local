<h2><?= $this->lang->line('text_feedback_and_comments') ?></h2>
<div class="comments_page" id="feedback_main">
    <?php if (!empty($entries)): ?>
        <ul>
            <?php foreach ($entries as $e): ?>
                <li>
                    <a href="javascript:"><?= $e['name'] ?></a>
                    <span><?= date('d.m.Y', strtotime($e['date'])) ?></span>
                    <div class="clear"></div>
                    <p><?= $e['text'] ?></p>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        <p><?= $this->lang->line('text_no_feedback_found') ?></p>
    <?php endif; ?>



    <h6><?= $this->lang->line('text_leave_feedback') ?></h6>
    <div id="feedback_form_wrapper" class="webform">
        <form method="POST" action="javascript:" id="save_feedback">
            <input type="text" value="<?= set_value('name') ?>" <?php if (strpos(validation_errors(), '"Имя"')): ?>style="border: 2px solid red;" <?php endif ?> name="name" placeholder="<?= $this->lang->line('text_name') ?>"/>
            <input type="text" value="<?= set_value('email') ?>" <?php if (strpos(validation_errors(), '"E-mail"')): ?>style="border: 2px solid red;" <?php endif ?> name="email" placeholder="E-mail" />
            <textarea name="text" cols="30" rows="10" placeholder="<?= $this->lang->line('text_text') ?>"<?php if (strpos(validation_errors(), '"Сообщение"')): ?>style="border: 2px solid red;" <?php endif ?>><?= set_value('text') ?></textarea>
            <input type="submit" value="<?= $this->lang->line('text_publish') ?>" onclick="sendfeedback();" />
            <input type="hidden" name="do" value="feedbackSave">
        </form>
    </div>
</div>
<!-- pagination -->
<div class="pagination pagination_recall">
    <?php if ($itemsCount > 5): ?>
        <?php if ($startFrom >= 5): ?>
            <a href="/<?= $module ?>/<?= ($startFrom / 5 - 1) ?>"><?= $this->lang->line('text_prev') ?></a>
        <?php endif; ?>
        <ul class="pagination_number">
            <?php for ($p = 0; $p <= intval($itemsCount / 5); $p++): ?>
                <li <?php if ($startFrom == $p * 5): ?> class="active" <?php endif ?>>
                    <a href="/<?= $module ?>/<?= $p ?>"><?= $p + 1 ?></a>
                </li>
            <?php endfor; ?>
        </ul>
        <?php if ($startFrom + 5 < $itemsCount): ?>
            <a href="/<?= $module ?>/<?= ($startFrom / 5 + 1) ?>"><?= $this->lang->line('text_next') ?></a>
        <?php endif; ?>
    <?php endif; ?>
</div>
<!-- /pagination -->
<script>
    function sendfeedback() {
        $('#feedback_main').css('opacity', '0.5')
        $.ajax({
            url: '/feedback/save',
            type: "POST",
            dataType: "html",
            data: $('#save_feedback').serialize(),
            success: function (response) {
                document.getElementById('feedback_main').innerHTML = response;
                $('#feedback_main').css('opacity', '1')
            },
            error: function (response) {
                document.getElementById('feedback_form_wrapper').innerHTML = "<?= $this->lang->line('text_error_while_sending_form') ?>";
                $('#feedback_main').css('opacity', '1')
            }
        });
        return false;
    }
</script>