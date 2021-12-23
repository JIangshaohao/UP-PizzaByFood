<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>地址栏</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="css/style_1.css">
<link rel="stylesheet" href="css/colors/green.css" id="colors">

<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body class="overflow-reset">

<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header id="header">

<!-- Container -->
<div class="container">

	<!-- Logo / Mobile Menu -->
	<div class="three columns">
		<div id="logo">
			<h1><a href="index.jsp"><img src="images/logo.png" alt="Chow" /></a></h1>
		</div>
	</div>


<!-- Navigation
================================================== -->
<div class="thirteen columns navigation">
	
	<nav id="navigation" class="menu nav-collapse">
						<ul>
							<li><a href="Customer/index.jsp" id="current">主页</a></li>

							<li><a href="#">菜单</a>
								<ul>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味披萨</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口冰淇淋</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口饮料</a></li>
								</ul></li>

							<li><a href="#">热卖美食</a>
								<ul>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
								</ul></li>

							<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">非常推荐</a></li>

							<li><a href="Customer/ShoppingCart.jsp">购物车</a></li>

							<li><a href="Customer/Kefu.jsp">客服</a></li>
						</ul>
					</nav>

</div>

</div>
<!-- Container / End -->
</header>


<!-- Titlebar
================================================== -->
<section id="titlebar">
	<!-- Container -->
	<div class="container">

		<div class="eight columns">
			<h2>提交</h2>
		</div>

		<div class="eight columns">
			<nav id="breadcrumbs">
				<ul>
					<li>You are here:</li>
					<li><a href="#">Home</a></li>
					<li>Submit Recipe</li>
				</ul>
			</nav>
		</div>

	</div>
	<!-- Container / End -->
</section>



<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div class="submit-recipe-form">


			<!-- Recipe Title -->
			<h4>Recipe Title</h4>
			<nav class="title">
				<input class="search-field" type="text" placeholder="" value=""/>
			</nav>
			<div class="clearfix"></div>


			<div class="margin-top-25"></div>


			<!-- Choose Category -->
			<div class="select">
				<h4>Choose Category</h4>
				<select data-placeholder="Choose Category" class="chosen-select-no-single">
					<option value="1">All</option>
					<option value="2">Breakfast</option>
					<option value="3">Lunch</option>
					<option value="4">Beverages</option>
					<option value="5">Appetizers</option>
					<option value="6">Soups</option>
					<option value="7">Salads</option>
					<option value="8">Beef</option>
					<option value="9">Poultry</option>
					<option value="10">Pork</option>
					<option value="11">Seafood</option>
					<option value="12">Vegetarian</option>
					<option value="13">Vegetables</option>
					<option value="14">Desserts</option>
					<option value="15">Canning / Freezing</option>
					<option value="16">Breads</option>
					<option value="17">Holidays</option>
				</select>
			</div>


			<div class="margin-top-25"></div>


			<!-- Short Summary -->
			<h4>Short summary</h4>
			<textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true"></textarea>


			<div class="margin-top-25"></div>


			<!-- Upload Photos -->
			<h4>Upload your photos</h4>

			<ul class="recipe-gallery">
				<li>No photos uploaded yet</li>
			</ul>

			<label class="upload-btn">
			    <input type="file" multiple />
			    <i class="fa fa-upload"></i> Upload
			</label>


			<div class="clearfxix"></div>
			<div class="margin-top-15"></div>


			<!-- Ingredients -->
			<fieldset class="addrecipe-cont" name="ingredients">
				<h4>Ingredients:</h4>

				<table id="ingredients-sort">

					<tr class="ingredients-cont ing">
						<td class="icon"><i class="fa fa-arrows"></i></td>
						<td><input name="ingredient_name" tabindex="5" type="text" placeholder="Name of ingredient" /> </td>
						<td><input name="ingredient_note" tabindex="6" type="text" placeholder="Notes (quantity, additional info)" /></td>
						<td class="action"><a title="Delete" class="delete" href="#"><i class="fa fa-remove"></i></a> </td>
					</tr>

				</table>

				<a href="#" class="button color add_ingredient">Add new ingredient</a>
				<a href="#" class="button add_separator">Add separator</a>
			</fieldset>


			<div class="margin-top-25"></div>


			<!-- Directions -->
			<h4>Directions</h4>
			<textarea class="WYSIWYG" name="directions" cols="40" rows="3" id="directions" spellcheck="true"></textarea>


			<div class="margin-top-25 clearfix"></div>


			<!-- Additional Informations -->
			<h4>Additional Informations</h4>

			<fieldset class="additional-info">
				<table>

				<tr class="ingredients-cont">
					<td class="label"><label for="4">Yield</label></td>
					<td><input id="4" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="1">Preparation Time</label></td>
					<td><input id="1" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="2">Cooking Time</label></td>
					<td><input id="2" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="4">Level</label></td>
					<td>
						<select data-placeholder="Choose Level" class="chosen-select-no-single">
							<option value="1">&nbsp;</option>
							<option value="2">Easy</option>
							<option value="3">Medium</option>
							<option value="4">Hard</option>
							<option value="5">Master</option>
						</select>
					</td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="5">Alergens</label></td>
					<td>
						<select data-placeholder="Choose Alergens" class="chosen-select" multiple>
							<option value="2">Peanut</option>
							<option value="3">Tree nuts</option>
							<option value="4">Milk</option>
							<option value="5">Egg</option>
							<option value="6">Wheat</option>
							<option value="7">Soy</option>
							<option value="8">Fish</option>
							<option value="9">Shellfish</option>
						</select>
					</td>
				</tr>

				</table>
			</fieldset>


			<div class="margin-top-25"></div>


			<!-- Nutrition Facts -->
			<h4>Nutrition Facts</h4>

			<fieldset class="additional-info">
				<table>

				<tr class="ingredients-cont">
					<td class="label"><label for="5">Calories</label></td>
					<td><input id="5" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="6">Total Carbohydrate</label></td>
					<td><input id="6" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="7">Total Fat</label></td>
					<td><input id="7" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="8">Protein</label></td>
					<td><input id="8" type="text" /></td>
				</tr>

				<tr class="ingredients-cont">
					<td class="label"><label for="9">Cholesterol</label></td>
					<td><input id="9" type="text" /></td>
				</tr>

				</table>
			</fieldset>

			<div class="margin-top-30"></div>
			<a href="" class="button color big">Submit Recipe</a>

		</div>
	</div>
