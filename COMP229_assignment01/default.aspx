<%@ Page Inherits="COMP229_assignment01.Default" Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeBehind="Default.aspx.cs" %>

<asp:Content ContentPlaceHolderID="contentPlaceHolder" runat="server">

	<div id="carousel" class="carousel slide hidden-xs hidden-sm" data-ride="carousel">
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
					<h2>A delicious pizza</h2>
				</div>
			</div>

			<div class="item">
				<img class="img-responsive" src="Content/images/carousel-1.jpg" />
			</div>

			<div class="item">
				<img class="img-responsive" src="Content/images/carousel-2.jpg" />
			</div>

			<div class="item">
				<img class="img-responsive" src="Content/images/carousel-3.jpg" />
			</div>

			<div class="item">
				<img class="img-responsive" src="Content/images/carousel-4.jpg" />
			</div>
		</div>
		<a class="left carousel-control" href="#carousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		<a class="right carousel-control" href="#carousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
	</div>


	<div class="container">

		<div class="jumbotron">
			<h2 class="text-center">Welcome to
            <img src="Content/images/logo.svg" alt="Recipe land logo" /></h2>
			<p>
				We all love<span class="glyphicon glyphicon-heart" style="color: red;"></span> the food we eat so why not share it with others? In Recipe Land people tell eachother secret ways of cooking delicious food. 
			</p>
			<h3>What's here for you <span class="glyphicon glyphicon-question-sign"></span></h3>
			<p>
				<a href="Search.aspx">Search <span class="glyphicon glyphicon-search" style="color: #444;"></span>for recipes</a> to learn how to get yourself delicious meals.
            <br />
				New tastes always make me happy. <a href="Add.aspx">Add <span class="glyphicon glyphicon-plus-sign" style="color: #1A1;"></span>your own recipe</a> to the list. 
            <br />
				Take yoru time to go through the <a href="Recipes.aspx"><span class="glyphicon glyphicon-list" style="color: #666;"></span>list of all recipes</a>.
			</p>
		</div>

		<%--      <div class="row">
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
      </div>--%>
	</div>

</asp:Content>
