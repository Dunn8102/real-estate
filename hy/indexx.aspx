<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="indexx.aspx.cs" Inherits="hy.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="style.css">
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
			left: 0px;
			top: 10px;
			width: 69%;
			height: 383px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="assets/img/slide1/slider-image-4.jpg" alt="GTA V"></div>
                    <div class="item"><img src="assets/img/slide1/5.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="assets/img/slide1/2.jpg" alt="GTA V"></div>

                </div>
            </div>
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <hr><hr><hr>
                        <h1 class="text-light"><b>MUA, BÁN, THUÊ BẤT ĐỘNG SẢN TẠI ĐÂY</b> </h1>
                        <b>Khi bạn đến với chúng tôi bạn sẽ tìm được những bất động sản phù hợp với bạn</b>
                        <div class="search-form wow pulse form-inline" data-wow-delay="0.8s">

                                <button class="btn  toggle-btn" type="button"><i class="fa fa-bars"></i></button>

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Key word">
                                </div>
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Chọn tỉnh">

                                        <option>Quảng Nam</option>
                                        <option>Hồ Chí Minh</option>
                                        <option>Hà Nội</option>
                                        <option>Quảng Ngãi</option>
                                        <option>Đà Nẵng</option>
                                        <option>Đà Lạt</option>
                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control">
                                        <option> -Trạng Thái- </option>
                                        <option>Thuê </option>
                                        <option>Bán</option>
                                        <option>Mua</option>  

                                    </select>
                                </div>
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                                <div style="display: none;" class="search-toggle">

                                    <div class="search-row">   

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Khung giá ($):</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[0,450]" id="price-range" ><br />
                                            <b class="pull-left color">2 triệu</b> 
                                            <b class="pull-right color">100 triệu</b>
                                        </div>

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">Diện tích (m2) :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[50,450]" id="property-geo" ><br />
                                            <b class="pull-left color">40m</b> 
                                            <b class="pull-right color">12000m</b>
                                        </div>
                                    </div>

                                    <div class="search-row">

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Phòng tắm tối thiểu :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-baths" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">Phòng ngủ tối thiểu :</label>
                                            <input type="text" class="span2" value="" data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-bed" ><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                    </div>
                                    <br>
                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Máy lạnh(3100)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Bồn rửa đôi(500)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Cửa sổ(99)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Bể bơi(1190)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">2 tầng(4600)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Cửa thoát hiểm(200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>                                    

                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Phòng giặt(10073)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Công viên(1503)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Phòng gym(1200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        <br>
                                        <hr>
                                    </div>                             
                                    <button class="btn search-btn prop-btm-sheaerch" type="submit"><i class="fa fa-search"></i></button>  
                                </div>                    

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>TOP BẤT ĐỘNG SẢN ĐƯỢC NHIỀU NGƯỜI YÊU THÍCH</h2>
                        <p>Những bất động sản được quan tâm và có lượt tương tác nhiều nhất</p>
                    </div>
                </div>
				<div class="row">
                    <div class="proerty-th form-inline">

						<asp:DataList ID="bds" runat="server" RepeatColumns="4" AllowPaging="True" PageSize="10">
							<ItemTemplate>
								<div class="col-sm-6 col-md-3 p0">
									<div class="proerty-item">
										<div class="item-thumb" >
											<a><asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("mabds") %>' ImageUrl='<%# "../imgs/"+ Eval("hinhanh") %>' OnClick="ImageButton1_Click" Heigh="273.45" Width="250px"/></a>
											<br />
										</div>
										<div class="item-entry overflow" style="width:250px" >
											<h5><a><asp:LinkButton ID="linkBtnTenbds" runat="server" OnClick="linkBtnTenbds_Click" CommandArgument='<%# Eval("mabds") %>' Text='<%# Eval("tenbds") %>'></asp:LinkButton></h3></a></h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b>Diện tích :</b>
												<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("mabds") %>' Text='<%# Eval("dientich") %>'></asp:LinkButton>
                                                <i class="pull-right"> m²</i>
											</span>
											<img src="assets/img/social_big/placeholder.png" style="height: 20px; width: 20px "></img>
											<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("mabds") %>' Text='<%# Eval("diachi") %>'></asp:LinkButton>
											<br />
											<div class="proerty-price pull-right">
												<asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("mabds") %>' Text='<%# Eval("gia") %>'></asp:LinkButton>
												<i class="text-danger">TỶ ĐỒNG</i>
											</div>
											<br /><br />
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


        <!--Welcome area -->
        <div class="Welcome-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 Welcome-entry  col-sm-12">
                        <div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
                            <div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s" data-wow-offset="100">
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                                        <!-- /.feature title -->
                                        <h2>SUPER REAL ESATE </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12">
                            <div  class="welcome_services wow fadeInRight" data-wow-delay="0.3s" data-wow-offset="100">
                                <div class="row">
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <img src="assets/img/social_big/ic-feng-shui.svg" alt="">
                                                <i class="pe-4x"></i>
                                            </div>
                                            <h3><a href="phongthuy.aspx">Phong Thuỷ</a></h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <img src="assets/img/social_big/ic-house.svg" alt="">
                                                <i class="pe-4x"></i>
                                            </div>
                                            <h3><a href="chiphixaynha.aspx">Chi phí làm nhà</a></h3>
                                        </div>
                                    </div>


                                    <div class="col-xs-12 text-center">
                                        <i class="welcome-circle"></i>
                                    </div>

                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <img src="assets/img/social_big/calculator.svg" alt="">
                                                <i class="pe-4x"></i>
                                            </div>
                                            <h3><a href="dutruvattu.aspx">Dự trù vật tư</a></h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <img src="assets/img/social_big/ic-ying-yang.svg" alt="">
                                                <i class="pe-4x"></i>
                                            </div>
                                            <h3><a href="dutruvattu.aspx">Xem tuổi xây nhà</a></h3>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--TESTIMONIALS -->
        <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>NHỮNG THÀNH VIÊN CỦA WEBSITE</h2> 
                    </div>
                </div>
                <div class="row">
                    <div class="testimonial">
                        <div class="col-md-3">
                            <div class="item">
                                <div class="client-text">
                                    <h4><strong>Hoài Yên Ngô, </strong><i>Student</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                    <img src="assets/img/client1.png" style="height:70px; width:70px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item">
                                <div class="client-text">
                                    <h4><strong>Duy Đông, </strong><i>Student</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                    <img src="assets/img/client2.png" style="height:70px; width:70px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item">
                                <div class="client-text">
                                    <h4><strong>Võ Văn Dũng, </strong><i>Student</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                    <img src="assets/img/client3.png" style="height:70px; width:70px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item">
                                <div class="client-text">
                                    <h4><strong>Khánh Dương, </strong><i>Student</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                    <img src="assets/img/client4.png" style="height:70px; width:70px" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Count area -->
        <div class="count-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>BẠN CÓ THỂ TIN TƯỞNG CHÚNG TÔI</h2> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
                        <div class="row">
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-users"></span>
                                    </div>
                                    <div class="chart" data-percent="5000">
                                        <h2 class="percent" id="counter">0</h2>
                                        <h5>KHÁCH HÀNG HẠNH PHÚC</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-home"></span>
                                    </div>
                                    <div class="chart" data-percent="12000">
                                        <h2 class="percent" id="counter1">0</h2>
                                        <h5>BẤT ĐỘNG SẢN HIỆN ĐANG GIAO DỊCH</h5>
                                    </div>
                                </div> 
                            </div> 
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-flag"></span>
                                    </div>
                                    <div class="chart" data-percent="40">
                                        <h2 class="percent" id="counter2">0</h2>
                                        <h5>ĐỊA PHƯƠNG</h5>
                                    </div>
                                </div> 
                            </div> 
                            <div class="col-sm-3 col-xs-6">
                                <div class="count-item">
                                    <div class="count-item-circle">
                                        <span class="pe-7s-graph2"></span>
                                    </div>
                                    <div class="chart" data-percent="5000">
                                        <h2 class="percent"  id="counter3">5000</h2>
                                        <h5>NGƯỜI DÙNG</h5>
                                    </div>
                                </div> 

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- boy-sale area -->
        <div class="boy-sale-area">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
                        <div class="asks-first">
                            <div class="asks-first-circle">
                                <span class="fa fa-search"></span>
                            </div>
                            <div class="asks-first-info">
                                <h2>BẠN ĐANG TÌM NHÀ Ở?</h2>
                                <p>Để tìm kiếm dễ dàng hơn và có nhiều sự lựa chọn</p>                                        
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.aspx"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
                        <div  class="asks-first">
                            <div class="asks-first-circle">
                                <span class="fa fa-usd"></span>
                            </div>
                            <div class="asks-first-info">
                                <h2>BẠN MUỐN BÁN MỘT BẤT ĐỘNG SẢN?</h2>
                                <p>Mọi thứ trở nên uy tín với vài bước xác thực thông tin</p>
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.aspx"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <p  class="asks-call">THẮC MẮC?CÒN CHỜ GÌ NỮA, GỌI NGAY : <span class="strong"> + 3-123- 424-5700</span></p>
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
