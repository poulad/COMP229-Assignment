<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="COMP229_assignment01.Admins.Users" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder" runat="server">
	<div class="container">
		<div class="h1">User Management</div>
		<div class="row">
			<asp:Repeater runat="server" DataSourceID="UsersDataSource">
				<ItemTemplate>
					<div class="col-xs-6 col-md-3">
						<div class="thumbnail">
							<div class="h4 text-center"><%# Eval("UserName") %></div>
							<h5>Role:</h5>
							<div class="h5 text-center"><%# Eval("RoleName") %></div>
							<h5>Email: <%# Eval("Email") %></h5>
							<h5>Last active time:</h5>
							<h5><%# Eval("LastActivityDate") %></h5>
						</div>
					</div>
				</ItemTemplate>
			</asp:Repeater>
			<asp:ObjectDataSource runat="server" ID="UsersDataSource" TypeName="COMP229_assignment01.Admins.Users" SelectMethod="GetUsers" />
		</div>

		<div class="h1">Assign Roles to Users</div>
		<div class="row">
			<asp:DropDownList runat="server" ID="DropDownUser"/>
		</div>
	</div>
</asp:Content>
