// login_header.tpl => Block内じゃないと動かない

// category.tpl
$(function () {
    $('#category_area li.level1:last').css('border-bottom', 'none');
});

// list.tpl
function fnSetClassCategories(form, classcat_id2_selected) {
    var $form = $(form);
    var product_id = $form.find('input[name=product_id]').val();
    var $sele1 = $form.find('select[name=classcategory_id1]');
    var $sele2 = $form.find('select[name=classcategory_id2]');
    eccube.setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
}
// 並び順を変更
function fnChangeOrderby(orderby) {
    eccube.setValue('orderby', orderby);
    eccube.setValue('pageno', 1);
    eccube.submitForm();
}
// 表示件数を変更
function fnChangeDispNumber(dispNumber) {
    eccube.setValue('disp_number', dispNumber);
    eccube.setValue('pageno', 1);
    eccube.submitForm();
}
// カゴに入れる
function fnInCart(productForm) {
    var searchForm = $("#form1");
    var cartForm = $(productForm);
    // 検索条件を引き継ぐ
    var hiddenValues = ['mode', 'category_id', 'maker_id', 'name', 'orderby', 'disp_number', 'pageno', 'rnd'];
    $.each(hiddenValues, function () {
        // 商品別のフォームに検索条件の値があれば上書き
        if (cartForm.has('input[name=' + this + ']').length != 0) {
            cartForm.find('input[name=' + this + ']').val(searchForm.find('input[name=' + this + ']').val());
        }
        // なければ追加
        else {
            cartForm.append($('<input type="hidden" />').attr("name", this).val(searchForm.find('input[name=' + this + ']').val()));
        }
    });
    // 商品別のフォームを送信
    cartForm.submit();
}

// detail.tpl
// 規格2に選択肢を割り当てる。
function fnSetClassCategories(form, classcat_id2_selected) {
    var $form = $(form);
    var product_id = $form.find('input[name=product_id]').val();
    var $sele1 = $form.find('select[name=classcategory_id1]');
    var $sele2 = $form.find('select[name=classcategory_id2]');
    eccube.setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
}
