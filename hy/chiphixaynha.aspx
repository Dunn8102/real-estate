<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="chiphixaynha.aspx.cs" Inherits="hy.chiphixaynha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/style.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/dark.css" type="text/css" />

	<link rel="stylesheet" href="assets/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="assets/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Store Demo Specific Stylesheet -->
	<link rel="stylesheet" href="assets/css/fonts.css" type="text/css" /> <!-- Store Theme Font -->
	<link rel="stylesheet" href="assets/css/store.css" type="text/css" /> <!-- Store Theme Custom CSS -->
	
     <style>
		.re__utility-container {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		}

		.cardh {
			flex-basis: 10rem;
		}
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
            text-align: center;
		}

		h1 {
			background-color: #708090;
			color: white;
			padding: 20px;
			margin: 0;
            margin-bottom: 20px;
		}

		form {
			background-color: #f2f2f2;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            
		}

		form label {
			display: inline-block;
			width: 200px;
			margin-right: 10px;
		}

		form input[type="number"],
		form select {
			padding: 5px;
			border-radius: 5px;
			border: none;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
			font-size: 16px;
			width: 150px;
			margin-bottom: 10px;
		}

		form input[type="button"] {
			background-color: #708090;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
			margin-top: 10px;
            margin-bottom: 10px;
		}

		h2 {
			background-color: #708090;
			color: white;
			padding: 20px;
			margin: 0;
		}

		table {
			width: 100%;
			border-collapse: collapse;
			margin-top: 20px;
            
		}

		th, td {
			padding: 10px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}

		th {
			background-color: #708090;
			color: white;
		}

		tfoot td {
			font-weight: bold;
			text-align: right;
		}

		tfoot td:last-child {
			font-size: 20px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section id="content">
			<div class="content-wrap pb-0">

				<!-- Login/Register Modal -->
				
				<!-- end Login/Register Modal  -->

				<!-- view cart -->
				
				<!-- end view cart -->
                <h1>Tính chi phí xây dựng nhà</h1>
                <form>
                    <label for="loainha">Loại nhà:</label>
                    <select id="loainha">
                        <option value="bietthu">Biệt thự</option>
                        <option value="nhathuong">Nhà thường</option>
                    </select>
                    <br>
            
                    <label for="chieudai">Chiều dài (m):</label>
                    <input type="number" id="chieudai" name="chieudai">
                    <br>
            
                    <label for="chieurong">Chiều rộng (m):</label>
                    <input type="number" id="chieurong" name="chieurong">
                    <br>
            
                    <label for="sotang">Số tầng:</label>
                    <input type="number" id="sotang" name="sotang">
                    <br>
            
                    <label for="chieucao">Chiều cao một tầng (m):</label>
                    <input type="number" id="chieucao" name="chieucao">
                    <br>
            
                    <label for="loaimai">Loại mái nhà:</label>
                    <select id="loaimai">
                        <option value="betong">Bê tông</option>
                        <option value="ngoi">Ngói</option>
                        <option value="ton">Tôn</option>
                    </select>
                    <br>
            
                    <input type="button" value="Tính toán" onclick="tinhChiPhi()">
                </form>
            
                <h2>Kết quả tính toán:</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Vật liệu</th>
                            <th>Đơn vị</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody id="bang-vatlieu">
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4">Tổng chi phí vật liệu:</td>
                            <td id="tong-vatlieu"></td>
                        </tr>
                        <tr>
                            <td colspan="4">Tiền công:</td>
                            <td id="tien-cong"></td>
                        </tr>
                        <tr>
                            <td colspan="4">Tổng chi phí:</td>
                            <td id="tong-chi-phi"></td>
                        </tr>
                    </tfoot>
                </table>
            
                <script>
                    function tinhChiPhi() {
                        var loaiNha = document.getElementById("loainha").value;
                        var chieuDai = document.getElementById("chieudai").value;
                        var chieuRong = document.getElementById("chieurong").value;
                        var soTang = document.getElementById("sotang").value;
                        var chieuCao = document.getElementById("chieucao").value;
                        var loaiMai = document.getElementById("loaimai").value;
            
                        var vatLieu = [
                            { ten: "Xi măng", donVi: "bịch 50kg", donGia: 120000 },
                            { ten: "Cát xây tô", donVi: "m3", donGia: 350000 },
                            { ten: "Gạch 4 lỗ", donVi: "viên", donGia: 3000 },
                            { ten: "Sắt 8 ly", donVi: "cây 12m", donGia: 420000 },
                            { ten: "Sơn Alphalux", donVi: "thùng 20l", donGia: 1700000 },
                            { ten: "Mái tôn", donVi: "m2", donGia: 300000 },
                            { ten: "Mái ngói", donVi: "m2", donGia: 500000 },
                            { ten: "Cửa gỗ", donVi: "chiếc", donGia: 3000000 },
                            { ten: "Cửa nhôm", donVi: "chiếc", donGia: 4000000 },
                            { ten: "Cửa kính", donVi: "m2", donGia: 500000 },
                            { ten: "Sàn bê tông", donVi: "m2", donGia: 500000 },
                            { ten: "Sàn gỗ", donVi: "m2", donGia: 800000 },
                        ];
            
                        var vatLieuTongTien = 0;
            
                        for (var i = 0; i < vatLieu.length; i++) {
                            var soLuong = 0;
                            var thanhTien = 0;
            
                            switch (vatLieu[i].ten) {
                                case "Xi măng":
                                    soLuong = Math.ceil((chieuDai * chieuRong * chieuCao * soTang) / 50);
                                    thanhTien = soLuong * vatLieu[i].donGia;
                                    break;
                                case "Cát xây tô":
                                    soLuong = Math.ceil((chieuDai * chieuRong * chieuCao * soTang) / 7);
                                    thanhTien = soLuong * vatLieu[i].donGia;
                                    break;
                                case "Gạch 4 lỗ":
                                    soLuong = Math.ceil((chieuDai * chieuRong * soTang) / 0.11);
                                    thanhTien = soLuong * vatLieu[i].donGia;
                                    break;
                                case "Sắt 8 ly":
                                    soLuong = Math.ceil(((chieuDai + chieuRong) * 2 + Math.sqrt(chieuDai * chieuDai + chieuRong * chieuRong) * soTang) / 12);
                                    thanhTien = soLuong * vatLieu[i].donGia;
                                    break;
                                case "Sơn Alphalux":
                                    soLuong = Math.ceil((chieuDai + chieuRong) * 2 / 10);
                                    thanhTien = soLuong * vatLieu[i].donGia;
                                    break;
                				case "Mái tôn":
						var dienTichMai = chieuDai * chieuRong;
						var soLuong = Math.ceil(dienTichMai / 10) * 10;
						thanhTien = soLuong * vatLieu[i].donGia;
						break;
					case "Mái ngói":
						var dienTichMai = chieuDai * chieuRong;
						var soLuong = Math.ceil(dienTichMai / 10) * 10;
						thanhTien = soLuong * vatLieu[i].donGia;
						break;
					case "Cửa gỗ":
						soLuong = Math.ceil(soTang * 2);
						thanhTien = soLuong * vatLieu[i].donGia;
						break;
					case "Cửa nhôm":
						soLuong = Math.ceil(soTang * 2);
						thanhTien = soLuong * vatLieu[i].donGia;
						break;
					case "Cửa kính":
						var dienTichCua = chieuDai * chieuCao * 2 + chieuRong * chieuCao * 2;
						soLuong = Math.ceil(dienTichCua / 2);
						thanhTien = soLuong * vatLieu[i].donGia;
						break;
					case "Sàn bê tông":
						var dienTichSan = chieuDai * chieuRong * soTang;
						thanhTien = dienTichSan * vatLieu[i].donGia;
						break;
					case "Sàn gỗ":
						var dienTichSan = chieuDai * chieuRong * soTang;
						thanhTien = dienTichSan * vatLieu[i].donGia;
						break;
				}

				vatLieuTongTien += thanhTien;

				var row = document.createElement("tr");
				row.innerHTML = "<td>" + vatLieu[i].ten + "</td>" +
								 "<td>" + vatLieu[i].donVi + "</td>" +
								 "<td>" + vatLieu[i].donGia.toLocaleString() + "</td>" +
								 "<td>" + soLuong.toLocaleString() + "</td>" +
								 "<td>" + thanhTien.toLocaleString() + "</td>";
				document.getElementById("bang-vatlieu").appendChild(row);
			}

			var tienCong = vatLieuTongTien * 0.2;
			var tongChiPhi = vatLieuTongTien + tienCong;

			document.getElementById("tong-vatlieu").innerHTML = vatLieuTongTien.toLocaleString();
			document.getElementById("tien-cong").innerHTML = tienCong.toLocaleString();
			document.getElementById("tong-chi-phi").innerHTML = tongChiPhi.toLocaleString();
		}
	</script>
				<div class="re__content-block re__home__utility-block">
					<div class="re__content-container">
						<h2 class="re__content-container-label">Hỗ trợ tiện ích</h2>
						<div class="re__utility-container " style="text-align: center; margin-bottom: 10px;">
							<div class="cardh" style="width: 10rem;">
								<img src="assets/img/social_big/ic-ying-yang.svg" class="card-img-top" alt="...">
								<div class="card-body">	
									<h3><a class="re__utility-item " href="xemtuoixaynha.aspx" rel="nofollow">Xem tuổi xây nhà</a></h3>
								</div>
							</div>
							<div class="cardh" style="width: 10rem;">
								<img src="assets/img/social_big/ic-house.svg" class="card-img-top" alt="...">
								<div class="card-body">	
									<h3><a class="re__utility-item" href="chiphixaynha.aspx" rel="nofollow">Chi phí làm nhà</a></h3>
								</div>
							</div>
							<div class="cardh" style="width: 10rem;">
								<img src="assets/img/social_big/calculator.svg" class="card-img-top" alt="...">
								<div class="card-body">	
									<h3><a class="re__utility-item" href="dutruvattu.aspx" rel="nofollow">Dự trù vật tư</a></h3>
								</div>
							</div>
							<div class="cardh" style="width: 10rem;">
								<img src="assets/img/social_big/ic-feng-shui.svg" class="card-img-top" alt="...">
								<div class="card-body">	
									<h3><a class="re__utility-item" href="phongthuy.aspx" rel="nofollow">Phong thuỷ</a></h3>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/plugins.js"></script>

	<script src="assets/js/functions.js"></script>

	<script>
		$(document).ready(changeHeaderColor);
		$(window).on('resize',changeHeaderColor);

		function changeHeaderColor(){
			if (jQuery(window).width() > 991.98) {
				jQuery( "#header" ).hover(
					function() {
						if (!$(this).hasClass("sticky-header")) {
							$( this ).addClass( "hover-light" ).removeClass( "dark" );
							SEMICOLON.header.logo();
						}
						$( "#wrapper" ).addClass( "header-overlay" );
					}, function() {
						if (!$(this).hasClass("sticky-header")) {
							$( this ).removeClass( "hover-light" ).addClass( "dark" );
							SEMICOLON.header.logo();
						}
						$( "#wrapper" ).removeClass( "header-overlay" );
					}
				);
			}
		};

	</script>
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
