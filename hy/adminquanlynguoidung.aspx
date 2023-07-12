<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminquanlynguoidung.aspx.cs" Inherits="hy.adminquanlynguoidung" %>

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
					<h1 class="page-title">QUẢN LÝ NGƯỜI DÙNG</h1>
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
									<th style="width: 10%">Username</th>
									<th style="width: 20%">Tên người dùng</th>
									<th style="width: 15%">Địa chỉ</th>
									<th style="width: 25%">Số điện thoại</th>
									<th style="width: 10%">Email</th>
									<th style="text-align: center; width: 20%">Acction</th>

								</tr>
							</thead>
							<asp:DataList ID="dataListHangListND" runat="server" OnItemCommand="dataListHangListND_ItemCommand">
								<ItemTemplate>
									<tbody>
										<tr>
											<th style="width: 10%">
												<asp:Label ID="lbusername" runat="server" Text='<%# Eval("username") %>'></asp:Label>
											</th>
											<td style="width: 20%">
												<asp:Label ID="lbten" runat="server" Text='<%# Eval("tennguoidung") %>'></asp:Label>
											</td>
											<td style="width: 15%">
												<asp:Label ID="lbdiachi" runat="server" Text='<%# Eval("diachi") %>'></asp:Label>
											</td>
											<td style="width: 25%">
												<asp:Label ID="lbsdt" runat="server" Text='<%# Eval("sodienthoai") %>'></asp:Label>
											</td>
											<td style="width: 10%">
												<asp:Label ID="lbemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
											</td>
											<td style="text-align: center; width: 20%">
												<asp:Button runat="server" ID="btnXoa" Text="Xóa" CommandName="xoa" CommandArgument='<%# Eval("username") %>' OnClick="btnxoa_Click1" CssClass="btn btn-danger" />
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

