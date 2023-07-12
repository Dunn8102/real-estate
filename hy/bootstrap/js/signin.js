jQuery(($) => {
    $(document).on("click", ".btn-login", (e) => {
        let userData = {
          username: $("#inp-username").val(),
          password: $("#inp-password").val()
        };
        if (userLoginValid(userData)) {
            var userJSON = localStorage.getItem("username");
            var user = JSON.parse(userJSON);
            if(userData.username === user.username && userData.password === user.password){
              alert("Đăng nhập thành công");
              window.location.href = "user-profile.html";
            }
            else if (userData.username === 'hoaiyen' && userData.password === '123'){
              alert("Vào trang admin");
              window.location.href = "admin.html";
            } else {
              alert("Tên đăng nhập hoặc mật khẩu không đúng");
            }
          }
      
      });
    //Validate data
    function userLoginValid(userData) {
        if (!userData.username) {
            alert("Tên đăng nhập không được bỏ trống!");
            return false;
        }
        if (!userData.password) {
            alert("Mật khẩu chưa điền!");
            return false;
        }
        return true;
    }
})