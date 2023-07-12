<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="hy.Contact" %>
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
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            border-radius: 0.25rem;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: 0px 1px 1px rgba(179, 179, 179, 0.1) inset;
            -webkit-transition: all 300ms linear;
            -o-transition: all 300ms linear;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            -moz-transition: all 300ms linear;
            -ms-transition: all 300ms linear;
            background-clip: padding-box;
            left: 0px;
            top: 0px;
            border: 1px solid #ced4da;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="message.css" rel="stylesheet" />
    <link href="chatroom.css" rel="stylesheet" />
	<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">LIÊN HỆ</h1>               
                    </div>
                </div>
            </div>
        </div>

        <!-- End page header -->

        <!-- property area -->


    <div class="row">
    <div class="col-md-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Danh sách người chat</h3>
            </div>
           <div class="panel-body">
    <div class="input-group">
  <asp:TextBox ID="Tennguoinhan" runat="server" CssClass="auto-style1" placeholder="nhập tên người nhận" Width="50%" ></asp:TextBox>
  <span class="input-group-btn">
    <asp:Button ID="Butttonn2" runat="server" Text="Tìm" CssClass="btn btn-primary" OnClick="Button2_Click" Width="40px"  />
  </span>
</div>
    <ul class="list-group">
        <asp:DataList ID="DataList5" runat="server" Width="226px">
            <ItemTemplate>
                <asp:Button ID="XuatThongTinButton" runat="server" Text='<%# Eval("maNguoiNhan") %>' CommandName="XuatThongTin" CommandArgument='<%# Eval("maNguoiNhan") %>' OnClick="XuatThongTinButton_Click" />
            </ItemTemplate>
        </asp:DataList>
    </ul>
</div>
        </div>
    </div>
    <div class="col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label ID="Label2" runat="server" Text="Chat Room" Font-Bold="True"></asp:Label>
            </div>
            <div class="panel-body">
                <div class="chat-box">
                    <asp:DataList ID="DataList6" runat="server" OnItemDataBound="DataList6_ItemDataBound" Width="90%">
    <ItemTemplate>
        <asp:Label ID="NguoiGuiLabel" runat="server"></asp:Label>
        <asp:Label ID="NoiDungLabel" runat="server" Text='<%# Eval("noidungtinnhan") %>'></asp:Label>
    </ItemTemplate>
</asp:DataList>
                </div>
            </div>
            <div class="panel-footer">
                <div class="input-group">
                    
                    <asp:TextBox ID="chatInput" runat="server" placeholder="Type your message..." AutoPostBack="true" Width="90%" ></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button ID="submit" runat="server" Text="Gửi" OnClick="Button1_Click" Width="80px" />
                    </span>
                </div>
            </div>
            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </div>
</div>



        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <div class="row">
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-map-marker"></i>Địa Chỉ</h3>
                                    <p>13/25 Lâm Nhĩ
                                        <br>ĐÀ Nẵng
                                        <br>
                                        <br>
                                        <strong>Nhật Bản</strong>
                                    </p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-phone"></i>Gọi cho trung tâm</h3>
                                    <p class="text-muted">Đây là số điện thoại nóng, nếu bạn có vấn đề gì hot thì gọi ngay</p>
                                    <p><strong>+33 555 444 333</strong></p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-envelope"></i>Hỗ trợ</h3>
                                    <p class="text-muted">Vui lòng viết email cho chúng tôi, chúng tôi sẽ phản hồi sớm nhất có thể.</p>
                                    <ul>
                                        <li><strong><a href="mailto:">info@company.com</a></strong>   </li>
                                    </ul>
                                </div>
                                <!-- /.col-sm-4 -->
                            </div>
                            <!-- /.row -->
                            
                            

                        </div>
                    </div>    
                </div>
            </div>
        </div>
    
	<script src="assets/js/modernizr-2.6.2.min.js"></script>

        <script src="assets/js/jquery-1.10.2.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>

        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="assets/js/gmaps.js"></script>        
        <script src="assets/js/gmaps.init.js"></script>

        <script src="assets/js/main.js"></script>
</asp:Content>
