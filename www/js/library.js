function image_del_click_subscription(module) {
    $('.image_del').click(function () {
        var image_del = this;
        if (confirm('Удалить?')) {
            $.ajax({
                url: '/admin/' + module + '/image_delete',
                type: 'POST',
                data: {
                    id: $(this).attr('id')
                },
                error: function () {
                    alert("Ошибка!");
                },
                success: function (data) {
                    $(image_del).parent().parent().remove();
                }
            });
            return true
        } else {
            return false;
        }
    })
}

function hall_del_click_subscription() {
    $('.hall_del').click(function () {
        var image_del = this;
        if (confirm('Удалить?')) {
            $.ajax({
                url: '/admin/points/hall_delete',
                type: 'POST',
                data: {
                    id: $(this).attr('id')
                },
                error: function () {
                    alert("Ошибка!");
                },
                success: function (data) {
                    $(image_del).parent().parent().remove();
                    //alert(data);
                }
            });
            return true
        } else {
            return false;
        }
    })

    $('.hall_edit').click(function () {
        if (!$(this).parent().parent().find('.hall_name').find('input').val() && !$(this).parent().parent().find('.hall_description').is('textarea')) {
            var hall_name = $(this).parent().parent().find('.hall_name').text();
            var name = "<input type='text' class='form-control' value='" + hall_name + "' placeholder='Название'>";
            $(this).parent().parent().find('.hall_name').html(name);

            var hall_desc = $(this).parent().parent().find('.hall_description').text();
            var desc = "<textarea class='form-control' rows='5' placeholder='Описание спорт. зала'>" + hall_desc + "</textarea>";
            $(this).parent().parent().find('.hall_description').html(desc)
        }
    });
    $('.hall_save').click(function () {
        var hall_name = $(this).parent().parent().find('.hall_name input').val();
        var hall_desc = $(this).parent().parent().find('.hall_description textarea').val();
        $.ajax({
            url: '/admin/points/hall_data_save',
            type: 'POST',
            data: {
                hall_id: $(this).parent().parent().parent().find('.hall_del').attr('id'),
                hall_name: hall_name,
                hall_desc: hall_desc
            },
            error: function () {
                alert("Ошибка!");
            },
            success: function (data) {

            }
        });
        $(this).parent().parent().find('.hall_name').html(hall_name);
        $(this).parent().parent().find('.hall_description').html(hall_desc);
    });
}

function trener_del_click_subscription() {
    $('.trener_del').click(function () {
        var trener_del = this;
        if (confirm('Удалить?')) {
            $.ajax({
                url: '/admin/points/trener_delete',
                type: 'POST',
                data: {
                    id: $(this).attr('id')
                },
                error: function () {
                    alert("Ошибка!");
                },
                success: function (data) {
                    $(trener_del).parent().parent().remove();
                    //alert(data);
                }
            });
            return true
        } else {
            return false;
        }
    })

    jQuery.br2nl = function (varTest) {
        return varTest.replace(/<br>/g, "\r");
    };

    $('.trener_edit').click(function () {
        if (!$(this).parent().parent().find('.trener_name').find('input').val() && !$(this).parent().parent().find('.trener_sname').find('input').val() && !$(this).parent().parent().find('.trener_description').is('textarea')) {
            var trener_name = $(this).parent().parent().find('.trener_name').text();
            var trener_sname = $(this).parent().parent().find('.trener_sname').text();
            var trener_pph = $(this).parent().parent().find('.trener_pph').text();
            var trener_ppm = $(this).parent().parent().find('.trener_ppm').text();
            var trener_desc = $(this).parent().parent().find('.trener_description').text();

            var name = "<input type='text' class='form-control' value='" + trener_name + "' placeholder='Имя'>";
            $(this).parent().parent().find('.trener_name').html(name);

            var sname = "<input type='text' class='form-control' value='" + trener_sname + "' placeholder='Фамилия'>";
            $(this).parent().parent().find('.trener_sname').html(sname);

            var pph = "<input type='text' class='form-control' value='" + trener_pph + "' placeholder='Цена за час'>";
            $(this).parent().parent().find('.trener_pph').html(pph);

            var ppm = "<input type='text' class='form-control' value='" + trener_ppm + "' placeholder='Цена за месяц'>";
            $(this).parent().parent().find('.trener_ppm').html(ppm);

            trener_desc = $.br2nl(trener_desc);
            var desc = "<textarea class='form-control' rows='5' placeholder='Описание тренера'>" + trener_desc + "</textarea>";
            $(this).parent().parent().find('.trener_description').html(desc)
        }
    });
    $('.trener_save').click(function () {
        var trener_name = $(this).parent().parent().find('.trener_name input').val();
        var trener_sname = $(this).parent().parent().find('.trener_sname input').val();
        var trener_desc = $(this).parent().parent().find('.trener_description textarea').val();
        var trener_pph = $(this).parent().parent().find('.trener_pph input').val();
        var trener_ppm = $(this).parent().parent().find('.trener_ppm input').val();
        $.ajax({
            url: '/admin/points/trener_data_save',
            type: 'POST',
            data: {
                trener_id: $(this).parent().parent().parent().find('.trener_del').attr('id'),
                trener_name: trener_name,
                trener_sname: trener_sname,
                trener_desc: trener_desc,
                trener_pph: trener_pph,
                trener_ppm: trener_ppm
            },
            error: function () {
                alert("Ошибка!");
            },
            success: function (data) {

            }
        });
        $(this).parent().parent().find('.trener_name').html(trener_name);
        $(this).parent().parent().find('.trener_sname').html(trener_sname);
        $(this).parent().parent().find('.trener_description').html(trener_desc);
        $(this).parent().parent().find('.trener_pph').html(trener_pph);
        $(this).parent().parent().find('.trener_ppm').html(trener_ppm);

    });
}

jQuery(document).ready(function () {
    $('.glyphicon-remove, .glyphicon-trash').click(function () {
        if (confirm('Удалить?')) {
            return true
        } else {
            return false;
        }
    })
    $('#order_by_category').change(function () {
        window.location.href = "/admin/sports/order/" + this.value;
    });

    $('#order_by_sport').change(function () {
        window.location.href = "/admin/points/order/" + this.value;
    });

    $(".images").sortable({
        opacity: 0.6,
        //placeholder: 'menu_item',
        stop: function () {
            var points = $('.images').sortable("toArray");
            //alert(menu_punkts);
            $.ajax(
                    {
                        url: '/admin/points/images_order',
                        type: 'POST',
                        data: {
                            punkts: menu_punkts
                        },
                        error: function () {
                            $('#message').text("Ошибка!");
                        },
                        success: function (data) {
                            //alert(data)
                        }
                    });
        }
    });

    image_del_click_subscription()
    hall_del_click_subscription()
    trener_del_click_subscription()
});