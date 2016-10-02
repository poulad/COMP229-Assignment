<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="COMP229_assignment01.Recipes" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
   <script type="text/javascript">
      $(function () {
         $("#navigationBar").children()[1].classList.add("active");
      });
   </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div class="container">
      <h3>Recipes will show up here. Soon!</h3>
      <div class="alert-warning">
         <p>This functionality is not implemented yet. Please come back later.</p>
      </div>

   </div>

</asp:Content>
