$(function () {
    var $login_email = $('#header_login_area input[name=login_email]');

    if (!$login_email.val()) {
        $login_email
            .val('メールアドレス')
            .css('color', '#AAA');
    }

    $login_email
        .focus(function () {
            if ($(this).val() == 'メールアドレス') {
                $(this)
                    .val('')
                    .css('color', '#000');
            }
        })
        .blur(function () {
            if (!$(this).val()) {
                $(this)
                    .val('メールアドレス')
                    .css('color', '#AAA');
            }
        });

    $('#header_login_form').submit(function () {
        if (!$login_email.val() || $login_email.val() == 'メールアドレス') {
            if ($('#header_login_area input[name=login_pass]').val()) {
                alert('メールアドレス/パスワードを入力して下さい。');
            }
            return false;
        }
        return true;
    });
});
