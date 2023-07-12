jQuery(($) => {
    $(document).on("click", ".btn-signup", (e) => {
        let user = {
            hoTen: $(".inp-fullname").val(),
            email: $("#email").val(),
            diaChi: $("#address").val(),
            soDienThoai: $("#phone").val(),
            username: $(".inp-username").val(),
            password: $("#password").val(),
        }
        if (dataValid(user)) {
            var json = JSON.stringify(user);
            localStorage.setItem("username",json);
            alert("dang ky thanh cong")
        }
        else alert("dang ky khong thanh cong")
    })
    function dataValid(dataObject) {
        if (!dataObject.username) {
            alert("Username!");
            return false;
        }
        if (!dataObject.hoTen) {
            alert("hoTen!");
            return false;
        }
        if (!dataObject.password) {
            alert("password!");
            return false;
        }
        if (!dataObject.password.match($("#confirm-password").val())) {
            alert("Mật khẩu nhập lại chưa khớp!");
            return false;
        }
        if (!dataObject.email) {
            alert("email!");
            return false;
        }
        if (!$("#accept-terms").is(":checked")) {
            alert("Chưa chấp nhận điều khoản và điều kiện!");
            return false;
        }
        return true;
    }

})