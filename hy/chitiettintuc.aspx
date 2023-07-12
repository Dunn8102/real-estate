<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="chitiettintuc.aspx.cs" Inherits="hy.chitiettintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
	<link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link
		href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">CHI TIẾT TIN TỨC</h1>

				</div>
			</div>
		</div>
	</div>
<div>
    <div class="container">
        <div class="row p-b-15">
            <div class="col-sm-6">
                <div class="card">
                    
                    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <div class="card">
            <img class="card-img-top" src='<%# "../imgs/" + Eval("hinhanh") %>' alt="Card image cap">
            <div class="card-body">
                <h5 class="card-header"><%# Eval("tentintuc") %></h5>
                <div class="form-group">
                    <label for="txtten">Mã tin tức</label>
                    <asp:TextBox ID="TextBo7x1" runat="server" CssClass="form-control" Text='<%# Eval("matintuc") %>' Enabled="False" />
                </div>
                <div class="form-group">
                    <label for="txteten">Ngày đăng tin</label>
                    <asp:TextBox ID="TextBo2x1" runat="server" CssClass="form-control" Text='<%# Eval("ngaydangtin") %>' Enabled="False" />
                </div>
                <div class="card-text">
                    <div class="form-group">
                        <label for="txtmota">Nội dung</label>
                        <asp:TextBox ID="noidung" runat="server" CssClass="form-control" Text='<%# Eval("noidung") %>' Height="100px" Enabled="False"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <asp:Button ID="Button1" runat="server" Text="Quay trở lại" CssClass="btn btn-secondary" OnClick="Button1_Click" CommandArgument='<%# Eval("matintuc") %>' />
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
                    
                    
                    <asp:Label ID="lbthongbao" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>
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
</asp:Content>
