var sent = false;

function fnCheckSubmit() {
    if (sent) {
        alert("只今、処理中です。しばらくお待ち下さい。");
        return false;
    }
    sent = true;
    return true;
}
