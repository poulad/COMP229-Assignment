<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="COMP229_assignment01.Recipes" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div class="container">
      <div class="row">
			<asp:GridView ID="GridViewRecipes" ClientIDMode="Static" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DataSourceRecipes" ForeColor="#333333" GridLines="None" CssClass="gridview" >
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="Name" HeaderText="Name"  />
					<asp:BoundField DataField="Author" HeaderText="Author" />
					<asp:BoundField DataField="Category" HeaderText="Category"  />
					<asp:BoundField DataField="CookingTime" HeaderText="Cooking Time" NullDisplayText="(Not Specified)" />
					<asp:BoundField DataField="Cuisine" HeaderText="Cuisine" />
					<asp:BoundField DataField="IsPrivate" HeaderText="Public/Private" />
					<asp:BoundField DataField="Description" HeaderText="Description" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>
			<asp:ObjectDataSource runat="server" ID="DataSourceRecipes" SelectMethod="GetRecipes" TypeName="COMP229_assignment01.Recipes"></asp:ObjectDataSource>
      </div>
   </div>

</asp:Content>
