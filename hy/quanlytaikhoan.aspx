<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="quanlytaikhoan.aspx.cs" Inherits="hy.quanlytaikhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        
        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css"> 
        <link rel="stylesheet" href="assets/css/wizard.css"> 
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
						<asp:DataList ID="DataList1" runat="server">
							<ItemTemplate>
								<h1 class="page-title">Hello : <span class="orange strong"><asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label></span></h1>               
							</ItemTemplate>
						</asp:DataList>
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header --> 

        <!-- property area -->
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">
                        <form action="" method="">
							<asp:DataList ID="DataList2" runat="server">
								<ItemTemplate>
									<div class="profiel-header">
										<h3>
											<b>XÂY DỰNG</b> TRANG CÁ NHÂN CỦA BẠN <br>
											<small>Thông tin này chính là thông tin bạn chia sẻ với tôi.</small>
										</h3>
										<hr>
									</div>
									<div class="clear">
										<div class="col-sm-5 col-sm-offset-1">
											<div class="form-group">
												<label>Username:</label>
												<asp:Label ID="username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
											</div>
											<div class="form-group">
												<label>Họ và tên:</label>
												<asp:TextBox ID="hoten" runat="server" Text='<%# Eval("tennguoidung") %>'></asp:TextBox>
											</div>
											<div class="form-group">
												<label>Địa chỉ :</label>
												<asp:TextBox ID="diachi" runat="server" Text='<%# Eval("diachi") %>'></asp:TextBox>
											</div>
											<div class="form-group">
												<label>Email :</label>
												<asp:TextBox ID="email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
											</div>
											<div class="form-group">
												<label>Số điện thoại :</label>
												<asp:TextBox ID="sdt" runat="server" Text='<%# Eval("sodienthoai") %>'></asp:TextBox>
											</div>
										</div>
										<div class="col-sm-5">
											<div class="form-group">
												<label>Password :</label>
												<asp:TextBox ID="txtpass" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
											</div>
										</div>
 
									</div>
                    
									<div class="col-sm-5 col-sm-offset-1">
										<br>
										<%--<input type='button' class='btn btn-finish btn-primary' name='finish' value='Finish' />--%>
										<asp:Button ID="Button1" runat="server" Text="Xác nhận" CommandArgument='<%# Eval("username") %>' 
OnClick="Button1_Click" OnClientClick="return confirm('Bạn có muốn cập nhật không?');"/>
									</div>
									
									<div class="col-sm-5 col-sm-offset-1">
										<br>
										<a href="indexx.aspx">Trở về trang chủ</a>
									</div>
								</ItemTemplate>
							</asp:DataList>
							<asp:Label ID="lbTB" runat="server" Text="Label"></asp:Label>
                            

                            <br>
                        </form>
                    </div>
                </div><!-- end row -->
            </div>
        </div>
	<script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="assets/js//jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>
        <script src="assets/js/icheck.min.js"></script>

        <script src="assets/js/price-range.js"></script> 
        <script src="assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/wizard.js"></script>

        <script src="assets/js/main.js"></script>
</asp:Content>
