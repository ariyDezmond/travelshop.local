<footer>
    <div class="wrapper">
        <ul>
            <li><a href="/">Главаная</a></li>
            <li><a href="/about/">О нас</a></li>
            <li><a href="/blog/">Статьи </a></li>
            <li><a href="/news/">Новости</a></li>
        </ul>
        <a href="#" class="googstudio"></a>
        <p><?= Modules::run('widget/get_widget', 'copyright') ?></p>
        <div class="metrics"></div>
    </div><!-- /wrapper -->
</footer><!-- /footer -->

</div>
<?= Modules::run('widget/getByTitle', 'snipets') ?>
</body>
</html>



<!--
<footer>
    <div class="container">
        <div class="inner-footer-block-1">
            <ul>
                <li><a href="/">Главная</a></li>
                <li><a href="/about">О нас</a></li>
                <li><a href="/blog">Статьи</a></li>
                <li><a href="/news">Новости</a></li>
            </ul>
            <p class="copyright"><?= Modules::run('widget/get_widget', 'copyright') ?></p>
        </div>
        <div class="inner-footer-block-2">
            <a class="dev" href="http://www.googstudio.com">
                <img src="/img/dev-logo.png" alt=""/>
            </a>
        </div>
    </div>
</footer>
</div>
<?= Modules::run('widget/getByTitle', 'snipets') ?>
</body>
</html>-->