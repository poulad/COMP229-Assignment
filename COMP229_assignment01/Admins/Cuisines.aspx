<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Cuisines.aspx.cs" Inherits="COMP229_assignment01.Admins.Cuisines" %>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder" runat="server">
	<div class="container">
		<div class="row">
			<div class="h1">Create new cuisine</div>
			<div class="row">
				<div class="col-md-5">
					<dl class="dl-horizontal">
						<dt class="h4">Cuisine</dt>
						<dd>
							<asp:TextBox runat="server" ID="TextBoxNewCuisine" CssClass="form-control" MaxLength="50" />
						</dd>
						<dt></dt>
						<dd>
							<asp:Button runat="server" ID="ButtonCreateNewCuisine" CssClass="btn btn-primary pull-right" Text="Create Cuisine" OnClick="ButtonCreateNewCuisine_OnClick" />
						</dd>
					</dl>
				</div>
				<div class="col-md-5">
					<asp:Label runat="server" ID="LabelCreateCuisineMessage" />
					<div class="clearfix"></div>
					<asp:RequiredFieldValidator runat="server" Display="Static" ControlToValidate="TextBoxNewCuisine" ErrorMessage="Cuisine name is required" CssClass="alert alert-danger" />
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
