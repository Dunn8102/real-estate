<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="property.aspx.cs" Inherits="hy.property" %>

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
	<link rel="stylesheet" href="assets/css/lightslider.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">CĂN HỘ SIÊU ĐẸP</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area single-property" style="background-color: #FCFCFC;">
		&nbsp;
            <div class="container">

				<div class="clearfix padding-top-40">

					<div class="col-md-8 single-property-content prp-style-1 ">
						<div class="row">
							<div class="light-slide-item">
								<div class="clearfix">
									<div class="favorite-and-print">
										<a class="add-to-fav" href="#login-modal" data-toggle="modal">
											<i class="fa fa-star-o"></i>
										</a>
										<a class="printer-icon " href="javascript:window.print()">
											<i class="fa fa-print"></i>
										</a>
									</div>

									<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
										<li data-thumb="assets/img/property-1/property1.jpg">
											<img src="assets/img/property-1/property1.jpg" />
										</li>

										<li data-thumb="assets/img/property-1/property2.jpg">
											<img src="assets/img/property-1/property3.jpg" />
										</li>
										<li data-thumb="assets/img/property-1/property3.jpg">
											<img src="assets/img/property-1/property3.jpg" />
										</li>
										<li data-thumb="assets/img/property-1/property4.jpg">
											<img src="assets/img/property-1/property4.jpg" />
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="single-property-wrapper">
							<div class="single-property-header">
								<asp:DataList ID="DataList1" runat="server">
									<ItemTemplate>
										<h1 class="property-title pull-left" style="font-size: 30px">
											<asp:Label ID="Label4" runat="server" Text='<%# Eval("tenbds") %>'></asp:Label></h1>
										<h3 class="">
											<asp:Label ID="Label5" runat="server" Text='<%# Eval("gia") %>'></asp:Label>
											Tỷ</h3>
									</ItemTemplate>
								</asp:DataList>
								<asp:Button ID="Button1" runat="server" Text="Thêm vào danh mục yêu thích" CommandArgument='<%# Eval("mabds") %>' OnClick="Button1_Click" />
								<asp:Label ID="lbTB" runat="server" Text=""></asp:Label>
								<a href="quanlyyeuthich.aspx">Xem danh sách yêu thích?</a>
							</div>

							<div class="property-meta entry-meta clearfix ">

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-tag">
										<img src="assets/img/icon/sale-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">--trạng thái-</span>
										<span class="property-info-value">Bán</span>
									</span>
								</div>

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info icon-area">
										<img src="assets/img/icon/room-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">Diện tích</span>
										<span class="property-info-value">3500<b class="property-info-unit">Sq Ft</b></span>
									</span>
								</div>

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-bed">
										<img src="assets/img/icon/bed-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">Phòng ngủ</span>
										<span class="property-info-value">3</span>
									</span>
								</div>

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-bed">
										<img src="assets/img/icon/cars-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">Gara ô tô</span>
										<span class="property-info-value">1</span>
									</span>
								</div>

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-bath">
										<img src="assets/img/icon/os-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">Hàng rào</span>
										<span class="property-info-value">3</span>
									</span>
								</div>

								<div class="col-xs-6 col-sm-3 col-md-3 p-b-15">
									<span class="property-info-icon icon-garage">
										<img src="assets/img/icon/shawer-orange.png">
									</span>
									&nbsp;<span class="property-info-entry"><span class="property-info-label">Nhà tắm</span>
										<span class="property-info-value">2</span>
									</span>
								</div>


							</div>
							<!-- .property-meta -->

							<div class="section">
								<h4 class="s-property-title">Mô tả</h4>
								<div class="s-property-content">
									<p>
										"Căn hộ tọa lạc tại tầng 10 chung cư ABC, đường XYZ, Quận 1, TP.HCM. Với diện tích sử dụng 80m2, căn hộ bao gồm 3 phòng ngủ, 2 phòng tắm và phòng khách rộng rãi. 
                                        
                                        Căn hộ được trang bị đầy đủ các thiết bị hiện đại như bếp ga, tủ lạnh, máy giặt, máy lạnh, giường, tủ quần áo, bàn ghế, TV, wifi, v.v... Với phong cách decor tối giản, căn hộ tạo cảm giác rộng rãi, thoải mái và hiện đại.
                                        
                                        Căn hộ được thiết kế với phòng khách và bếp mở, tạo không gian sống rộng rãi và tiện nghi. Các phòng ngủ được bố trí phía sau, mang lại sự riêng tư cho cư dân. 
                                        
                                        Căn hộ đã được hoàn thiện và sẵn sàng cho việc dọn vào ở. Giấy tờ pháp lý đầy đủ và rõ ràng. Giá cho bán là 3 tỷ đồng. 
                                        
                                        Hãy liên hệ ngay để xem căn hộ và trải nghiệm không gian sống hiện đại và tiện nghi tại căn hộ này!"
									</p>
								</div>
							</div>
							<!-- End description area  -->

							<div class="section additional-details">

								<h4 class="s-property-title">Chi tiết bổ sung</h4>

								<ul class="additional-details-list clearfix">
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Cạnh sông</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>

									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Thời gian xây dựng</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2023</span>
									</li>
									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Bãi đậu xe</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 chỗ trở lên, bãi đậu xe có mái che, bãi đậu xe có người phục vụ</span>
									</li>

									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Gần siêu thị</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>

									<li>
										<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Cảnh</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Sông</span>
									</li>

								</ul>
							</div>
							<!-- End additional-details area  -->

							<div class="section property-features">

								<h4 class="s-property-title">Đặc điểm nổi bật</h4>
								<ul>
									<li><a href="properties.html">Bể bơi</a></li>
									<li><a href="properties.html">3 tầng</a></li>
									<li><a href="properties.html">Trung tâm</a></li>
									<li><a href="properties.html">Thoáng mát</a></li>
									<li><a href="properties.html">Cảnh đẹp</a></li>
									<li><a href="properties.html">Gần công viên</a></li>
								</ul>

							</div>
							<!-- End features area  -->

							<div class="section property-video">
								<h4 class="s-property-title">Video chi tiết</h4>
								<div class="video-thumb">
									<a class="video-popup" href="#" title="Virtual Tour">
										<img src="assets/img/property-video.jpg" class="img-responsive wp-post-image" alt="Exterior">
									</a>
									&nbsp;
								</div>
							</div>
							<!-- End video area  -->



							<div class="section property-share">
								<h4 class="s-property-title">Chia sẻ với bạn bè của bạn </h4>
								<div class="roperty-social">
									<ul>
										<li><a title="Share this on dribbble " href="#">
											<img src="assets/img/social_big/dribbble_grey.png"></a></li>
										<li><a title="Share this on facebok " href="#">
											<img src="assets/img/social_big/facebook_grey.png"></a></li>
										<li><a title="Share this on delicious " href="#">
											<img src="assets/img/social_big/delicious_grey.png"></a></li>
										<li><a title="Share this on tumblr " href="#">
											<img src="assets/img/social_big/tumblr_grey.png"></a></li>
										<li><a title="Share this on digg " href="#">
											<img src="assets/img/social_big/digg_grey.png"></a></li>
										<li><a title="Share this on twitter " href="#">
											<img src="assets/img/social_big/twitter_grey.png"></a></li>
										<li><a title="Share this on linkedin " href="#">
											<img src="assets/img/social_big/linkedin_grey.png"></a></li>
									</ul>
								</div>
							</div>
							<!-- End video area  -->

						</div>
					</div>


					<div class="col-md-4 p0">
						<aside class="sidebar sidebar-property blog-asside-right">
							<div class="dealer-widget">
								<div class="dealer-content">
									<div class="inner-wrapper">

										<div class="clear">
											<div class="col-xs-8 col-sm-8 ">
												<h3 class="dealer-name">
													<asp:DataList ID="DataList2" runat="server" OnItemDataBound="DataList2_ItemDataBound">
														<ItemTemplate>
															<asp:Label ID="Label3" runat="server" Text='<%# Eval("tennguoidung") %>'></asp:Label>
														</ItemTemplate>
													</asp:DataList>

													<span>Người bán bất động sản</span>
												</h3>
												<div class="dealer-social-media">
													<a class="twitter" target="_blank" href="">
														<i class="fa fa-twitter"></i>
													</a>
													<a class="facebook" target="_blank" href="">
														<i class="fa fa-facebook"></i>
													</a>
													<a class="gplus" target="_blank" href="">
														<i class="fa fa-google-plus"></i>
													</a>
													<a class="linkedin" target="_blank" href="">
														<i class="fa fa-linkedin"></i>
													</a>
													<a class="instagram" target="_blank" href="">
														<i class="fa fa-instagram"></i>
													</a>
												</div>

											</div>
										</div>

										<div class="clear">
											<ul class="dealer-contacts">
												<asp:DataList ID="dr3" runat="server" OnItemDataBound="DataList1_ItemDataBound">
													<ItemTemplate>

														<%--<li><i class="pe-7s-map-marker strong"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("diachi") %>'></asp:TextBox></i></li>
														<li><i class="pe-7s-mail strong"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("email") %>'></asp:TextBox></i></li>
														<li><i class="pe-7s-call strong"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("sodienthoai") %>'></asp:TextBox></i></li>--%>
														<li class="dealer-name"><i class="pe-7s-map-marker strong">
															<asp:Label ID="Label1" runat="server" Text='<%# Eval("diachi") %>'></asp:Label></i></li>
														<br />
														<li class="dealer-name"><i class="pe-7s-mail strong">
															<asp:Label ID="Label2" runat="server" Text='<%# Eval("email") %>'></asp:Label></i></li>
														<br />
														<li class="dealer-name"><i class="pe-7s-call strong">
															<asp:Label ID="Label3" runat="server" Text='<%# Eval("sodienthoai") %>'></asp:Label></i></li>
                                                        <li class="dealer-name"><i class="pe-7s-mail strong">
															<asp:Label ID="Label6" runat="server" Text='<%# Eval("username") %>'></asp:Label></i></li>
														<br />
													</ItemTemplate>
												</asp:DataList>
                                                <div class="form-group">
    <asp:Label ID="lbThongBao" runat="server" Text="" CssClass="control-label col-md-3"></asp:Label>
    <div class="col-md-9">
        <asp:Button ID="toggleChatButton" runat="server" Text="Mở room chat" CssClass="btn btn-default" />
    </div>
                                                    <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label8" runat="server" Text="" Visible="False"></asp:Label>
