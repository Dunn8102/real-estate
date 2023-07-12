<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postt.aspx.cs" Inherits="hy.postt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type="text/css" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="assets/css/normalize.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/fontello.css"/>
    <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet"/>
    <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet" media="screen"/>
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/icheck.min_all.css"/>
    <link rel="stylesheet" href="assets/css/price-range.css"/>
    <link rel="stylesheet" href="assets/css/owl.carousel.css"/>
    <link rel="stylesheet" href="assets/css/owl.theme.css"/>
    <link rel="stylesheet" href="assets/css/owl.transitions.css"/>
    <link rel="stylesheet" href="assets/css/wizard.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css" />
</head>
<body>
    
        <div>
			<nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt=""></a>
                </div>
				
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="wow fadeInDown text-ba" data-wow-delay="0.2s"><a class="" href="indexx.aspx">Trang Chủ</a></li>

                        <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="properties.aspx">Danh mục</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="postt.aspx">Đăng tin</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="blog.aspx">Tin tức</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="Contact.aspx">Liên hệ</a></li>
						<li class="dropdown yamm-fw" data-wow-delay="0.4s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Quản lý<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h5>Tài khoản của bạn</h5>
                                                <ul>
                                                    <li>
                                                        <a href="quanlytaikhoan.aspx">Quản lý tài khoản</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Danh sách bài đã đăng</a>
                                                    </li>
                                                    <li>
                                                        <a href="quanlyyeuthich.aspx">Danh sách bất động sản yêu thích</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.4s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Tiện ích<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h5>Hỗ trợ tiện ích</h5>
                                                <ul>
                                                    <li>
                                                        <a href="xemtuoixaynha.aspx">Xem tuổi xây nhà</a>
                                                    </li>
                                                    <li>
                                                        <a href="phongthuy.aspx">Phong Thuỷ</a>
                                                    </li>
                                                    <li>
                                                        <a href="chiphixaynha.aspx">Chi Phí xây nhà</a>
                                                    </li>
                                                    <li>
                                                        <a href="dutruvattu.aspx">Dữ trù vật tư</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>

                        <!-- <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="contact.html">Contact</a></li> -->
                    </ul>
                </div><!-- /.navbar-collapse -->
				
            </div><!-- /.container-fluid -->
        </nav>
			<div class="page-head">
				<div class="container">
					<div class="row">
						<div class="page-head-content">
							<h1 class="page-title">ĐĂNG BÀI</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- End page header -->

			<!-- property area -->
			<div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
				<div class="container">
					<div class="clearfix">
						<div class="wizard-container">

							<div class="wizard-card ct-wizard-orange" id="wizardProperty">
								<form id="form1" runat="server">
									<div class="wizard-header">
										<h3>
											<b>ĐĂNG BÀI</b>BẤT ĐỘNG SẢN CỦA BẠN<br>
											<small>Đăng bài để có thể bán bất động sản của bạn dễ dàng.</small>
										</h3>
									</div>

									<ul>
										<li><a href="#step1" data-toggle="tab">Bước 1 </a></li>
										<li><a href="#step2" data-toggle="tab">Bước 2</a></li>
										<li><a href="#step3" data-toggle="tab">Bước 3</a></li>
										<li><a href="#step4" data-toggle="tab">Hoàn thành</a></li>
									</ul>

									<div class="tab-content">

										<div class="tab-pane" id="step1">
											<div class="row p-b-15  ">
												<h4 class="info-text">Bắt đầu với những thông tin cơ bản</h4>
												<div class="col-sm-4 col-sm-offset-1">
													<div class="picture-container">
															<label>Hình Ảnh<small>(bắt buộc)</small></label>
															<asp:FileUpload ID="fileUploader" runat="server" />
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>Tên bất động sản<small>(bắt buộc)</small></label>
														<div class="form-control">
															<asp:TextBox ID="txttenbds" runat="server"></asp:TextBox>
														</div>
												
													</div>

													<div class="form-group">
														<label>Giá bất động sản<small>(bắt buộc)</small></label>
														<div class="form-control">
															<asp:TextBox ID="txtgia" runat="server"></asp:TextBox>
														</div>
													</div>
											
												</div>
											</div>
										</div>
										<!--  End step 1 -->

										<div class="tab-pane" id="step2">
											<h4 class="info-text">Hãy mô tả bất đặc sản của bạn chính xác</h4>
											<div class="row">
												<div class="col-sm-12">
													<div class="col-sm-12">
														<div class="form-group">
															<label>Miêu tả bất động sản:</label>
															<div class="form-control">
																<asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
															</div>
														</div>
													</div>
												</div>

												<div class="col-sm-12">
													<div class="col-sm-3">
														<div class="form-group">
															<label>Trạng thái:</label>
															<asp:DropDownList runat="server" ID="dropDownListTT"></asp:DropDownList>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<label>Tỉnh thành:</label>
															<asp:DropDownList ID="drdiachi" runat="server">
																<asp:ListItem>Đà Nẵng</asp:ListItem>
																<asp:ListItem>Nha Trang</asp:ListItem>
																<asp:ListItem>Hồ Chí Minh</asp:ListItem>
																<asp:ListItem>Quảng Nam</asp:ListItem>
																<asp:ListItem>Quảng Ngãi</asp:ListItem>
															</asp:DropDownList>
														</div>
													</div>
												</div>
												<div class="col-sm-12 padding-top-15">
													<div class="col-sm-4">
														<div class="form-group">
															<label for="property-geo">Phòng ngủ:</label>
															<asp:TextBox ID="txtphongngu" runat="server"></asp:TextBox>
														</div>
													</div>
													<div class="col-sm-4">

														<div class="form-group">
															<label for="price-range">Phòng tắm:</label>
															<b class="pull-right color"></b>
															<asp:TextBox ID="txtphongtam" runat="server"></asp:TextBox>
														</div>
													</div>
													<div class="col-sm-4">

														<div class="form-group">
															<label for="property-geo">Diện tích(m2) :</label>
															<asp:TextBox ID="txtdientich" runat="server"></asp:TextBox>
														</div>
													</div>
												</div>
												<div class="col-sm-12 padding-top-15">
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox"> Bể bơi
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Tầng
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Cửa sổ
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Máy lạnh
																</label>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-12 padding-bottom-15">
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Phòng kho
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">lan can
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Nội thất
																</label>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<div class="checkbox">
																<label>
																	<input type="checkbox">Bồn tắm
																</label>
															</div>
														</div>
													</div>
												</div>
												<br>
											</div>
										</div>
										<!-- End step 2 -->

										<div class="tab-pane" id="step3">
											<h4 class="info-text">Bạn gửi cho tôi một ít video được hong ?</h4>
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label for="property-images">Chọn ảnh :</label>
														<input class="form-control" type="file" id="property-images">
														<p class="help-block">Chọn ảnh bất động sản đẹp nhất của bạn.</p>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label for="property-video">Video bất động sản :</label>
														<input class="form-control" value=""
															placeholder="http://www.youtube.com, http://vimeo.com"
															name="property_video" type="text">
													</div>

													<div class="form-group">
														<input class="form-control" value=""
															placeholder="http://www.youtube.com, http://vimeo.com"
															name="property_video" type="text">
													</div>

													<div class="form-group">
														<input class="form-control" value=""
															placeholder="http://www.youtube.com, http://vimeo.com"
															name="property_video" type="text">
													</div>
												</div>
											</div>
										</div>
										<!--  End step 3 -->


										<div class="tab-pane" id="step4">
											<h4 class="info-text"> Hoàn thành và gửi nào</h4>
											<div class="row">
												<div class="col-sm-12">
													<div class="">
														<p>
															<label><strong>Các điều khoản và điều kiện</strong></label>
															Bằng cách truy cập hoặc sử dụng các dịch vụ của GARO ESTATE, chẳng
															hạn như đăng quảng cáo bất động sản cùng với thông tin cá nhân của
															bạn trên trang web của chúng tôi, bạn đồng ý với việc thu thập, sử
															dụng và tiết lộ thông tin cá nhân của mình theo cách phù hợp với
															pháp luật
														</p>

														<div class="checkbox">
															<label>
																<input type="checkbox" /> <strong>Chấp nhận các điều khoản và
																	điều kiện.</strong>
															</label>
														</div>

													</div>
												</div>
											</div>
											<asp:Button ID="btndang" Text="Đăng" runat="server"  OnClick="btndang_Click" CommandArgument='<%# Eval("mabds") %>' />
										</div>
										<!--  End step 4 -->

									</div>

									<div class="wizard-footer">
										<div class="pull-right">
											<input type='button' class='btn btn-next btn-primary' name='next' value='Next' />
											<input type='button' class='btn btn-finish btn-primary ' name='finish'
												value='Finish' />
										</div>

										<div class="pull-left">
											<input type='button' class='btn btn-previous btn-default' name='previous'
												value='Previous' />
										</div>
										<asp:Label ID="lbThongBao" runat="server" Text="Label"></asp:Label>
										<div class="clearfix"></div>
									</div>
								</form>
							</div>
							<!-- End submit form -->
						</div>
					</div>
				</div>
			</div>
			<div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>THÔNG TIN</h4>
                                <div class="footer-title-line"></div>

                                <img src="assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>Công ty bất động sản siêu cấp vô địch vũ trụ.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> 123 Bình An </li>
                                    <li><i class="pe-7s-mail strong"> </i> email@gmail.com</li>
                                    <li><i class="pe-7s-call strong"> </i> +84 090909090</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>TRUY CẬP NHANH </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="index.html">TRANG CHỦ</a>  </li> 
                                    <li><a href="#">Phong thuỷ</a>  </li> 
                                    <li><a href="submit-property.html">Chi phí làm nhà </a></li> 
                                    <li><a href="contact.html">Dự trù vật tư</a></li> 
                                    <li><a href="faq.html">Xem tuổi xây nhà</a>  </li> 
                                    <li><a href="properties.html">Bất động sản</a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>TIN TỨC MỚI NHẤT</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2023</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Xem thêm </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2023</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Xem thêm</a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2022</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Xem thêm</a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>GIỮ LIÊN LẠC</h4>
                                <div class="footer-title-line"></div>
                                <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form> 
                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
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
		<script src="htps://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

		<script src="assets/js/main.js"></script>
		<script>
			function chooseFile(fileInput) {
				if (fileInput.files && fileInput.files[0]) {
					let reader = new FileReader();
					let a = document.querySelector("#image").getAttribute('src');
					reader.onload = function (e) {
						$('#image').attr('src', e.target.result);
					}
					reader.readAsDataURL(fileInput.files[0]);
				}
			}
		</script>
</body>
</html>
