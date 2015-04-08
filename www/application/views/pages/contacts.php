<div class="contacts">
    <div class="wrapper">
        <h3 class="main_title">Контакты</h3>

        <?= Modules::run('contacts/view', true, 'contacts') ?>

        <div class="contacts_col_3 contacts_col">
            <p>Написать нам</p>
            <?= Modules::run('feedback/view', true) ?>
        </div>

        <div class="clear"></div>

        

    </div><!-- /wrapper -->
</div><!-- /contacts -->