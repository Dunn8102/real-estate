<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="danhsachbaidadang.aspx.cs" Inherits="hy.danhsachbaidadang" %>

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
					<h1 class="page-title">BẤT ĐỘNG SẢN BẠN ĐÃ ĐĂNG GỒM CÓ GÌ NÀ ?</h1>
				</div>
			</div>
		</div>
	</div>
        <!-- End page header -->

    <!-- property area -->
	<div class="wizard-card ct-wizard-orange" id="wizardProperty">
		<div class="wizard-header">
			<h3><b>BÀI ĐÃ ĐĂNG </b>BẤT ĐỘNG SẢN CỦA BẠN<br>
				<small>Đăng bài để có thể bán bất động sản của bạn dễ dàng.</small>
			</h3>
		</div>
	</div>
	<div class="properties-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-3 p0 padding-top-40">
					<div class="blog-asside-right pr0">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">TÌM KIẾM NHANH</h3>
							</div>
							<div class="panel-body search-widget">
								<div class=" form-inline">
									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<input type="text" class="form-control" placeholder="Key word">
											</div>
										</div>
									</fieldset>

									<fieldset>
										<div class="row">
											<div class="col-xs-6">
												<select id="lunchBegins" class="selectpicker" data-live-search="true"
													data-live-search-style="begins" title="Chọn tỉnh thành">
													<option>Đà Nẵng</option>
													<option>Hà Nội</option>
													<option>Huế</option>
													<option>Quảng Nam</option>
													<option>Đà Lạt</option>
													<option>Cần Thơ</option>
												</select>
											</div>
											<div class="col-xs-6">
												<select id="basic" class="selectpicker show-tick form-control">
													<option>Trạng thái</option>
													<option>Thuê</option>
													<option>Bán</option>
													<option>Mua</option>
												</select>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<label for="price-range">Khung Giá($):</label>
												<input type="text" class="span2" value="" data-slider-min="0"
													data-slider-max="600" data-slider-step="10"
													data-slider-value="[0,450]" id="price-range"><br />
												<b class="pull-left color">2 triệu</b>
												<b class="pull-right color">100 tỷ</b>
											</div>
											<div class="col-xs-6">
												<label for="property-geo">Diện tích (m2) :</label>
												<input type="text" class="span2" value="" data-slider-min="0"
													data-slider-max="600" data-slider-step="5"
													data-slider-value="[50,450]" id="property-geo"><br />
												<b class="pull-left color">40m</b>
												<b class="pull-right color">12000m</b>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<label for="price-range">Phòng tắm tối thiểu :</label>
												<input type="text" class="span2" value="" data-slider-min="0"
													data-slider-max="600" data-slider-step="5"
													data-slider-value="[250,450]" id="min-baths"><br />
												<b class="pull-left color">1</b>
												<b class="pull-right color">120</b>
											</div>

											<div class="col-xs-6">
												<label for="property-geo">Phòng ngủ tối thiểu :</label>
												<input type="text" class="span2" value="" data-slider-min="0"
													data-slider-max="600" data-slider-step="5"
													data-slider-value="[250,450]" id="min-bed"><br />
												<b class="pull-left color">1</b>
												<b class="pull-right color">120</b>

											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox" checked>
														Máy lạnh</label>
												</div>
											</div>

											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox">
														Bồn rửa đôi</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox" checked>
														Cửa sổ</label>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox" checked>
														Bể bơi </label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox">Phòng giặt ủi</label>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox">Sân chơi</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox" checked>
														Sân gon </label>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label>
														<input type="checkbox">
														Có gác lửng </label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-12">
												<div class="checkbox">
													<label>
														<input type="checkbox">
														Lang can </label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<input class="button btn largesearch-btn" value="Search" type="submit">
											</div>
										</div>
									</fieldset>
								</div>
							</div>
						</div>

						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">BẤT ĐỘNG SẢN HOT</h3>
							</div>
							<div class="panel-body recent-property-widget">
								<ul>
									<li>
										<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
											<a href="single.html">
												<img src="assets/img/demo/small-property-2.jpg"></a>
											<span class="property-seeker">
												<b class="b-1">A</b>
												<b class="b-2">S</b>
											</span>
										</div>
										<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
											<h6><a href="single.html">Super nice villa </a></h6>
											<span class="property-price">3 tỷ</span>
										</div>
									</li>
									<li>
										<div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
											<a href="single.html">
												<img src="assets/img/demo/small-property-1.jpg"></a>
											<span class="property-seeker">
												<b class="b-1">A</b>
												<b class="b-2">S</b>
											</span>
										</div>
										<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
											<h6><a href="single.html">Super nice villa </a></h6>
											<span class="property-price">3 tỷ</span>
										</div>
									</li>
									<li>
										<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
											<a href="single.html">
												<img src="assets/img/demo/small-property-3.jpg"></a>
											<span class="property-seeker">
												<b class="b-1">A</b>
												<b class="b-2">S</b>
											</span>
										</div>
										<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
											<h6><a href="single.html">Super nice villa </a></h6>
											<span class="property-price">3 tỷ</span>
										</div>
									</li>

									<li>
										<div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
											<a href="single.html">
												<img src="assets/img/demo/small-property-2.jpg"></a>
											<span class="property-seeker">
												<b class="b-1">A</b>
												<b class="b-2">S</b>
											</span>
										</div>
										<div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
											<h6><a href="single.html">Super nice villa </a></h6>
											<span class="property-price">3 tỷ</span>
										</div>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-9  pr0 padding-top-40 properties-page">
					<div class="col-md-12 clear">
						<div class="col-xs-10 page-subheader sorting pl0">
						</div>

						<div class="col-xs-2 layout-switcher">
							<a class="layout-list" href="javascript:void(0);"><i class="fa fa-th-list"></i></a>
							<a class="layout-grid active" href="javascript:void(0);"><i class="fa fa-th"></i></a>
						</div>
						<!--/ .layout-switcher-->
					</div>

					<div class="col-md-12 clear">
						<div id="list-type" class="proerty-th">
							<asp:DataList ID="bds" runat="server" RepeatColumns="3">
								<ItemTemplate>
									<div class="col-sm-6 col-md-4 p0 " style="left: 0px; top: 0px; width: 254px; height: 398px">
										<div class="box-two proerty-item ">
											<div class="item-thumb">
												<a href="property-1.html">
													<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "../imgs/"+ Eval("hinhanh") %>'  CommandArgument='<%# Eval("mabds") %>' OnClick="ImageButton1_Click" />
												</a>
											</div>
											<div class="item-entry overflow">
												<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("mabds") %>' OnClick="LinkButton1_Click"><h5>Xoá</h5></asp:LinkButton>
												<h5>
													<asp:LinkButton ID="linkbds" runat="server" CommandArgument='<%# Eval("mabds") %>' OnClick="linkbds_Click" Text='<%# Eval("tenbds") %>'></asp:LinkButton></h5>
												<div class="dot-hr"></div>
												<span class="pull-left"><b>Diện tích:</b><asp:Label ID="lbdientich" runat="server" Text='<%# Eval("dientich") %>'></asp:Label>
                                                    <i class="pull-right"> m²</i>
												</span>
												<img src="assets/img/social_big/placeholder.png" class="img4" alt=""><asp:Label ID="lbdiachi" runat="server" Text='<%# Eval("diachi") %>'></asp:Label>
												<span class="proerty-price pull-right">
													<asp:Label ID="lbgia" runat="server" Text='<%# Eval("gia") %>'></asp:Label>tỷ</span>
												<br />
												<span class="proerty-price pull-left">
													<asp:Label ID="lbkiemduyet" runat="server" Text='<%# Eval("kiemduyet") %>'></asp:Label></span>

												<div class="property-icon">
													<img src="assets/img/icon/bed.png">(5)|
													<img src="assets/img/icon/shawer.png">(2)|
													<img src="assets/img/icon/cars.png">(1)
												</div>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:DataList>

						</div>
					</div>

					<div class="col-md-12">
						<div class="pull-right">
							<div class="pagination">
								<ul>
									<li><a href="#">Prev</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">Next</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
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
