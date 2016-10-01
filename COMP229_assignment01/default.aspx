<%@ Page Inherits="COMP229_assignment01.Default" Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeBehind="Default.aspx.cs" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">
   <div id="carousel" class="carousel slide hidden-xs" data-ride="carousel">
      <ol class="carousel-indicators">
         <li class="active" data-target="#carousel" data-slide-to="0"></li>
         <li data-target="#carousel" data-slide-to="1"></li>
         <li data-target="#carousel" data-slide-to="2"></li>
         <li data-target="#carousel" data-slide-to="3"></li>
         <li data-target="#carousel" data-slide-to="4"></li>
      </ol>

      <div class="carousel-inner">
         <div class="item active">
            <img class="img-responsive" src="Content/images/carousel-0.jpg" alt="Pizza" />
            <div class="carousel-caption">
               <h4>A delisous pizza</h4>
            </div>
         </div>

         <div class="item">
            <img class="img-responsive" src="Content/images/carousel-1.jpg" />
            <div class="carousel-caption">
               <h3>Snacks</h3>
               <p class="h4">A new recipe for this</p>
            </div>
         </div>

         <div class="item">
            <img class="img-responsive" src="Content/images/carousel-2.jpg" />
            <div class="carousel-caption">
               <h4>A delisous pizza</h4>
            </div>
         </div>

         <div class="item">
            <img class="img-responsive" src="Content/images/carousel-3.jpg" />
            <div class="carousel-caption">
               <h4>Steak is always my best choice</h4>
            </div>
         </div>

         <div class="item">
            <img class="img-responsive" src="Content/images/carousel-4.jpg" />
            <div class="carousel-caption">
               <h4>Pancakes</h4>
            </div>
         </div>
      </div>
      <a class="left carousel-control" href="#carousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#carousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
   </div>

   <div class="container">
      <div class="row">
         <span class="h3">Discover modern RECIPES here</span>
      </div>

      <div class="row">
         <div class="col-xs-6 col-sm-4">
            <img class="img-responsive" src="Content/images/recipes.svg" />
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
   </div>
</asp:Content>
