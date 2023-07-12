<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminquanlybaidang.aspx.cs" Inherits="hy.adminquanlybaidang" %>
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
					<h1 class="page-title">QUẢN LÝ BẤT ĐỘNG SẢN</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
		<div class="row">
			<div class="col-md-12">
				<div class="main-card mb-3 card">
					<div>
						<table id="test" class="table table-responsive-sm">
							<thead>
								<tr>
									<th>Tên bất động sản</th>
									<th>Giá</th>
									<th>Địa chỉ</th>
									<th>Hình ảnh</th>
									<th>Diện tích</th>
									<th>Username</th>
									<th>Kiểm duyệt</th>
									<th style="text-align: center">Acction</th>

								</tr>
							</thead>
							<asp:DataList ID="dataListHangListND" runat="server" OnItemCommand="dataListHangListND_ItemCommand">
								<ItemTemplate>
									<tbody>
										<tr>
											<th style="width: 10%">
												<asp:Label ID="lbusername" runat="server" Text='<%# Eval("tenbds") %>'></asp:Label>
											</th>
											<td style="width: 15%">
												<asp:Label ID="lbten" runat="server" Text='<%# Eval("gia") %>'></asp:Label>
											</td>
											<td style="width: 15%">
												<asp:Label ID="lbdiachi" runat="server" Text='<%# Eval("diachi") %>'></asp:Label>
											</td>
											<td style="width: 30%">
												<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "../imgs/"+Eval("hinhanh") %>' Width="50%" Height="50%" CommandArgument='<%# Eval("mabds") %>' OnClick="ImageButton1_Click"/>
											</td>
											<td style="width: 10%">
												<asp:Label ID="lbdientich" runat="server" Text='<%# Eval("dientich") %>'></asp:Label>
											</td>
											<td style="width: 10%">
												<asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label>
											</td>
											<td style="width: 10%">
												<asp:Label ID="lbkiemduyet" runat="server" Text='<%# Eval("kiemduyet") %>'></asp:Label>
											</td>
											<td style="text-align: center; width: 20%">
												<asp:Button runat="server" ID="btnduyet" Text="Duyệt" CommandName="duyet" CommandArgument='<%# Eval("mabds") %>' OnClick="btnduyet_Click" CssClass="btn btn-danger"  OnClientClick="return confirm('Bạn có chắc chắn muốn duyệt?');"  />
												<asp:Button runat="server" ID="btnXoa" Text="Xóa" CommandName="xoa" CommandArgument='<%# Eval("mabds") %>' OnClick="btnXoa_Click" CssClass="btn btn-danger"  OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
											</td>
										</tr>
									</tbody>
								</ItemTemplate>
							</asp:DataList>
						</table>
						<asp:Label ID="lbTB" runat="server" Text="" />
					</div>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
