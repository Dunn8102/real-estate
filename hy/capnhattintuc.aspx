<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="capnhattintuc.aspx.cs" Inherits="hy.capnhattintuc" %>
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
					<h1 class="page-title">CẬP NHẬT TIN TỨC</h1>

				</div>
			</div>
		</div>
	</div>
<div>
    <div class="container">
        <div class="row p-b-15">
            <div class="col-sm-6">
                <div class="card">
                    <asp:FileUpload ID="fileUploader" runat="server" CssClass="form-control" ImageUrl='<%# "../imgs/"+Eval("hinhanh") %>' CommandArgument='<%# Eval("matintuc") %>' Width="50%" Height="50%"/>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <div class="card-body">
                        <div class="form-group">
                            <label for="fileUploader">Hình Ảnh</label>
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="form-control" ImageUrl='<%# "../imgs/"+Eval("hinhanh") %>' Width="50%" Height="50%" CommandArgument='<%# Eval("matintuc") %>' />
                            <asp:TextBox ID="matintuc" runat="server" Text='<%# Eval("matintuc") %>' Height="16px" Visible="False" Width="16px" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtten">Tên tin tức</label>
                            <asp:TextBox ID="tentintuc" runat="server" CssClass="form-control" Text='<%# Eval("tentintuc") %>'  ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtmota">Nội dung</label>
                            <asp:TextBox ID="noidung" runat="server" CssClass="form-control" Text='<%# Eval("noidung") %>' Height="100px" ></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Cập nhật" OnClick="Button1_Click" CssClass="btn btn-primary" CommandArgument='<%# Eval("matintuc") %>'/>
                        
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
