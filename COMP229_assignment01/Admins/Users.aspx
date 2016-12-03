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

		<div class="h1">User role assignment</div>
		<div class="row">
			<div class="col-md-5">
				<dl class="dl-horizontal">
					<dt class="h4">User</dt>

					<dd>
						<asp:DropDownList runat="server" ID="DropDownUser" AutoPostBack="True" DataSourceID="UserNamesDataSource" DataTextField="UserName" DataValueField="UserId" CssClass="form-control" />
						<asp:LinqDataSource ID="UserNamesDataSource" runat="server" ContextTypeName="COMP229_assignment01.RecipeLandEntities" EntityTypeName="" Select="new (UserName, UserId)" TableName="aspnet_Users">
						</asp:LinqDataSource>
					</dd>

					<dt class="h4">Role</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxRole" CssClass="form-control"></asp:TextBox>
						<div class="clearfix"></div>

						<div class="clearfix"></div>
					</dd>
					<dt></dt>
					<dd>
						<div class="clearfix"></div>
						<asp:Button runat="server" ID="ButtonAssignRole" CssClass="btn btn-default pull-right" Text="Assign Role" OnClick="ButtonAssignRole_OnClick" />
					</dd>
				</dl>
			</div>

			<div class="col-md-5">
				<br />
				<asp:Label runat="server" ID="LabelRoleMessage" Visible="False" />
				<div class="clearfix"></div>
				<asp:RequiredFieldValidator runat="server" ID="RequiredTextBoxRole" ControlToValidate="TextBoxRole" CssClass="alert alert-warning" Display="Dynamic" ErrorMessage="Assign to what role?!" />
			</div>
		</div>

	</div>

</asp:Content>
