<div id="request_form">
    <form method="POST" action="javascript:" id="save_request">
        <?php
        if ($this->session->userdata('error')) {
            echo $this->session->userdata('error');
        }
        $this->session->unset_userdata('error');
        ?>
        <div class="right_side">
            <div class="input_wrapper">
                <span>Страна и город</span>
                <input name="country" value="<?= set_value('country') ?>" <?php
                if (strpos(validation_errors(), '"Страна и город"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="main_input" placeholder="АОЭ, Дубаи">
            </div>
            <div class="input_wrapper_2">
                <span>Количество звезд</span>
                <input name="stars" value="<?= set_value('stars') ?>" <?php
                if (strpos(validation_errors(), '"Количество звезд"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="secondary_input" placeholder="4">
            </div>
            <div class="input_wrapper">
                <span>E-mail</span>
                <input name="email" value="<?= set_value('email') ?>" <?php
                if (strpos(validation_errors(), '"E-mail"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="main_input" placeholder="vasya@example.com">
            </div>
            <div class="input_wrapper_2">
                <span>Количество мест</span>
                <input name="places" value="<?= set_value('places') ?>" <?php
                if (strpos(validation_errors(), '"Количество мест"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="secondary_input" placeholder="Двухместный">
            </div>
            <div class="input_wrapper">
                <span>Пропишите цену за сутки</span>
                <input name="price" value="<?= set_value('price') ?>" <?php
                if (strpos(validation_errors(), '"Цена за сутки"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="main_input" placeholder="400 $">
            </div>
            <div class="input_wrapper_2">
                <span>Количество дней</span>
                <input name="days" value="<?= set_value('days') ?>" <?php
                if (strpos(validation_errors(), '"Количество дней"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="secondary_input" placeholder="5 дней">
            </div>
            <div class="input_wrapper_2">
                <span>Кол-во комнат</span>
                <input name="rooms" value="<?= set_value('rooms') ?>" <?php
                if (strpos(validation_errors(), '"Количество комнат"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="secondary_input" placeholder="Двухкомнатный">
            </div>
            <div class="input_wrapper">
                <span>Имя, Фамилия</span>
                <input name="name" value="<?= set_value('name') ?>" <?php
                if (strpos(validation_errors(), '"Имя, Фамилия"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="main_input" placeholder="Стас Михайлов">
            </div>
            <div class="input_wrapper input_phone">
                <span>Телефон</span>
                <input name="phone" value="<?= set_value('phone') ?>" <?php
                if (strpos(validation_errors(), '"Телефон"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> type="text" class="main_input" placeholder="+996 ### ## ## ##">
            </div>
            <div class="clear"></div>
            <div class="textarea">
                <span>Дополнительная информация</span>
                <textarea name="text" <?php
                if (strpos(validation_errors(), '"Дополнительная информация"')) {
                    echo 'style="border:1px solid red;"';
                }
                ?> cols="30" rows="10"><?= set_value('text') ?></textarea>
            </div>
            <input type="hidden" name="do" value="requestsSave">
            <input type="button" value="Отправить"  onclick="javascript:sendrequest()"/>
        </div>
    </form>
</div>
<script>
    function sendrequest() {
        $.ajax({
            url: '/requests/save',
            type: "POST",
            dataType: "html",
            data: $('#save_request').serialize(),
            success: function (response) {
                document.getElementById('request_form').innerHTML = response;
            },
            error: function (response) {
                document.getElementById('request_form').innerHTML = "Ошибка при отправке формы";
            }
        });
        return false;
    }
</script>




<!--
<div id="request_form">
    <form method="POST" action="javascript:" id="save_request">
<?php
if ($this->session->userdata('error')) {
    echo $this->session->userdata('error');
}
$this->session->unset_userdata('error');
?>
        <div class="left">
            <label>Страна и город</label>
            <input name="country" value="<?= set_value('country') ?>" <?php
if (strpos(validation_errors(), '"Страна и город"')) {
    echo 'style="border:1px solid red;"';
}
?> type="text"/>
            <label>Количество комнат</label>
            <input name="rooms" value="<?= set_value('rooms') ?>" <?php
if (strpos(validation_errors(), '"Количество комнат"')) {
    echo 'style="border:1px solid red;"';
}
?> type="text"/>
            <label>Пропишите цену за сутки</label>
            <input name="price" value="<?= set_value('price') ?>" <?php
if (strpos(validation_errors(), '"Цена за сутки"')) {
    echo 'style="border:1px solid red;"';
}
?> type="text"/>
            <label>Имя, Фамилия</label>
            <input name="name" value="<?= set_value('name') ?>" <?php
if (strpos(validation_errors(), '"Имя, Фамилия"')) {
    echo 'style="border:1px solid red;"';
}
?> type="text"/>
            <label>Телефон</label>
            <input name="phone" value="<?= set_value('phone') ?>" <?php
if (strpos(validation_errors(), '"Телефон"')) {
    echo 'style="border:1px solid red;"';
}
?> type="text"/>
            <label>Дополнительная информация</label>
            <textarea name="text" name="" id="" cols="30" rows="10" <?php
if (strpos(validation_errors(), '"Дополнительная информация"')) {
    echo 'style="border:1px solid red;"';
}
?>><?= set_value('text') ?></textarea>
        </div>
        <div class="right">
            <label>E-mail</label>
            <input name="email" value="<?= set_value('email') ?>" <?php
if (strpos(validation_errors(), '"E-mail"')) {
    echo 'style="border:1px solid red;"';
}
?> type="email"/>
            <input type="hidden" name="do" value="requestsSave">
            <input type="submit" value="Отправить"  onclick="javascript:sendrequest()"/>
        </div>
    </form>
</div>
<script>
    function sendrequest() {
        $.ajax({
            url: '/requests/save',
            type: "POST",
            dataType: "html",
            data: $('#save_request').serialize(),
            success: function (response) {
                document.getElementById('request_form').innerHTML = response;
            },
            error: function (response) {
                document.getElementById('request_form').innerHTML = "Ошибка при отправке формы";
            }
        });
        return false;
    }
</script>-->