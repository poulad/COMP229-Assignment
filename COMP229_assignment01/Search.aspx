<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="COMP229_assignment01.Search" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
   <script type="text/javascript">
      $(function () {
         $("#navigationBar").children()[3].classList.add("active");
      });   </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div class="container">
      <h3>Search Term:</h3>
      <h4><asp:Label ID="searchTerm" runat="server"></asp:Label></h4>
      <div class="alert-warning">
         <p>This functionality is not implemented yet. Please come back later.</p>
      </div>
   </div>
</asp:Content>
