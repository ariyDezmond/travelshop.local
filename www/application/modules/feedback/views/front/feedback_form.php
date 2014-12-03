<div id="feedback_form">
    <div class="inner-contacts-block-3" style="margin-bottom: 70px;">
        <form method="POST" action="javascript:" id="save_feedback">
            <p>Напишите нам</p>
            <label>Имя, Фамилия</label>
            <input name="name" type="text" value="<?= set_value('name') ?>" <?php
            if (strpos(validation_errors(), '"Имя"')) {
                echo 'style="border:2px solid red;"';
            }
            ?>>
            <label>Телефон</label>
            <input name="phone" type="text" value="<?= set_value('phone') ?>" <?php
            if (strpos(validation_errors(), '"Телефон"')) {
                echo 'style="border:2px solid red;"';
            }
            ?>/>
            <label>E-mail</label>
            <input name="email" type="text" value="<?= set_value('email') ?>" <?php
            if (strpos(validation_errors(), '"E-mail"')) {
                echo 'style="border:2px solid red;"';
            }
            ?>/>
            <label>Сообщение</label>
            <textarea name="text" cols="30" rows="10" <?php
            if (strpos(validation_errors(), '"Сообщение"')) {
                echo 'style="border:2px solid red;"';
            }
            ?>><?= set_value('text') ?></textarea>
            <input type="hidden" name="do" value="feedbackSave">
            <input type="submit" value="Отправить" onclick="javascript:sendfeedback()"/>
        </form>
    </div>
</div>
<script>
    function sendfeedback() {
        $.ajax({
            url: '/feedback/save',
            type: "POST",
            dataType: "html",
            data: $('#save_feedback').serialize(),
            success: function (response) {
                document.getElementById('feedback_form').innerHTML = response;
            },
            error: function (response) {
                document.getElementById('feedback_form').innerHTML = "Ошибка при отправке формы";
            }
        });
        return false;
    }
</script>