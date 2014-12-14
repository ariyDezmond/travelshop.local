<div id="backcall_area" style="padding: 10px 30px;">
    <form method="POST" action="javascript:" id="backcall_form">
        <?php
        if ($this->session->userdata('error')) {
            echo $this->session->userdata('error');
        }
        $this->session->unset_userdata('error');
        ?>
        <div class="backcall_form_title">
            <p>Введите имя и телефон и мы Вам перезвоним!</p>
        </div>
        <?= validation_errors() ?>
        <div class="form-item">
            <label for="name" placeholder="Введите Имя">Имя<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Имя"')){ echo 'style="border-color:red;"'; } ?> type="text" name="name" size="50" maxlength="" placeholder="Введите Имя" value="<?= set_value('name') ?>" >
        </div>
        <div class="form-item">
            <label for="phone" placeholder="Введите номер телефона">Телефон<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Телефон"')){ echo 'style="border-color:red;"'; } ?> type="text" name="phone" size="50" maxlength="" placeholder="Введите номер телефона" value="<?= set_value('phone') ?>" >
        </div>
        <input type="hidden" name="do" value="backcallSend">
        <input class="back_call" type="submit" value="Перезвоните" onclick="javascript:sendbackcall()">
    </form>
</div>
<script>
    function sendbackcall() {
        $.ajax({
            url: '/backcall/send',
            type: "POST",
            dataType: "html",
            data: $('#backcall_form').serialize(),
            success: function (response) {
                document.getElementById('cboxLoadedContent').innerHTML = response;
            },
            error: function (response) {
                document.getElementById('cboxLoadedContent').innerHTML = "Ошибка при отправке формы";
            }
        });
        return false;
    }
</script>