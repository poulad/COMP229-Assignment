<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="COMP229_assignment01.Admins.Users" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder" runat="server">

	<div class="container">
		<div class="h1">User Management</div>
		<div class="row">
			<asp:Repeater runat="server" ID="RepeaterUsers" DataSourceID="UsersDataSource">
				<ItemTemplate>
					<div class="col-xs-6 col-md-3" style="height: 200px;">
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

		<div class="h1">Create new user</div>
		<div class="row">
			<div class="col-md-5">
				<dl class="dl-horizontal">
					<dt class="h4">User Name</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewUserName" CssClass="form-control" MaxLength="256" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createuser" ControlToValidate="TextBoxNewUserName" ErrorMessage="User name is required" />
					</dd>
					<dt class="h4">Password</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewPassword" TextMode="Password" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createuser" ControlToValidate="TextBoxNewPassword" ErrorMessage="Password is required" />
					</dd>
					<dt class="h4">Email</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewEmail" TextMode="Email" CssClass="form-control" MaxLength="256" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createuser" ControlToValidate="TextBoxNewEmail" ErrorMessage="Email is required" />
					</dd>
					<dt class="h4">Security Question</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewSecurityQuestion" CssClass="form-control" MaxLength="256" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createuser" ControlToValidate="TextBoxNewSecurityAnswer" ErrorMessage="Security question is required" />
					</dd>
					<dt class="h4">Security Answer</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewSecurityAnswer" CssClass="form-control" MaxLength="128" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createuser" ControlToValidate="TextBoxNewSecurityAnswer" ErrorMessage="Security answer is required" />
					</dd>
					<dt></dt>
					<dd>
						<div class="clearfix"></div>
						<asp:Button runat="server" ID="ButtonCreateUser" CssClass="btn btn-primary pull-right" Text="Create user" ValidationGroup="createuser" OnClick="ButtonCreateUser_OnClick" />
						<div class="clearfix"></div>
					</dd>
				</dl>
			</div>

			<div class="col-md-5">
				<asp:Label runat="server" ID="LabelNewUserMessage" />
				<div class="clearfix"></div>
				<asp:ValidationSummary runat="server" ValidationGroup="createuser" CssClass="alert alert-danger" DisplayMode="List" />
			</div>
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
					</dd>
					<dt></dt>
					<dd class="text-center">
						<div class="clearfix"></div>
						<asp:Button runat="server" ID="ButtonRemoveRole" CssClass="btn btn-danger" Text="Remove Role" OnClick="ButtonRemoveRole_OnClick" ValidationGroup="roles" />
						<asp:Button runat="server" ID="ButtonAssignRole" CssClass="btn btn-success" Text="Assign Role" ValidationGroup="roles" OnClick="ButtonAssignRole_OnClick" />
					</dd>
				</dl>
			</div>

			<div class="col-md-5">
				<br />
				<asp:Label runat="server" ID="LabelRoleMessage" Visible="False" />
				<div class="clearfix"></div>
				<asp:RequiredFieldValidator runat="server" ID="RequiredTextBoxRole" ControlToValidate="TextBoxRole" CssClass="alert alert-warning" Display="Dynamic" ErrorMessage="Write the Role in the box" ValidationGroup="roles" />
			</div>
		</div>
		
		<div class="h1">Create new role</div>
		<div class="row">
			<div class="col-md-5">
				<dl class="dl-horizontal">
					<dt class="h4">Role name</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxNewRoleName" CssClass="form-control" MaxLength="256" />
						<asp:RequiredFieldValidator runat="server" Display="None" ValidationGroup="createrole" ControlToValidate="TextBoxNewRoleName" ErrorMessage="Role name is required" />
					</dd>
					<dt></dt>
					<dd>
						<div class="clearfix"></div>
						<asp:Button runat="server" ID="ButtonCreateNewRole" CssClass="btn btn-primary pull-right" Text="Create Role" ValidationGroup="createrole" OnClick="ButtonCreateNewRole_OnClick" />
						<div class="clearfix"></div>
					</dd>
				</dl>
			</div>

			<div class="col-md-5">
				<asp:Label runat="server" ID="LabelCreateRoleMessage" />
				<div class="clearfix"></div>
				<asp:ValidationSummary runat="server" ValidationGroup="createrole" CssClass="alert alert-danger" DisplayMode="List" />
			</div>
		</div>

	</div>

</asp:Content>
