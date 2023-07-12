<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hy.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link rel="stylesheet" href="bootstrapBow/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	<link rel="stylesheet" href="bootstrap/bootstrap-icons/bootstrap-icons.css" />
</head>
<body>
	<form id="form1" runat="server">
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<div>
			<div class="container h-100">
				<div class="d-flex flex-column align-items-center justify-content-center vh-100">
					<div class="d-flex justify-content-center py-4">
						<a href="indexx.aspx" class="logo d-flex align-items-center w-auto">
							<em class="bi bi-arrow-left"></em>
							<span class="d-none d-lg-block">Về trang chủ</span>
						</a>
					</div>
					<!-- End Logo -->
					<h1>Đăng ký tài khoản</h1>
					<p>Điền thông tin bên dưới để hoàn tất đăng ký</p>
					<div class="form p-3 ">
						<div class="row">
							<asp:Label ID="Label1" runat="server" Text="Họ và tên"></asp:Label>
							<asp:TextBox ID="txthoten" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txthoten" Display="Dynamic"></asp:RequiredFieldValidator>

						</div>
						<div class="row">
							<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
							<asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="chưa đúng định dạng" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

						</div>

						<div class="row">
							<asp:Label ID="Label3" runat="server" Text="Địa chỉ"></asp:Label>
							<asp:TextBox ID="txtdiachi" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtdiachi" Display="Dynamic"></asp:RequiredFieldValidator>
						</div>

						<div class="row">
							<asp:Label ID="Label4" runat="server" Text="Số điện thoại"></asp:Label>
							<asp:TextBox ID="txtsdt" TextMode="Number" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtsdt" Display="Dynamic"></asp:RequiredFieldValidator>
						</div>

						<div class="row">
							<asp:Label ID="Label7" runat="server" Text="Tên đăng nhập"></asp:Label>
							<asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>

						</div>

						<div class="row">
							<%--<input type="password" class="form-control col m-1" id="password" placeholder="Mật khẩu" />--%>
							<asp:Label ID="Label5" runat="server" Text="Mật khẩu"></asp:Label>
							<asp:TextBox ID="txtPass" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtPass" Display="Dynamic"></asp:RequiredFieldValidator>
						</div>

						<div class="row">
							<asp:Label ID="Label6" runat="server" Text="Xác nhận mật khẩu"></asp:Label>
							<asp:TextBox ID="txtXacnhan" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="không được bỏ trống" ControlToValidate="txtXacnhan" Display="Dynamic"></asp:RequiredFieldValidator>
							<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="mật khẩu không giống" ControlToCompare="txtPass" ControlToValidate="txtXacnhan" Operator="Equal" Display="Dynamic"></asp:CompareValidator>
						</div>
						<div class="form-check-inline">
							<input type="checkbox" name="terms" id="accept-terms" class="form-check-inline" />
							<label for="accept-terms" class="form-check-label m-1">Tôi chấp nhận điều khoản và điều kiện</label>
						</div>
						<div class="row">
							<asp:Button ID="Button1" runat="server" Text="Đăng ký" CssClass="button button-3d button-black m-0" OnClick="Button1_Click" />

						</div>
						<div class="col-12 my-3">
							<p class="mb-0">
								Đã có tài khoản? <a href="login.aspx">Đăng nhập ngay</a>
								Quên mật khẩu ? <a href="#">Quên mật khẩu</a>
							</p>
							<asp:Label ID="lbThongBao" runat="server" Text="Label"></asp:Label>
						</div>
					</div>
				</div>
			</div>
	</form>
	<script src="assets/js/jquery-3.6.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
	<script src="bootstrapBow/js/bootstrap.min.js"></script>
</body>
</html>
