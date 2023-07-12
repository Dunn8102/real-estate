<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="phongthuy.aspx.cs" Inherits="hy.phongthuy" %>
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
	<link rel="stylesheet" href="assets/g.css">

	<!-- Store Demo Specific Stylesheet -->
	<link rel="stylesheet" href="assets/css/fonts.css" type="text/css" /> <!-- Store Theme Font -->
	<link rel="stylesheet" href="assets/css/store.css" type="text/css" /> <!-- Store Theme Custom CSS --> <!-- Store Theme Custom CSS -->
	
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
	<section id="">
			<div class="content-wrap pb-0">


				<!-- view cart -->
				
				<!-- end view cart -->
                <h1>Xem phong thủy</h1>
	
		<label for="namsinh">Năm sinh:</label>
		<input type="number" id="namsinh" name="namsinh">
		<br>
		<label for="gioitinh">Giới tính:</label>
		<select id="gioitinh" name="gioitinh">
			<option value="nam">Nam</option>
			<option value="nu">Nữ</option>
		</select>
		<br>
		<label for="huongnha">Hướng nhà:</label>
		<select id="huongnha" name="huongnha">
			<option value="dong">Đông</option>
			<option value="tay">Tây</option>
			<option value="nam">Nam</option>
			<option value="bac">Bắc</option>
		</select>
		<br>
		<input type="button" value="Tính toán" onclick="xemPhongThuy()">
	</>
	<h2>Kết quả phong thủy</h2>
	<table>

	</table>
	<script>
		function xemPhongThuy() {
			// Lấy giá trị từ các trường nhập liệu
			var namSinh = document.getElementById("namsinh").value;
			var gioiTinh = document.getElementById("gioitinh").value;
			var huongNha = document.getElementById("huongnha").value;

			// Kiểm tra giá trị nhập vào
			if (namSinh == "" || gioiTinh == "" || huongNha == "") {
				alert("Vui lòng nhập đầy đủ thông tin");
				return;
			}

			// Tính toán phong thủy
			var tuoi = new Date().getFullYear() - namSinh;
			var can = ["Canh", "Tân", "Nhâm", "Quý", "Giáp", "Ất", "Bính", "Đinh", "Mậu", "Kỷ"][namSinh % 10];
			var chi = ["Thân", "Dậu", "Tuất", "Hợi", "Tý", "Sửu", "Dần", "Mão", "Thìn", "Tỵ", "Ngọ", "Mùi"][namSinh % 12];
			var menh = "";
			if (huongNha == "dong") {
				menh = gioiTinh == "nam" ? "Mộc" : "Tỵ";
			} else if (huongNha == "tay") {
				menh = gioiTinh == "nam" ? "Hoả" : "Thủy";
			} else if (huongNha == "nam") {
				menh = gioiTinh == "nam" ? "Thổ" : "Mộc";
			} else if (huongNha == "bac") {
				menh = gioiTinh == "nam" ? "Kim" : "Thủy";
			}

            var huongtot = ["Tây Bắc (Sinh Khí); Đông Bắc (Diên Niên); Tây Nam (Thiên Y); Tây (Phục Vị)",
                "Tây Bắc (Phục Vị); Đông Bắc (Thiên Y); Tây Nam (Diên Niên); Tây (Sinh Khí);",
                "Tây Bắc (Diên Niên); Đông Bắc (Sinh Khí); Tây Nam (Phục Vị); Tây (Thiên Y)",
                "Bắc (Tuyệt Mệnh); Đông (Hoạ Hại); Đông Nam (Ngũ Quỷ); Nam (Lục Sát);",
                "Bắc (Sinh Khí); Đông (Diên Niên); Tây Nam (Diên Niên); Nam (Thiên Y);",
                "Bắc (Sinh Khí); Đông (Diên Niên); Đông Nam (Phục Vị); Nam (Thiên Y);",
                "Bắc (Thiên Y); Đông (Phục Vị); Đông Nam (Diên Niên); Nam (Sinh Khí);",
                "Tây Bắc (Ngũ Quỷ); Đông Bắc (Lục Sát); Tây Nam (Hoạ Hại); Tây (Tuyệt Mệnh);",
                "Tây Bắc (Diên Niên); Đông Bắc (Sinh Khí); Tây Nam (Phục Vị); Tây (Thiên Y);",
                "Bắc (Tuyệt Mệnh); Đông (Phục Vị); Đông Nam (Ngũ Quỷ); Nam (Lục Sát);"][namSinh % 10];
            var huongxau = ["Tây Bắc (Thiên Y); Đông Bắc (Phục Vị); Tây Nam (Sinh Khí); Tây (Diên Niên);",
                "Bắc (Ngũ Quỷ); Đông (Lục Sát); Đông Nam (Tuyệt Mệnh); Nam (Hoạ Hại);",
                "Tây Bắc (Phục Vị); Đông Bắc (Thiên Y); Tây Nam (Diên Niên); Tây (Diên Niên);",
                "Bắc (Lục Sát); Đông (Ngũ Quỷ); Đông Nam (Hoạ Hại); Nam (Tuyệt Mệnh);",
                "Tây Bắc (Sinh Khí); Đông Bắc (Diên Niên); Tây Nam (Thiên Y); Tây (Phục Vị);",
                "Bắc (Hoạ Hại); Đông (Tuyệt Mệnh); Đông Nam (Lục Sát); Nam (Ngũ Quỷ);",
                "Tây Bắc (Thiên Y); Đông Bắc (Phục Vị); Tây Nam (Diên Niên); Tây (Diên Niên);",
                "Bắc (Ngũ Quỷ); Đông (Lục Sát); Tây Nam (Phục Vị); Nam (Hoạ Hại);",
                "Bắc (Diên Niên); Đông (Sinh Khí); Đông Nam (Thiên Y); Nam (Phục Vị);",
                "Tây Bắc (Tuyệt Mệnh); Đông Bắc (Hoạ Hại); Tây Nam (Lục Sát); Tây (Ngũ Quỷ);"][namSinh % 10];

            var loikhuyen = ["Rất tiếc, hướng cửa chính (quay về hướng Lục Sát) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Quan niệm phong thuỷ cho rằng, môn mệnh phải tương phối (nghĩa là hướng cửa chính và mệnh của chủ nhà phải hợp với nhau, thì vượng khí mới tốt, gia chủ mới phát tài.",
                "Rất tiếc, hướng cửa chính (quay về hướng Ngũ Quỷ) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Rất tiếc, hướng cửa chính (quay về hướng Hoạ Hại) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Rất tiếc, hướng cửa chính (quay về hướng Lục Sát) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Rất tiếc, hướng cửa chính (quay về hướng Tuyệt Mệnh) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Quan niệm phong thuỷ cho rằng, môn mệnh phải tương phối (nghĩa là hướng cửa chính và mệnh của chủ nhà phải hợp với nhau, thì vượng khí mới tốt, gia chủ mới phát tài.",
                "Rất tiếc, hướng cửa chính (quay về hướng Hoạ Hại) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Rất tiếc, hướng cửa chính (quay về hướng Hạ Quỷ) không hợp với tuổi của quý khách. Nhưng xin chớ quá lo lắng, có thể khắc phục bằng các cách sau:",
                "Quan niệm phong thuỷ cho rằng, môn mệnh không phải tương phối (nghĩa là hướng cửa chính và mệnh của chủ nhà không phải không hợp, mà nói không hợp thì cũng không phải, phải nói là cực kì bình thường."][namSinh % 10];

            var cach1 = ["+ Cách 1: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng Bắc (hướng Phục Vị).",
                "Trường hợp của quý khách hoàn toàn thoả mãn Môn mệnh tương phối, nghĩa là hướng cửa chính rất lý tưởng.",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng Bắc (hướng Thiên Y).",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng Bắc (hướng Sinh Khí).",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng Đông Bắc (hướng Phục Vị).",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng (hướng ).",
                "Trường hợp của quý khách hoàn toàn thoả mãn Môn mệnh tương phối, nghĩa là hướng cửa chính rất lý tưởng.",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng Bắc (hướng Sinh Khí).",
                "+ Cách thứ nhất: Chuyển hướng cửa hoặc thêm cửa phụ thứ hai ở trong nhà theo hướng (hướng ).",
                "Trường hợp của quý khách hoàn toàn thoả mãn Môn mệnh tương phối, nghĩa là hướng cửa chính rất lý tưởng."][namSinh % 10];

            var cach2 = ["+ Cách 2: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Tây Bắc, có tà khí của Kim. Có thể trải thảm màu hoặc",
                "Có thể đổi sang hướng nam tay hoặc không tại vị rất tốn chi phí, hãy dùng chi phí đó để mua bánh ăn hợp lý hơn",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Tây Bắc, có tà khí của Kim. Có thể trải thảm màu Lam hoặc Xám",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Đông, có tà khí của Mộc. Có thể trải thảm màu Hồng hoặc Tím",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Đông Nam, có tà khí của Mộc. Có thể trải thảm màu Hồng hoặc Tím",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Tây Nam, có tà khí của thổ. Có thể trải thảm màu Cam hoặc Đỏ",
                "thiên thời địa lợi nhưng mà đói quá phải ăn miếng bánh đã, năng mưa là chuyện của ông trời còn chuyện của mình là ăn với ngủ, coi bói làm giề",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Đông, có tà khí của Hỏa. Có thể trải thảm màu Vàng hoặc Xanh",
                "+ Cách thứ hai: Dùng màu sắc của thảm trải trước cửa để hoá giải tà khí theo quy luật ngũ hành tương sinh, tương khắc: Nhà quay về hướng Tây, có tà khí của Kim. Có thể trải thảm màu Đỏ hoặc Tím",
                "Vậy nên ăn nhiều vào và xem bói ích thoi, nên ngủ nhiều chút để tốt cho sức khỏe, thức khuya quánh game hoài mà xem bói gì, đói lắm ròi đây"][namSinh % 10];
			// Hiển thị kết quả phong thủy
			var table = document.querySelector("table");
			table.innerHTML = "";
			var row = table.insertRow(0);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			cell1.innerHTML = "Tuổi của bạn là";
			cell2.innerHTML = tuoi + " tuổi";
			row = table.insertRow(1);
			cell1 = row.insertCell(0);
            cell2 = row.insertCell(1);
			cell1.innerHTML = "Mệnh của bạn là";
			cell2.innerHTML = menh;
			row = table.insertRow(2);
			cell1 = row.insertCell(0);
			cell2 = row.insertCell(1);
			cell1.innerHTML = "Hướng tốt:";
            cell2.innerHTML = huongtot;
            row = table.insertRow(3);
            cell1 = row.insertCell(0);
			cell2 = row.insertCell(1);
			cell1.innerHTML = "Hướng xấu:";
            cell2.innerHTML = huongxau;

            row = table.insertRow(4);
            cell1 = row.insertCell(0);
			cell2 = row.insertCell(1);
			cell1.innerHTML = "Lời khuyên";
            cell2.innerHTML = loikhuyen;

            row = table.insertRow(5);
            cell1 = row.insertCell(0);
			cell2 = row.insertCell(1);
			cell1.innerHTML = "   ";
            cell2.innerHTML = cach1;

            row = table.insertRow(6);
            cell1 = row.insertCell(0);
			cell2 = row.insertCell(1);
			cell1.innerHTML = "   ";
            cell2.innerHTML = cach2;
		}
	</script>
	
				<div class="clear"></div>

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
