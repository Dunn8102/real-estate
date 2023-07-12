<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="hy.post" %>
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
                        <form action="" >
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
                                                    <b class="pull-right color">120</b>--%>
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
		</form>
</asp:Content>
