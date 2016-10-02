<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="COMP229_assignment01.Add" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
   <script type="text/javascript">
      $(function () {
         $("#navigationBar").children()[2].classList.add("active");
      });   </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div class="container">
      <h3>Share your recipes with others</h3>
      <div class="alert-warning">
         <p>This functionality is not implemented yet. Please come back later.</p>
      </div>
   </div>
</asp:Content>
