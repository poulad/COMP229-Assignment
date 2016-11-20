<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="COMP229_assignment01.Search" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="h3 text-center">Search for recepies</div>
				<dl class="dl-horizontal">
					<dt class="h4">Recipe Name</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxRecipeName" CssClass="form-control" />
					</dd>
					<dt class="h4">Category</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxCategory" CssClass="form-control" />
					</dd>
					<dt class="h4">Cuisine</dt>
					<dd>
						<asp:DropDownList runat="server" ID="DropDownCuisine" CssClass="dropdown form-control" DataSourceID="LinqDS" DataTextField="Name" DataValueField="Id" />
						<asp:LinqDataSource runat="server" ID="LinqDS" ContextTypeName="COMP229_assignment01.RecipeLandEntities" EntityTypeName="" Select="new (Id, Name)" TableName="Cuisines">
						</asp:LinqDataSource>
					</dd>
				</dl>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<asp:Button runat="server" ID="ButtonSearch" Text="Search" CssClass="btn btn-primary pull-right" />
			</div>
		</div>


	</div>
</asp:Content>
