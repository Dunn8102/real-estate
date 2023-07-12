<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="quanlytintuc.aspx.cs" Inherits="hy.quanlytintuc" %>
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
					<h1 class="page-title">QUẢN LÝ TIN TỨC</h1>
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
									<th style="width: 30%">Tên tin tức</th>
									<th style="width: 30%">hình ảnh</th>
									<th style="width: 10%">ngày đăng</th>
									<th style="text-align: center">Acction</th>
                                    <th>
                                        <asp:Button ID="Button3" runat="server" Text="Đăng tin mới" OnClick="Button3_Click" />
                                    </th>
								</tr>
							</thead>
							<asp:DataList ID="dataListHangListND" runat="server" OnItemCommand="dataListHangListND_ItemCommand">
								<ItemTemplate>
									<tbody>
										<tr>
											<th style="width: 30%">
												<asp:Label ID="lbusername" runat="server" Text='<%# Eval("tentintuc") %>'></asp:Label>
											</th>
											<td style="width: 30%">
												<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# "../imgs/"+Eval("hinhanh") %>' Width="50%" Height="50%" CommandArgument='<%# Eval("matintuc") %>' OnClick="ImageButton1_Click"/>
											</td>
											<td style="width: 10%">
												<asp:Label ID="lbdiachi" runat="server" Text='<%# Eval("ngaydangtin") %>'></asp:Label>
											</td>
											<td style="text-align: center; width: 30%">
                                                <asp:Button ID="Button1" runat="server" Text="Xem chi tiết tin tức" CssClass="btn btn-danger" CommandArgument='<%# Eval("matintuc") %>' OnClick="Button95_Click"/>
                                                <asp:Button ID="Button2" runat="server" Text="Chỉnh sửa tin tức" CssClass="btn btn-danger" CommandName="edit" CommandArgument='<%# Eval("matintuc") %>' OnClick="Button90_Click"/>
												<asp:Button runat="server" ID="btnXoa" Text="Xóa" CommandName="xoa" CommandArgument='<%# Eval("matintuc") %>' OnClick="btnXoa_Click" CssClass="btn btn-danger"  OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
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
