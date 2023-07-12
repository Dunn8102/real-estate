<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dutruvattu.aspx.cs" Inherits="hy.dutruvattu" %>
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
	<div id="wrapper" class="clearfix">
		<!-- Header
		============================================= --
		<!-- Content -->
		<section id="content">
			<div class="content-wrap pb-0">

				<!-- Login/Register Modal -->
				
				<!-- end Login/Register Modal  -->

				<!-- view cart -->
				
				<!-- end view cart -->
                <h1>Dự Trù Vật Tư</h1>
                <form>
                    <br>
            
                    <label for="chieudai">Chiều dài (m):</label>
                    <input type="number" id="chieudai" name="chieudai">
                    <br>
            
                    <label for="chieurong">Chiều rộng (m):</label>
                    <input type="number" id="chieurong" name="chieurong">
                    <br>
            
                    <label for="chieucao">Chiều Cao:</label>
                    <input type="number" id="chieucao" name="chieucao">
                    <br>
            
                    <label for="sannha">Sàn Nhà:</label>
                    <select id="sannha">
                        <option value="gach30">Sàn lát gạch 30x30</option>
                        <option value="gach40">Sàn lát gạch 40x40</option>
                        <option value="sango">Sàn lát gạch 50x50</option>
                    </select>
                    <br>
            
                    <label for="cuaphong">Cửa Phòng:</label>
                    <select id="cuaphong">
                        <option value="1cua">1 cửa đi</option>
                        <option value="cocuaso">1 cửa đi và 1 cửa sổ</option>
                        <option value="3cua">1 cửa đi và 2 cửa sổ</option>
                    </select>
                    <br>
            
                    <input type="button" value="Xem Kết Quả" onclick="showkq()">
                </form>
            
                <h2>Kết quả:</h2>
                <table>
                    <tbody id="bang-ketqua">
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
            
                <script>
                    function showkq() {
                        var chieuDai = document.getElementById("chieudai").value;
                        var chieuRong = document.getElementById("chieurong").value;
                        var chieuCao = document.getElementById("chieucao").value;
                        var Sannha = document.getElementById("sannha").value;
                        var Cua = document.getElementById("cuaphong").value;
            
                        var cua = [
                            { ten: "1 cửa đi" },
                            { ten: "1 cửa đi và 1 cửa sổ" },
                            { ten: "1 cửa đi và 2 cửa sổ" },
					];
            
                        var dientichphong = chieuDai * chieuRong;
						var tinhvuatran = dientichphong * 0.015 * 1.2;
						var tinhsobaotran =tinhvuatran/0.033 ;
						var sokgximangtran = tinhsobaotran* 50;
						var cattran = sokgximangtran * 5/6;

						var tinhvuasan = dientichphong * 0.02 * 1.2;
						var tinhsobaosan =tinhvuasan/0.033 ;
						var sokgximangsan = tinhsobaosan* 50;
						var catsan = sokgximangsan * 5/6;


						for (var i = 0; i < cua.length; i++) {
							var dientichtuong =1;
							switch(cua[i].ten){
								case "1 cửa đi":
									dientichtuong = (chieuDai * chieuRong * 4)-(2*0.9);
								break;
								case "1 cửa đi và 1 cửa sổ":
									dientichtuong = (chieuDai * chieuRong * 4)-(2*0.9)-(0.5*0.4);
								break;
								case "1 cửa đi và 2 cửa sổ":
									dientichtuong = (chieuDai * chieuRong * 4)-(2*0.9)-(0.5*0.4*2);
								break;
							}
						}
						var tinhvuatuong = dientichtuong * 0.02 * 1.2;
						var tinhsobaotuong =tinhvuatuong/0.033 ;
						var sokgximangtuong = tinhsobaotuong* 50;
						var cattuong = sokgximangtuong * 5/6;
						
						var gachsan = [
                            { ten: "Sàn lát gạch 30x30" },
                            { ten: "Sàn lát gạch 40x40" },
                            { ten: "Sàn lát gạch 50x50" },
					];
						for (var i = 0; i < gachsan.length; i++) {
							
							switch(gachsan[i].ten){
								case "Sàn lát gạch 30x30":
									soviengachchieudai = chieuDai/0.3;
									soviengachchieurong =chieuRong/0.3;
								break;
								case "Sàn lát gạch 40x40":
									soviengachchieudai = chieuDai/0.4;
									soviengachchieurong =chieuRong/0.4;
								break;
								case "Sàn lát gạch 50x50":
								soviengachchieudai = chieuDai/0.5;
									soviengachchieurong =chieuRong/0.5;
								break;
							}
						}
						var tonggachsan= soviengachchieudai*soviengachchieurong;
                        //hiển thị thông tin
                        let bangThongTin = document.getElementById("bang-ketqua");
						bangThongTin.innerHTML = "";
						let tr1 = document.createElement("tr");
						let td1 = document.createElement("td");
						td1.innerText = "Định mức cấp phối vật liệu cho căn phòng với các kích thước:";
						let td2 = document.createElement("td");
						td2.innerText = "Chiều Dài: "+chieuDai+" m\nChiều Rộng: "+chieuRong+" m\nChiều Cao: "+chieuCao+" m\nDiện Tích: "+dientichphong+" m²";
						tr1.appendChild(td1);
						tr1.appendChild(td2);
						bangThongTin.appendChild(tr1);
						
						let tr2 = document.createElement("tr");
						let td3 = document.createElement("td");
						td3.innerText = "Định mức vữa xi măng trát trần:";
						let td4 = document.createElement("td");
						td4.innerText = "Vữa xi măng mác 50 dày 1.5cm, trát trên diện tích "+dientichphong+"m² , tương ứng với "+tinhvuatran+" m³ vữa.\nĐể trộn được khối lượng vữa này cần:\n- Số xi măng cần sẽ là "+sokgximangtran+" kg. \n- Cần "+cattran+" m³ cát.";
						tr2.appendChild(td3);
						tr2.appendChild(td4);
						bangThongTin.appendChild(tr2);

						let tr3 = document.createElement("tr");
						let td5 = document.createElement("td");
						td5.innerText = "Định mức vữa xi măng láng sàn:";
						let td6 = document.createElement("td");
						td6.innerText = "Vữa xi măng mác 50 dày 2cm, trát trên diện tích "+dientichphong+"m² , tương ứng với "+tinhvuasan+" m³ vữa.\nĐể trộn được khối lượng vữa này cần:\n- Số xi măng cần sẽ là "+sokgximangsan+" kg.\n- Cần "+catsan+" m³ cát.";
						tr3.appendChild(td5);
						tr3.appendChild(td6);
						bangThongTin.appendChild(tr3);

						let tr4 = document.createElement("tr");
						let td7 = document.createElement("td");
						td7.innerText = "Định mức vữa xi măng trát tường:";
						let td8 = document.createElement("td");
						td8.innerText = "Vữa xi măng mác 50 dày 1.5cm, trát trên diện tích "+dientichtuong+"m² , tương ứng với "+tinhvuatuong+" m³ vữa.\nĐể trộn được khối lượng vữa này cần:\n- Số xi măng cần sẽ là "+sokgximangtuong+" kg. \n- Cần "+cattuong+" m³ cát.";
						tr4.appendChild(td7);
						tr4.appendChild(td8);
						bangThongTin.appendChild(tr4);

						let tr5 = document.createElement("tr");
						let td9 = document.createElement("td");
						td9.innerText = "Định mức lát sàn:";
						let td10 = document.createElement("td");
						td10.innerText = "Để lát kín trên diện tích "+dientichphong+"m² cần: \n - "+tonggachsan+" viên \n - Chiều dài phong là "+chieuDai+"m cần "+soviengachchieudai+" viên\n - Chiều rộng phòng la "+chieuRong+"m cần "+soviengachchieurong+" viên";
						tr5.appendChild(td9);
						tr5.appendChild(td10);
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
									<h3><a class="re__utility-item " href="phongthuy.aspx" rel="nofollow">Xem tuổi xây nhà</a></h3>
								</div>
							</div>
							<div class="cardh" style="width: 10rem;">
								<img src="assets/img/social_big/ic-house.svg" class="card-img-top" alt="...">
								<div class="card-body">	
									<h3><a class="re__utility-item" href="xemtuoixaynha.aspx" rel="nofollow">Chi phí làm nhà</a></h3>
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
		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- JavaScripts
	============================================= -->
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
