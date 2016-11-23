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
					<dt class="h4">Author</dt>
					<dd>
						<asp:TextBox runat="server" ID="TextBoxAuthor" CssClass="form-control" />
					</dd>
					<dt>Search in</dt>
					<dd>
						<asp:RadioButton runat="server" ID="RadioButtonPublic" Text="Only Public" GroupName="publicity" Checked="True" />
					</dd>
					<dt></dt>
					<dd>
						<asp:RadioButton runat="server" ID="RadioButtonPrivate" Text="Only Private" GroupName="publicity" />
					</dd>
					<dt></dt>
					<dd>
						<asp:RadioButton runat="server" ID="RadioButtoBoth" Text="Show me both" GroupName="publicity" />
					</dd>
				</dl>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<asp:Button runat="server" ID="ButtonSearch" Text="Search" CssClass="btn btn-primary pull-right" OnClick="ButtonSearch_OnClick" />
			</div>
		</div>
		<div class="row">
			<div class="text-center">
				<asp:Label runat="server" ID="LabelMessage" CssClass="alert alert-info h5" Visible="False"></asp:Label>
			</div>
		</div>

		<div class="row">
			<asp:GridView ID="GridViewResults" ClientIDMode="Static" runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" CssClass="gridview" Visible="False">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="Name" HeaderText="Name" />
					<asp:BoundField DataField="Author" HeaderText="Author" />
					<asp:BoundField DataField="Category" HeaderText="Category" />
					<asp:BoundField DataField="CookingTime" HeaderText="Cooking Time" NullDisplayText="(Not Specified)" />
					<asp:BoundField DataField="Cuisine" HeaderText="Cuisine" />
					<asp:BoundField DataField="Description" HeaderText="Description" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#55AA55" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>
		</div>

	</div>
</asp:Content>
