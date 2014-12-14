<h3>Оставить отзыв:</h3>
<form action="">
    <div class="fields">
        <label>Имя</label>
        <input type="text"/>

        <label>Достоинства</label>
        <textarea name="" cols="30" rows="10"></textarea>

        <label>Недостатки</label>
        <textarea name="" cols="30" rows="10"></textarea>

    </div>
    <input type="submit" value="Добавить"/>
</form>
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