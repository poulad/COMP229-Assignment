<%@ Page Inherits="COMP229_assignment01.Default" Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeBehind="Default.aspx.cs" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div class="container-fluid header">
      <span class="text-uppercase h2 center-block">Welcome to my Recepies web application</span>
   </div>

   <div class="container">
      <div class="col-xs-6 col-sm-4">
         <img class="img-responsive" src="Content/images/recepies.svg" />
         <p>View all the <span class="text-uppercase">Recepeis</span> available on the website</p>
      </div>
      <div class="col-xs-6 col-sm-4">
         <img class="img-responsive" src="Content/images/add.svg" />
         <p>View all the <span class="text-uppercase">Recepeis</span> available on the website</p>
      </div>
      <div class="col-xs-6 col-sm-4">
         <img class="img-responsive" src="Content/images/search.svg" />
         <p>View all the <span class="text-uppercase">Recepeis</span> available on the website</p>
      </div>
   </div>
</asp:Content>