</div>
                        <div id="chatContainer" runat="server" class="chat-container hidden">
                           <div class="chat-header">
                               <asp:Label ID="moroom" runat="server" Text="Chat Room" Font-Bold="True"></asp:Label>
                             </div>
                           <div id="chatHistory" runat="server" class="chat-history">
                               <asp:DataList ID="DataList33" runat="server"  OnItemDataBound="DataList6_ItemDataBound" >
                                 <ItemTemplate>
                                     <asp:Label ID="NguoiGuiLabel" runat="server" ForeColor="Black"></asp:Label>
                                <asp:Label runat="server" ID="NoiDungLabel" Text='<%# Eval("noidungtinnhan") %>' ForeColor="#333333"></asp:Label>
                                 </ItemTemplate>
                                </asp:DataList>
                           </div>
                             <div class="chat-footer">
                             <asp:TextBox ID="chatInput" runat="server" placeholder="Type your message..." AutoPostBack="true"></asp:TextBox>
                              <%--<button type="submit" OnClick="Button99_Click" ><i class="fa fa-paper-plane" ></i></button>--%>
                                 <asp:Button ID="submit" runat="server" Text="Gửi" OnClick="Button99_Click" Width="20%" />
                             </div>
                            </div>
											</ul>
										</div>

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

							<div class="panel panel-default sidebar-menu wow fadeInRight animated">
								<div class="panel-heading">
									<h3 class="panel-title">QUẢNG CÁO KKK</h3>
								</div>
								<div class="panel-body recent-property-widget">
									<img src="assets/img/ads.jpg">
								</div>
							</div>

							<div class="panel panel-default sidebar-menu wow fadeInRight animated">
								<div class="panel-heading">
									<h3 class="panel-title">TÌM KIẾM NHANH</h3>
								</div>
								<div class="panel-body search-widget">
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

						</aside>
					</div>
				</div>

			</div>
	</div>
	<script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
	<script type="text/javascript" src="assets/js/lightslider.min.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		$(document).ready(function () {

			$('#image-gallery').lightSlider({
				gallery: true,
				item: 1,
				thumbItem: 9,
				slideMargin: 0,
				speed: 500,
				auto: true,
				loop: true,
				onSliderLoad: function () {
					$('#image-gallery').removeClass('cS-hidden');
				}
			});
		});
	</script>
</asp:Content>
