<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="COMP229_assignment01.Add" MasterPageFile="MasterPage.master" %>

<%@ Register TagPrefix="formControl" TagName="FormInput" Src="FormInput.ascx" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
	<script type="text/javascript">
		$(function () {
			$("#navigationBar").children()[2].classList.add("active");
		});
	</script>
</asp:Content>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
	<div class="container">
			<div class="col-md-6 col-md-push-3">
				<div class="h3 text-center">Add your recepies</div>
				<dl class="dl-horizontal">
					<formControl:FormInput runat="server" Text="Recipe Name" />
					<formControl:FormInput runat="server" Text="Submitted By" />
					<dt class="h4">Category</dt>
					<dd>
						<asp:DropDownList runat="server" CssClass="dropdown form-control" />
					</dd>
					<formControl:FormInput runat="server" Text="Cooking Time" />
					<formControl:FormInput runat="server" Text="Portions" />
					<dt class="h4">Cuisine</dt>
					<dd>
						<asp:DropDownList runat="server" CssClass="dropdown form-control" />
					</dd>
					<dt></dt>
					<dd>
						<asp:CheckBox runat="server" Text="Mark as Private" CssClass="h4" />
					</dd>
					<dt class="h4">Description</dt>
					<dd>
						<asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
					</dd>
					<dt></dt>
					<dd>
						<asp:Button runat="server" Text="Submit" CssClass="btn btn-default pull-right" /></dd>
				</dl>
			</div>
	</div>
</asp:Content>
