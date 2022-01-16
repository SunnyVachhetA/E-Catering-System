<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file="commoncss.jsp" %>
</head>
<body itemscope>
    <main>
         <%@include file="Topbar.jsp" %>
       
        <section>
            <div class="block">
                <div class="fixed-bg" style="background-image: url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="page-title-inner">
                            <h1 itemprop="headline">Our Receipes</h1>
                            <span>A Greate Restaurant Website</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="bread-crumbs-wrapper">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" title="" itemprop="url">Home</a></li>
                    <li class="breadcrumb-item active">Receipes</li>
                </ol>
            </div>
        </div>

        <section>
            <div class="block less-spacing gray-bg top-padd30">
                <div class="container">
                    <div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="sec-box">
    							<div class="filters-wrapper">
        							<ul class="filter-buttons center">
        								<li class="active"><a class="brd-rd30" data-filter="*" href="#" itemprop="url">All</a></li>
        								<li><a class="brd-rd30" data-filter=".filter-item1" href="#" itemprop="url">Beverages</a></li>
        								<li><a class="brd-rd30" data-filter=".filter-item2" href="#" itemprop="url">Burgers</a></li>
        								<li><a class="brd-rd30" data-filter=".filter-item3" href="#" itemprop="url">Pasta</a></li>
        							</ul><!-- Filter Buttons -->
    							<div class="filters-inner style2">
    								<div class="row">
    									<div class="masonry">
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item1">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.2s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img1.jpg" alt="featured-restaurant-img1.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Pork Tenderloin Marinated</a></h4>
    													<span class="price">$85.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $50</li>
    														<li><i class="flaticon-transport"></i> 30min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.25</span>
    												</div>
    											</div>
    										</div>
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item2">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.3s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img2.jpg" alt="featured-restaurant-img2.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Baked Potato Pizza</a></h4>
    													<span class="price">$70.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $40</li>
    														<li><i class="flaticon-transport"></i> 20min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.03</span>
    												</div>
    											</div>
    										</div>
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item3">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.3s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img3.jpg" alt="featured-restaurant-img3.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Grilled Pork with Preserved</a></h4>
    													<span class="price">$90.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $60</li>
    														<li><i class="flaticon-transport"></i> 45min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 5.00</span>
    												</div>
    											</div>
    										</div>
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item2 filter-item3">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.4s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img4.jpg" alt="featured-restaurant-img4.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Chicken with White Sauce</a></h4>
    													<span class="price">$85.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $50</li>
    														<li><i class="flaticon-transport"></i> 30min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.25</span>
    												</div>
    											</div>
    										</div>
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item1 filter-item3">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.5s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img5.jpg" alt="featured-restaurant-img5.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Lemon-Rosemary Chicken</a></h4>
    													<span class="price">$70.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $40</li>
    														<li><i class="flaticon-transport"></i> 20min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.03</span>
    												</div>
    											</div>
    										</div>
    										<div class="col-md-12 col-sm-12 col-lg-6 filter-item filter-item1 filter-item2">
    											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.6s">
    												<div class="featured-restaurant-thumb">
    													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img6.jpg" alt="featured-restaurant-img6.jpg" itemprop="image"></a>
    												</div>
    												<div class="featured-restaurant-info">
    													<span class="red-clr">5th Avenue New York 68</span>
    													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Black Pepper-Honey BBQ</a></h4>
    													<span class="price">$90.00</span>

    													<ul class="post-meta">
    														<li><i class="fa fa-check-circle-o"></i> Min order $60</li>
    														<li><i class="flaticon-transport"></i> 45min</li>
    													</ul>
    													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 5.00</span>
    												</div>
    											</div>
    										</div>
    									</div>
    								</div>
    							</div>
    							</div>
                            </div>
						</div>
					</div>
                </div>
            </div>
        </section>

        <%@include file = "Footer.jsp" %>
        
        <%@include file = "LogRegistration.jsp" %>
        
            </main><!-- Main Wrapper -->

     <%@include file="commonjs.jsp" %>
</body>	

</html>