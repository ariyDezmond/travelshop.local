<!-- Static navbar -->
<div class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/admin/"><?= str_ireplace('http://', '', substr(base_url(), 0, -1)); ?></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li <?php if (strpos(current_url(), 'admin/main')) {
    echo "class=\"active\"";
} ?> ><a href="/admin/main">Главная</a></li>
                <li <?php if (strpos(current_url(), 'admin/categories')) {
    echo "class=\"active\"";
} ?> ><a href="/admin/categories">Категории</a></li>
                <!--              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Настройки <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                  <li><a href="/admin/blog">Блог</a></li>
                                  <li><a href="/admin/news">Новости</a></li>
                                  <li><a href="/admin/video-blog">Видео блог</a></li>
                                  <li class="divider"></li>
                                  <li class="dropdown-header">Nav header</li>
                                  <li><a href="#">Separated link</a></li>
                                  <li><a href="#">One more separated link</a></li>
                                </ul>
                              </li>-->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="./">Default</a></li>
                <li><a href="/" target="_blank">Перейти на сайт <span class='glyphicon glyphicon-new-window'></span></a></li>
                <li><a href="<?= '/admin/logout' ?>">Выход</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</div>