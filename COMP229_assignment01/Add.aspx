<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="COMP229_assignment01.Add" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="h3 text-center">Add your recepies</div>
				<dl class="dl-horizontal">
					<dt class="h4 input-required">Recipe Name</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxRecipeName" CssClass="form-control" />
					</dd>
					<dt class="h4 input-required">Author</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxAuthor" CssClass="form-control" />
					</dd>
					<dt class="h4 input-required">Category</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxCategory" CssClass="form-control" />
					</dd>
					<dt class="h4">Cooking time</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxCookingTime" CssClass="" />
						minutes
					</dd>
					<dt class="h4 input-required">Cuisine</dt>
					<dd>
						<asp:DropDownList runat="server" ID="DropDownCuisine" CssClass="dropdown form-control" DataSourceID="LinqDS" DataTextField="Name" DataValueField="Id" />
						<asp:LinqDataSource runat="server" ID="LinqDS" ContextTypeName="COMP229_assignment01.RecipeLandEntities" EntityTypeName="" Select="new (Id, Name)" TableName="Cuisines">
						</asp:LinqDataSource>
					</dd>
					<dt></dt>
					<dd>
						<asp:CheckBox runat="server" ID="CheckBoxIsPrivate" Text="Mark as Private" CssClass="" />
					</dd>
					<dt class="h4 input-required">Description</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxDescription" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
					</dd>
				</dl>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<asp:Button runat="server" ID="ButtonSubmit" Text="Submit" CssClass="btn btn-primary pull-right" OnClick="ButtonSubmit_OnClick" />
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<asp:Label runat="server" ID="LabelMessage" CssClass="" />
			</div>
		</div>

		<div class="row">
			<asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxRecipeName" ErrorMessage="Recipe name is required" Display="None" />
			<asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxRecipeName" ErrorMessage="Recipe name is too long" ValidationExpression="^(?:\w| ){1,60}$" Display="None" />
			<asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxAuthor" ErrorMessage="Author name is required" Display="None" />
			<asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxAuthor" ErrorMessage="Author name is too long" ValidationExpression="^\w{1,100}$" Display="None" />
			<asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxCategory" ErrorMessage="Category is required" Display="None" />
			<asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxCategory" ErrorMessage="Category name is too long" ValidationExpression="^\w{1,50}$" Display="None" />
			<asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxCookingTime" ErrorMessage="Cooking time should be 1 minute or more" ValidationExpression="^[1-9]\d*$" Display="None" />
			<asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxDescription" ErrorMessage="Description is required" Display="None" />
			<asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
		</div>
	</div>
</asp:Content>
