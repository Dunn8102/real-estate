<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="hy.blog" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="page-head">
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <h1 class="page-title">TIN TỨC</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- End page header -->

    <div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
        <div class="container">
            <div class="row">
                <div class="blog-lst col-md-12 pl0">
                    <asp:DataList ID="myDataList" runat="server">
                       <ItemTemplate>
                    <section class="post">
                        <div class="text-center padding-b-50">
                            <asp:Label ID="Label1" runat="server"  class="wow fadeInLeft animated" Text='<%# Eval("tentintuc") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label>
                            <!--<h2 class="wow fadeInLeft animated">Những kiến trúc nhà phổ biến hiện nay</h2> -->
                            <div class="title-line wow fadeInRight animated"></div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <p class="author-category">
                                    By <a href="#">Ngôi nhà xanh</a>
                                    in <a href="blogsingle.aspx">Webdesign</a>
                                </p>
                            </div>
                            <div class="col-sm-6 right">
                                <p class="date-comments">
                                    <a href="blogsingle.aspx"><i class="fa fa-calendar-o"></i>24-06-2023</a>
                                    <a href="blogsingle.aspx"><i class="fa fa-comment-o"></i> 3 Bình Luận</a>
                                </p>
                            </div>
                        </div>
                        <div class="image wow fadeInLeft animated">
                            <a href="blogsingle.aspx">
                                <asp:ImageButton ID="ImageButton1" runat="server" class="img-responsive" CommandArgument='<%# Eval("matintuc") %>' ImageUrl='<%# "../imgs/"+ Eval("hinhanh") %>' />
                                <!--<img src="assets/img/nhaxanh.png" class="img-responsive" alt="Example blog post alt">-->
                            </a>
                        &nbsp;&nbsp;</div>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("noidung") %>' class="intro"></asp:Label>
                        <!--<p class="intro"><strong>Nhà thông minh</strong>
                            Trong thời đại hiện nay, kiểu nhà được yêu thích là nhà thông minh, sáng tạo và tiện
                            nghi. Những căn nhà này được thiết kế để phù hợp với nhu cầu sống của mọi người, đồng
                            thời tích hợp các công nghệ hiện đại để mang lại sự tiện lợi và an toàn cho chủ nhà. Hãy
                            cùng tìm hiểu thêm về kiểu nhà này trong bài viết dưới đây.</p>-->
                        <p class="read-more">
                            <a href="blogsingle.aspx" class="btn btn-default btn-border">Xem thêm</a>
                        </p>
                    </section>
                           </ItemTemplate>
                           </asp:DataList>
                    <!--<section class="post">
                        <div class="text-center padding-b-50">
                            <h2 class="wow fadeInLeft animated">Những nội thất nổi bật</h2>
                            <div class="title-line wow fadeInRight animated"></div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <p class="author-category">
                                    By <a href="#">Màu sắt</a>
                                    in <a href="blogsingle.aspx">Webdesign</a>
                                </p>
                            </div>
                            <div class="col-sm-6 right">
                                <p class="date-comments">
                                    <a href="blogsingle.aspx"><i class="fa fa-calendar-o"></i>14-04-2022</a>
                                    <a href="blogsingle.aspx"><i class="fa fa-comment-o"></i> 3 bình luận</a>
                                </p>
                            </div>
                        </div>
                        <div class="image wow fadeInLeft animated">
                            <a href="blogsingle.aspx">
                                <img src="assets/img/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">Có nhiều nội thất nổi bật và độc đáo có thể được thêm vào trong nhà để tạo ra
                            một không gian sống độc đáo và hấp dẫn.</p>
                        <p class="read-more">
                            <a href="blogsingle.aspx" class="btn btn-default btn-border">Xem thêm</a>
                        </p>
                    </section>

                    <section class="post">
                        <div class="text-center padding-b-50">
                            <h2 class="wow fadeInLeft animated">Những gợi ý cách trang trí nhà</h2>
                            <div class="title-line wow fadeInRight animated"></div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <p class="author-category">
                                    By <a href="#">Nội thất</a>
                                    in <a href="blog.html">Webdesign</a>
                                </p>
                            </div>
                            <div class="col-sm-6 right">
                                <p class="date-comments">
                                    <a href="blogsingle.aspx"><i class="fa fa-calendar-o"></i>12-05-2022</a>
                                    <a href="blogsingle.aspx"><i class="fa fa-comment-o"></i> 8 bình luận</a>
                                </p>
                            </div>
                        </div>
                        <div class="image wow fadeInLeft animated">
                            <a href="blogsingle.aspx">
                                <img src="assets/img/blog1.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">Chọn phong cách trang trí blog phù hợp: Trang trí nhà blog thường tập trung vào
                            các phong cách trang trí như Boho, Scandinavian, Mid-Century Modern, Rustic, hoặc Farmhouse.
                            Bạn có thể tìm hiểu về những phong cách này để chọn phong cách phù hợp với sở thích và phong
                            cách của bạn..</p>
                        <p class="read-more">
                            <a href="blogsingle.aspx" class="btn btn-default btn-border">Xem thêm</a>
                        </p>
                    </section>-->

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

    <script src="assets/js/main.js"></script>
</asp:Content>
