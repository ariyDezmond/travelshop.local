<div class="main-container" style="margin-top: 100px;">
    <div class="contacts-page">
        <h1 class="block-title">Контакты</h1>
        <?= Modules::run('contacts/view', true, 'contacts') ?>
        <div class="inner-contacts-block-3">
            <form>
                <p>Напишите нам</p>
                <label>Имя, Фамилия</label>
                <input type="text"/>
                <label>Телефон</label>
                <input type="text"/>
                <label>Сообщение</label>
                <textarea name="" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="Отправить"/>
            </form>
        </div>
        <div id="map">

        </div>
    </div>
</div>
</div>