</div>
<!-- Container / End -->


<div class="margin-top-50"></div>

</div>
<!-- Wrapper / End -->


<!-- Footer
================================================== -->
<div id="footer">

	<!-- Container -->
	<div class="container">

		<div class="five columns">
			<!-- Headline -->
			<h3 class="headline footer">About</h3>
			<span class="line"></span>
			<div class="clearfix"></div>
			<p>Cras at ultrices erat, sed vulputate eros. Nunc at augue gravida est fermentum vulputate. Pellentesque et ipsum in dui malesuada tempus.</p>
		</div>

		<div class="three columns">

			<!-- Headline -->
			<h3 class="headline footer">Archives</h3>
			<span class="line"></span>
			<div class="clearfix"></div>

			<ul class="footer-links">
				<li><a href="#">June 2014</a></li>
				<li><a href="#">July 2014</a></li>
				<li><a href="#">August 2014</a></li>
				<li><a href="#">September 2014</a></li>
				<li><a href="#">November 2014</a></li>
			</ul>

		</div>

		<div class="three columns">

			<!-- Headline -->
			<h3 class="headline footer">Recipes</h3>
			<span class="line"></span>
			<div class="clearfix"></div>

			<ul class="footer-links">
				<li><a href="browse-recipes.html">Browse Recipes</a></li>
				<li><a href="recipe-page-1.html">Recipe Page</a></li>
				<li><a href="submit-recipe.html">Submit Recipe</a></li>
			</ul>

		</div>

		<div class="five columns">

			<!-- Headline -->
			<h3 class="headline footer">Newsletter</h3>
			<span class="line"></span>
			<div class="clearfix"></div>
			<p>Sign up to receive email updates on new product announcements, gift ideas, sales and more.</p>

			<form action="#" method="get">
				<input class="newsletter" type="text" placeholder="mail@example.com" value=""/>
				<button class="newsletter-btn" type="submit">Subscribe</button>

			</form>
		</div>

	</div>
	<!-- Container / End -->

</div>
<!-- Footer / End -->

<!-- Footer Bottom / Start -->
<div id="footer-bottom">

	<!-- Container -->
	<div class="container">

		<div class="eight columns">Â© Copyright 2014 by <a href="#">Chow</a>. <a href="https://www.genban.org/" >ç½ç«æ¨¡æ¿</a>.</div>

	</div>
	<!-- Container / End -->

</div>
<!-- Footer Bottom / End -->

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>



<!-- Java Script
================================================== -->
<script src="scripts/jquery-1.11.0.min.js"></script>
<script src="scripts/jquery-migrate-1.2.1.min.js"></script>
<script src="scripts/jquery.superfish.js"></script>
<script src="scripts/jquery.royalslider.min.js"></script>
<script src="scripts/responsive-nav.js"></script>
<script src="scripts/hoverIntent.js"></script>
<script src="scripts/isotope.pkgd.min.js"></script>
<script src="scripts/chosen.jquery.min.js"></script>
<script src="scripts/jquery.tooltips.min.js"></script>
<script src="scripts/jquery.magnific-popup.min.js"></script>
<script src="scripts/jquery.pricefilter.js"></script>
<script src="scripts/jquery-ui.min.js"></script>
<script src="scripts/custom.js"></script>


<!-- WYSIWYG Editor -->
<script type="text/javascript" src="scripts/jquery.sceditor.bbcode.min.js"></script>
<script type="text/javascript" src="scripts/jquery.sceditor.js"></script>


<!-- Style Switcher
================================================== -->
<script src="scripts/switcher.js"></script>

<div id="style-switcher">
	<h2>Style Switcher <a href="#"></a></h2>
	
	<div>
		<h3>Predefined Colors</h3>
		<ul class="colors" id="color1">
			<li><a href="#" class="green" title="Green"></a></li>
			<li><a href="#" class="blue" title="Blue"></a></li>
			<li><a href="#" class="orange" title="Orange"></a></li>
			<li><a href="#" class="navy" title="Navy"></a></li>
			<li><a href="#" class="yellow" title="Yellow"></a></li>
			<li><a href="#" class="peach" title="Peach"></a></li>
			<li><a href="#" class="beige" title="Beige"></a></li>
			<li><a href="#" class="purple" title="Purple"></a></li>
			<li><a href="#" class="celadon" title="Celadon"></a></li>
			<li><a href="#" class="pink" title="Pink"></a></li>
			<li><a href="#" class="red" title="Red"></a></li>
			<li><a href="#" class="brown" title="Brown"></a></li>
			<li><a href="#" class="cherry" title="Cherry"></a></li>
			<li><a href="#" class="cyan" title="Cyan"></a></li>
			<li><a href="#" class="gray" title="Gray"></a></li>
			<li><a href="#" class="darkcol" title="Dark"></a></li>
		</ul>
		
	</div>
	
	<div id="reset"><a href="#" class="button color">Reset</a></div>
		
</div>


</body>
</html>