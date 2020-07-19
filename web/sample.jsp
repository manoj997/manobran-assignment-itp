<%-- 
    Document   : sample
    Created on : Sep 30, 2018, 11:18:15 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
   <link rel="stylesheet" type="text/css" href="sample.css">
<script src="filter.js"></script>

</head>

<body>

  <header>
    
  </header>
  
	<main class="cd-main-content">
		<div class="cd-tab-filter-wrapper">
			<div class="cd-tab-filter">
				<ul class="cd-filters">
					<li class="placeholder"> 
						<a data-type="all" href="#0">All</a> <!-- selected option on mobile -->
					</li> 
					<li class="filter"><a class="selected" href="#0" data-type="all">All</a></li>
					<li class="filter" data-filter=".color-1"><a href="#0" data-type="color-1">Apple Store</a></li>
					<li class="filter" data-filter=".color-2"><a href="#0" data-type="color-2">Amazon.com</a></li>
				</ul> <!-- cd-filters -->
			</div> <!-- cd-tab-filter -->
		</div> <!-- cd-tab-filter-wrapper -->

		<section class="cd-gallery">
			<ul>
				<li class="mix color-1 check1 radio2 option3"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-1.jpg" alt="Image 1"></li>
				<li class="mix color-2 check2 radio2 option2"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-2.jpg" alt="Image 2"></li>
				<li class="mix color-1 check3 radio3 option1"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-3.jpg" alt="Image 3"></li>
				<li class="mix color-1 check3 radio2 option4"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-4.jpg" alt="Image 4"></li>
				<li class="mix color-1 check1 radio3 option2"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-5.jpg" alt="Image 5"></li>
				<li class="mix color-2 check2 radio3 option3"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-6.jpg" alt="Image 6"></li>
				<li class="mix color-2 check2 radio2 option1"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-7.jpg" alt="Image 7"></li>
				<li class="mix color-1 check1 radio3 option4"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-8.jpg" alt="Image 8"></li>
				<li class="mix color-2 check1 radio2 option3"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-9.jpg" alt="Image 9"></li>
				<li class="mix color-1 check3 radio2 option4"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-10.jpg" alt="Image 10"></li>
				<li class="mix color-1 check3 radio3 option2"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-11.jpg" alt="Image 11"></li>
				<li class="mix color-2 check1 radio3 option1"><img src="https://entrusters.com/templates/yoo_moustache/html/com_entrusters_shop/products/ui-img/img-12.jpg" alt="Image 12"></li>
				<li class="gap"></li>
				<li class="gap"></li>
				<li class="gap"></li>
			</ul>
      <button class="uk-button uk-button-large uk-button-outline ladda-button uk-width-1-1"><i class="uk-icon uk-icon-plus"></i> SHOW MORE</button>
			<div class="cd-fail-message">No results found</div>
		</section> <!-- cd-gallery -->

		<div class="cd-filter">
			<form>
        
        <div class="cd-filter-block">
					<h4>Choose a Store</h4>

					<ul class="cd-filter-content cd-filters list">
						<li>
							<input class="filter" data-filter="" type="radio" name="radioButton" id="radio1" checked>
							<label class="radio-label" for="radio1">All</label>
						</li>

						<li>
							<input class="filter" data-filter=".radio2" type="radio" name="radioButton" id="radio2">
							<label class="radio-label" for="radio2">Apple Store</label>
						</li>

						<li>
							<input class="filter" data-filter=".radio3" type="radio" name="radioButton" id="radio3">
							<label class="radio-label" for="radio3">Amazon.com</label>
						</li>
            						<li>
							<input class="filter" data-filter=".radio4" type="radio" name="radioButton" id="radio4" disabled>
							<label class="radio-label" for="radio4" >BestBuy.com</label>
						</li>
					</ul> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->
        
				<div class="cd-filter-block">
					<h4>Filter Results</h4>
					
					<div class="cd-filter-content">
						<input type="search" placeholder="Search Amazon.com">
					</div> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->

				<div class="cd-filter-block">
					<h4>Categories</h4>

					<ul class="cd-filter-content cd-filters list">
						<li>
							<input class="filter" data-filter=".check1" type="checkbox" id="checkbox1">
			    			<label class="checkbox-label" for="checkbox1">iPhone</label>
						</li>

						<li>
							<input class="filter" data-filter=".check2" type="checkbox" id="checkbox2">
							<label class="checkbox-label" for="checkbox2">iPad</label>
						</li>

						<li>
							<input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">Apple TV</label>
						</li>
            						<li>
							<input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">Macbook</label>
						</li>
            						<li>
							<input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">Macbook Air</label>
						</li>
            						<li>
							<input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">Macbook Pro</label>
						</li>
            						<li>
							<input class="filter" data-filter=".check3" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">Apple Accessories</label>
						</li>
					</ul> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->

				<div class="cd-filter-block">
					<h4>Currency</h4>
					
					<div class="cd-filter-content">
						<div class="cd-select cd-filters">
							<select class="filter" name="selectThis" id="selectThis">
								<option value="">ARS</option>
								<option value=".option1">USD</option>
								<option value=".option2">BRL</option>
								<option value=".option3">EUR</option>
								<option value=".option4">GBP</option>
							</select>
						</div> <!-- cd-select -->
					</div> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->

				
			</form>

      <a href="#0" class="cd-close"><i class="icon ent-close"></i> close </a>
		</div> <!-- cd-filter -->

		<a href="#0" class="cd-filter-trigger">Filters</a>
	</main> <!-- cd-main-content -->
</body>
</html>