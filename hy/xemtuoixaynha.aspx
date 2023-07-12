<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="xemtuoixaynha.aspx.cs" Inherits="hy.xemtuoixaynha" %>
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
	<section id="content">
			<div class="content-wrap pb-0">


				<!-- view cart -->
				
				<!-- end view cart -->
                <h1>Phong thủy xem tuổi xây dựng, cải tạo nhà</h1>
                <form>
                    <label for="namsinh">Năm sinh của gia chủ:</label>
                    <input type="number" id="namsinh" name="namsinh">
                    <br>           
                    <label for="namdukien">Năm dự kiến khởi công:</label>
                    <input type="number" id="namdukien" name="namdukien">
                    <br>
                    <br>
            
                    <input type="button" value="Tính toán" onclick="tinhPhongThuy()">
                </form>
            
                <h2>Kết quả tính toán:</h2>
                <table>
                    <tbody id="bang-thongtin">
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
				
				<script>
					function tinhPhongThuy() {
						// Lấy thông tin từ người dùng
						let namSinh= document.getElementById("namsinh").value;
						let namDuKien = document.getElementById("namdukien").value;
				
						// Tính toán
						let can = ["Canh", "Tân", "Nhâm", "Quý", "Giáp", "Ất", "Bính", "Đinh", "Mậu", "Kỷ"];
						let chi = ["Thân", "Dậu", "Tuất", "Hợi", "Tý", "Sửu", "Dần", "Mão", "Thìn", "Tỵ", "Ngọ", "Mùi"];
						let canNamSinhPhongThuy = can[namSinh % 10];
						let chiNamSinh = chi[namSinh % 12];
						let canNamXayNha = can[namDuKien % 10];
						let chiNamXayNha = chi[namDuKien %12];
				
						// Tính Tam Tai
						let canTamTai = ["Tân", "Nhâm", "Quỳ", "Giáp", "Ất", "Bính", "Đinh", "Mậu", "Kỷ", "Canh"];
						let canNamSinhTamTai = (namSinh - 4) % 10;
						let canNamHienTai = (new Date().getFullYear() - 4) % 10;
						let canKiemTra = (canNamHienTai + 6) % 10;
						let tamTai = "";
						if (canNamSinhTamTai === canKiemTra) {
							tamTai = "Tam Tai";
						} else {
							tamTai = canTamTai[canKiemTra];
						}

						let noixamhaha = ["việc chọn ngày, giờ, tháng năm xây nhà không tốt, nhất là vi phạm các cấm kỵ Phong Thuỷ thì làm giảm sự tốt đẹp của Phong Thuỷ ngôi nhà","Việc chọn thời điểm xây nhà là vô cùng quan trọng. Khi đã chọn được vị trí tốt để xây nhà, thiết kế hướng và các yếu tố trong ngôi nhà phù hợp","việc lựa chọn thời điểm xây dựng, tức ngày, giờ, tháng năm tốt sẽ khiến cho Phong Thuỷ nhà ở đã tốt càng tốt hơn gấp bội","gia chủ sẽ nhanh chóng thịnh vượng, tài vận hanh thông","năm xây nhà là năm 2030, tức năm Canh Tuất, không nên tiến hành xây dựng, sửa chữa nhà cửa vì tuổi của gia chủ đã phạm phải Kim Lâu hoặc Hoang Ốc","Nếu do yêu cầu bắt buộc phải xây nhà trong năm nay, cũng có thể tiến hành mượn tuổi của những người nam giới sinh năm 1961; 1963; 1964; 1970; 1972; 1973; 1979; 1982; 1988; 1991; 1997; 2000; 2006; 2009; 2011; 2015; 2018;","Trường hợp này, năm xây nhà là năm 2025, tức năm Ất Tị, không nên tiến hành xây dựng,","Nếu do yêu cầu bắt buộc phải xây nhà trong năm nay, cũng có thể tiến hành mượn tuổi của những người nam giới sinh năm 1956; 1958; 1959; 1965; 1967; 1968; 1974; 1977","Nếu được thì nên chọn những người đứng tuổi, thọ, phúc lộc dồi dào, con cháu đông là tốt nhất. Tuy nhiên cần nhớ rằng, việc mượn tuổi để xây nhà là một biện pháp thiên nhiều về tâm lý,","Trước khi làm nhà, gia chủ làm giấy tờ bán nhà tượng trưng cho người mượn tuổi","Khi Nhập trạch, người mượn tuổi làm nốt các thủ tục dâng hương, khấn thành, rồi bàn giao lại nhà cho gia chủ."];
						let noixam1 = noixamhaha[namSinh % 10];
						let chuyenxamlo = ["Tuổi Hợi, Mão, Mùi: gặp các năm Tỵ - Ngọ - Mùi.","Tuổi Tỵ, Dậu, Sửu: gặp các năm Hợi - Tý - Sửu.","Tuổi Thân, Tý, Thìn: gặp các năm Dần - Mão - Thìn.","Tuổi Dần, Ngọ, Tuất: bị hạn liên tiếp trong 3 năm Thân - Dậu - Tuất."];
						let noixam2 = chuyenxamlo[namDuKien % 4];
				
						// Hiển thị kết quả
						let bangThongTin = document.getElementById("bang-thongtin");
						bangThongTin.innerHTML = "";
						let tr1 = document.createElement("tr");
						let td1 = document.createElement("td");
						td1.innerText = "Năm sinh của gia chủ:";
						let td2 = document.createElement("td");
						td2.innerText = canNamSinhPhongThuy + " " + chiNamSinh;
						tr1.appendChild(td1);
						tr1.appendChild(td2);
						bangThongTin.appendChild(tr1);
				
						let tr2 = document.createElement("tr");
						let td3 = document.createElement("td");
						td3.innerText = "Năm dự kiến khởi công:";
						let td4 = document.createElement("td");
						td4.innerText = canNamXayNha + " " + chiNamXayNha;
						tr2.appendChild(td3);
						tr2.appendChild(td4);
						bangThongTin.appendChild(tr2);
				
						let tr3 = document.createElement("tr");
						let td5 = document.createElement("td");
						td5.innerText = "Tam Tai của năm hiện tại:";
						let td6 = document.createElement("td");
						td6.innerText = tamTai;
						tr3.appendChild(td5);
						tr3.appendChild(td6);
						bangThongTin.appendChild(tr3);

						let tr4 = document.createElement("tr");
						let td8 = document.createElement("td");
						td8.innerText = "Thông tin về việc xây nhà:";
						let td9 = document.createElement("td");
						td9.innerText = noixam1;
						tr4.appendChild(td8);
						tr4.appendChild(td9);
						bangThongTin.appendChild(tr4);

						let tr5 = document.createElement("tr");
						let td10 = document.createElement("td");
						td10.innerText = "Tam Tai:";
						let td11 = document.createElement("td");
						td11.innerText = noixam2;
						tr5.appendChild(td10);
						tr5.appendChild(td11);
						bangThongTin.appendChild(tr5);
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
