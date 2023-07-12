<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hy.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link
      rel="stylesheet"
      href="bootstrapBow/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="bootstrap/bootstrap-icons/bootstrap-icons.css"
    />
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<div class="container h-100">
      <div
        class="d-flex flex-column align-items-center justify-content-center vh-100"
      >
        <h5 class="py-5">
          <a href="indexx.aspx" class="link-success"><em class="bi bi-arrow-left-circle"></em> Trang chủ</a>
        </h5>
        <h1>Đăng nhập tài khoản</h1>
        <div class="form p-3">
          <div class="row">
			  <asp:TextBox runat="server" ID="txtTenDN" CssClass="form-control"/>
          </div>

          <div class="row py-4">
			  <asp:TextBox runat="server" ID="txtMatKhau" TextMode="Password" CssClass="form-control"/>
          </div>

          <div class="row">
			<asp:Button runat="server" Text="ĐĂNG NHẬP" ID="btnDangNhap" OnClick="btnDangNhap_Click" CssClass="button button-3d button-black m-0"/> <br />
            <asp:Label runat="server" Text="" ForeColor="Red" ID="lbTB" />
          </div>
        </div>

        <div class="my-3">
          <p>
            Chưa có tài khoản? <a href="register.aspx">Đăng ký ngay tại đây.</a>
          </p>
        </div>
      </div>
    </div>
    <script src="assets/js/jquery-3.6.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>\
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/signin.js"></script>
        </div>
    </form>
</body>
</html>
