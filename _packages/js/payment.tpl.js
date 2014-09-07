$(function () {
    if ($('input[name=deliv_id]:checked').val() || $('#deliv_id').val()) {
        showForm(true);
    } else {
        showForm(false);
    }
    $('input[id^=deliv_]').click(function () {
        showForm(true);
        var data = {};
        data.mode = 'select_deliv';
        data.deliv_id = $(this).val();
        data['<!--{$smarty.const.TRANSACTION_ID_NAME}-->'] = '<!--{$transactionid}-->';
        $.ajax({
            type: 'POST',
            url: location.pathname,
            data: data,
            cache: false,
            dataType: 'json',
            error: remoteException,
            success: function (data, dataType) {
                if (data.error) {
                    remoteException();
                } else {
                    // 支払い方法の行を生成
                    var payment_tbody = $('#payment tbody');
                    payment_tbody.empty();
                    for (var i in data.arrPayment) {
                        // ラジオボタン
                        <!--{* IE7未満対応のため name と id をベタ書きする *}-->
                        var radio = $('<input type="radio" name="payment_id" id="pay_' + i + '" />')
                            .val(data.arrPayment[i].payment_id);
                        // ラベル
                        var label = $('<label />')
                            .attr('for', 'pay_' + i)
                            .text(data.arrPayment[i].payment_method);
                        // 行
                        var tr = $('<tr />')
                            .append($('<td />')
                                .addClass('alignC')
                                .append(radio))
                            .append($('<td />').append(label));

                        // 支払方法の画像が登録されている場合は表示
                        if (data.img_show) {
                            var payment_image = data.arrPayment[i].payment_image;
                            $('th#payment_method').attr('colspan', 3);
                            if (payment_image) {
                                var img = $('<img />').attr('src', '<!--{$smarty.const.IMAGE_SAVE_URLPATH}-->' + payment_image);
                                tr.append($('<td />').append(img));
                            } else {
                                tr.append($('<td />'));
                            }
                        } else {
                            $('th#payment_method').attr('colspan', 2);
                        }

                        tr.appendTo(payment_tbody);
                    }
                    // お届け時間を生成
                    var deliv_time_id_select = $('select[id^=deliv_time_id]');
                    deliv_time_id_select.empty();
                    deliv_time_id_select.append($('<option />').text('指定なし').val(''));
                    for (var i in data.arrDelivTime) {
                        var option = $('<option />')
                            .val(i)
                            .text(data.arrDelivTime[i])
                            .appendTo(deliv_time_id_select);
                    }
                }
            }
        });
    });

    /**
     * 通信エラー表示.
     */
    function remoteException(XMLHttpRequest, textStatus, errorThrown) {
        alert('通信中にエラーが発生しました。カート画面に移動します。');
        location.href = '<!--{$smarty.const.CART_URL}-->';
    }

    /**
     * 配送方法の選択状態により表示を切り替える
     */
    function showForm(show) {
        if (show) {
            $('#payment, div.delivdate, .select-msg').show();
            $('.non-select-msg').hide();
        } else {
            $('#payment, div.delivdate, .select-msg').hide();
            $('.non-select-msg').show();
        }
    }
});