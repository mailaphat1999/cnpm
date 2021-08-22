<%@ page import="utils.Utils" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="model.GioHang" %>
<%@ page import="model.SanPham" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>Chi tiết sản phẩm - Phone Group 02</title>
    <meta name="description" content="Chiếc điện thoại m&#224;n h&#236;nh Infinity-O lớn nhất, camera xuất sắc nhất v&#224; hiệu năng mạnh mẽ nhất của Samsung đ&#227; xuất hiện. Galaxy S10+ dẫn đầu xu thế, mang tr&#234;n m&#236;nh c&#225;c c&#244;ng nghệ ti&#234;n tiến của tương lai v&#224; l&#224; một t&#225;c phẩm nghệ thuật đ&#237;ch thực. Kiệt t&#225;c m&#224;n h&#236;nh v&#244; cực Infinity-O Gần như to&#224;n bộ phần viền m&#224;n h&#236;nh đ&#227; được">
    <meta name="keywords" content="Samsung Galaxy S10+ (8 + 128GB), Sản phẩm mới, Samsung, Điện thoại, Ant Mobile, ant-mobile.bizwebvietnam.net"/>
    <link rel="canonical" href="https://ant-mobile.bizwebvietnam.net/samsung-galaxy-s10-8-128gb"/>
    <meta name='revisit-after' content='1 days' />
    <meta name="robots" content="noodp,index,follow" />
    <link rel="icon" href="https://images.cooltext.com/5362564.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--    <link rel="icon" href="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/favicon.png?1559638811340" type="image/x-icon" />-->
    <meta property="og:type" content="product">
    <meta property="og:title" content="Samsung Galaxy S10+ (8 + 128GB)">
    <meta property="og:image" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637">
    <meta property="og:image:secure_url" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637">
    <meta property="og:image" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293">
    <meta property="og:image:secure_url" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293">
    <meta property="og:image" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773">
    <meta property="og:image:secure_url" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773">
    <meta property="og:price:amount" content="22.990.000">
    <meta property="og:price:currency" content="VND">
    <meta property="og:description" content="Chiếc điện thoại màn hình Infinity-O lớn nhất, camera xuất sắc nhất và hiệu năng mạnh mẽ nhất của Samsung đã xuất hiện. Galaxy S10+ dẫn đầu xu thế, mang trên mình các công nghệ tiên tiến của tương lai và là một tác phẩm nghệ thuật đích thực. Kiệt tác màn hình vô cực Infinity-O Gần như toàn bộ phần viền màn hình đã được">
    <meta property="og:url" content="https://ant-mobile.bizwebvietnam.net/samsung-galaxy-s10-8-128gb">
    <meta property="og:site_name" content="Ant Mobile">

    <link rel="stylesheet" href="css/bootstrap.scss.css">
    <link rel="stylesheet" href="css/plugin.scss.css">
    <link rel="stylesheet" href="css/base.scss.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/defer_plus.js"></script>
    <script> deferscript('../js/polyfill.js' , 'polyfill-js', 1)</script>
    <link rel="stylesheet" href="css/custom.css">
</head>
<body class="bg-body">
<jsp:include page="header.jsp"/>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/option-selectors.js" type="text/javascript"></script>
<script src="js/api.jquery.js?4" type="text/javascript"></script>
<script src="js/owl.carousel.min.js" type="text/javascript"></script>

<%--    usecase-thêm cào giỏ hàng:
        B2. Hệ thống sẽ hiển thị giao diện chi tiết của sản phẩm đó.--%>
        
        <%--    usecase-Chi tiết sản phẩm:
        B3. Hệ thống sẽ hiển thị giao diện chi tiết của sản phẩm.--%>
<%
	ResultSet p = (ResultSet) request.getAttribute("p");
	while (p.next()){
%>
<section class="bread-crumb margin-bottom-10">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
					<li class="home"><a itemprop="url" href="../index.jsp" title="Trang chủ"><span itemprop="title">Trang chủ</span></a><span><i class="fa fa-angle-right"></i></span></li>
					<li><a itemprop="url" href="../sanpham.jsp" title="Sản phẩm mới"><span itemprop="title">Sản phẩm mới</span></a><span><i class="fa fa-angle-right"></i></span></li>
					<li ><strong><span itemprop="title"><%=p.getString(2)%></span></strong>
					<li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section class="product" itemscope itemtype="http://schema.org/Product">
	<meta itemprop="image" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637">
	<meta itemprop="description" content="  Chiếc điện thoại màn hình Infinity-O lớn nhất, camera xuất sắc nhất và hiệu năng mạnh mẽ nhất của Samsung đã xuất hiện. Galaxy S10+ dẫn đầu xu thế, mang trên mình các công nghệ tiên tiến của tương lai và là một tác phẩm nghệ thuật đích thực.
            Kiệt tác màn hình vô cực Infinity-O
            Gần ...">
	<meta itemprop="name" content="Samsung Galaxy S10+ (8 + 128GB)">
	<div class="container">
		<div class="row">
			<%--            <%--%>
			<%--                ResultSet p = (ResultSet) request.getAttribute("p");--%>
			<%--                while (p.next()){--%>
			<%--            %>--%>
			<div class="details-product padding-bottom-10">
				<div class="col-xs-12 col-sm-12 col-lg-12 col-md-12 details-pro">
					<div class="product-top clearfix">
						<h1 class="title-head"><%=p.getString(3)%></h1>
						<div class="sku-product">
							Mã sản phẩm: <span class="variant-sku" itemprop="sku" content="00543146"></span>
							<%--                            <span class="hidden" itemprop="brand" itemscope itemtype="https://schema.org/brand">Ant Mobile</span>--%>
						</div>
						<div class="panel-product-rating clearfix">
							<div class="bizweb-product-reviews-badge" data-id="13904443"></div>
							<div class="iddanhgia" onclick="scrollToxx();">
								<span>Đánh giá sản phẩm</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-lg-5 col-md-5">
					<div class="relative product-image-block ">
						<div class="large-image">
							<a href="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637" data-rel="prettyPhoto[product-gallery]" class="large_image_url" title="Samsung Galaxy S10+ (8 + 128GB)">
								<img id="zoom_01" src="<%=p.getString(4)%>" alt="Laptop Apple Macbook Air 2019 i5 1.6GHz/8GB/128GB (MVFM2SA/A)" class="img-responsive center-block">
							</a>
							<div class="hidden">
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
								<div class="item"><a href="https://bizweb.dktcdn.net/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" data-zoom-image="https://bizweb.dktcdn.net/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" data-rel="prettyPhoto[product-gallery]" title="Samsung Galaxy S10+ (8 + 128GB)"></a></div>
							</div>
						</div>
						<div id="gallery_01" class="owl-carousel owl-theme thumbnail-product margin-top-15" data-lg-items="5" data-md-items="5" data-sm-items="4" data-xs-items="4" data-xss-items="4" data-margin="10" data-nav="true">
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522648468-ss-galaxy-s10-plus-xanh-2.png?v=1552139239293"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522678468-ss-galaxy-s10-plus-xanh-3.png?v=1552139239773"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659521978468-ss-galaxy-s10-plus-xanh-4.png?v=1552139240380"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636051023338-ss-galaxy-s10-plus-den-1.png?v=1552139240837"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050913338-ss-galaxy-s10-plus-den-2.png?v=1552139241163"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863636050673338-ss-galaxy-s10-plus-den-3.png?v=1552139241430"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863637628103338-ss-galaxy-s10-plus-den-4.png?v=1552139241857"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672228468-ss-galaxy-s10-plus-trang-1.png?v=1552139242153"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672698468-ss-galaxy-s10-plus-trang-2.png?v=1552139242507"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648672538468-ss-galaxy-s10-plus-trang-3.png?v=1552139242837"></a></div>
							<div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" data-zoom-image="https://bizweb.dktcdn.net/thumb/1024x1024/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/loader.svg?1559638811340" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863648671668468-ss-galaxy-s10-plus-trang-4.png?v=1552139243177"></a></div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-lg-4 col-md-4 details-pro">
					<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
						<div class="price-box clearfix">
                           <span class="special-price">
                              <span class="price product-price"><%=p.getString(5)%></span>
                              <meta itemprop="price" content="22990000">
                              <meta itemprop="priceCurrency" content="VND">
                           </span>
							<!-- Giá Khuyến mại -->
							<span class="old-price" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/priceSpecification">
                              Giá thị trường:
                              <del class="price product-price-old">
                              <%=p.getString(6)%>
                              </del>
                              <meta itemprop="price" content="23500000">
                              <meta itemprop="priceCurrency" content="VND">
                           </span>
							<!-- Giá gốca -->
							<span class="save-price">Tiết kiệm:
                           <span class="price product-price-save"></span>
                           </span> <!-- Tiết kiệm -->
						</div>
						<div class="inventory_quantity">
							<span class="stock-brand-title">Tình trạng:</span>
							<span class="a-stock a2">
                              <link itemprop="availability" href="http://schema.org/InStock" />
                              <%=p.getString(7)%>
                           </span>
						</div>
					</div>
					<div class="form-product">
						<form enctype="multipart/form-data" id="add-to-cart-form" action="/cart/add" method="post" class="form-inline">
							<div class="select-swatch">
								<div id="variant-swatch-0" class="swatch clearfix" data-option="option1" data-option-index="0">
									<div class="header">Dung lượng:</div>
									<div class="select-swap">
										<div data-value="128gb" class="n-sd swatch-element 128gb ">
											<input class="variant-0" id="swatch-0-128gb" type="radio" name="option1" value="128GB" checked />
											<label for="swatch-0-128gb">
												<%=p.getString(8)%>
												<img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="128GB" />
												<img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="128GB" />
											</label>
										</div>
										<div data-value="512-gb" class="n-sd swatch-element 512-gb ">
											<input class="variant-0" id="swatch-0-512-gb" type="radio" name="option1" value="512 GB" />
											<label for="swatch-0-512-gb">
												<%=p.getString(9)%>
												<img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="512 GB" />
												<img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="512 GB" />
											</label>
										</div>
									</div>
								</div>
								<div id="variant-swatch-1" class="swatch clearfix" data-option="option2" data-option-index="1">
									<div class="header">Màu sắc:</div>
									<div class="select-swap">
										<div data-value="den" class="n-sd swatch-element color den ">
											<input class="variant-1" id="swatch-1-den" type="radio" name="option2" value="Đen" checked />
											<label class="den has-thumb" for="swatch-1-den">
												<img src="https://cdn.tgdd.vn/Products/Images/44/207682/apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-1-3-180x125.jpg" alt="vàng" class="ant-swatch" />
												<span><%=p.getString(10) %></span>
												<img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="Đen" />
												<img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="Đen" />
											</label>
										</div>
										<div data-value="xanh" class="n-sd swatch-element color xanh ">
											<input class="variant-1" id="swatch-1-xanh" type="radio" name="option2" value="Xanh" />
											<label class="xanh has-thumb" for="swatch-1-xanh">
												<img src="https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-180x125.png" alt="bạc" class="ant-swatch" />
												<span><%=p.getString(11)%></span>
												<img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="Xanh" />
												<img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="Xanh" />
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="box-variant clearfix  hidden ">
								<select id="product-selectors" class="form-control form-control-lg" name="variantId" style="display:none">
									<option  selected="selected"  value="23441015">128GB / Đen - 22.990.000₫</option>
									<option  value="23441016">128GB / Xanh - 22.990.000₫</option>
									<option  value="23441017">128GB / Trắng - 22.990.000₫</option>
									<option  value="23441018">512 GB / Đen - 22.990.000₫</option>
									<option  value="23441019">512 GB / Xanh - 22.990.000₫</option>
									<option  value="23441020">512 GB / Trắng - 22.990.000₫</option>
								</select>
							</div>
							<div class="box-promotion">
								<p class="fk-tit">Khuyến mại đặc biệt (SL có hạn)</p>
								<div class="fk-main">
									<ul>
										<li>Cơ hội trúng Samsung Galaxy S10 mỗi ngày</li>
									</ul>
									<ul>
										<li>Trả góp 0%</li>
									</ul>
									<ul>
										<li>Ưu đãi phòng chờ sân bay hạng thương gia</li>
									</ul>
									<ul>
										<li>Tặng 1 năm bảo hiểm máy rơi vỡ, vào nước</li>
									</ul>
									<ul>
										<li>Giảm 500,000đ khi thanh toán qua VNPay QR</li>
									</ul>
								</div>
								<input name="properties[Khuyến mãi]" type="hidden" value="
                                 Cơ hội trúng Samsung Galaxy S10 mỗi ngày
                                 Trả góp 0%
                                 Ưu đãi phòng chờ sân bay hạng thương gia
                                 Tặng 1 năm bảo hiểm máy rơi vỡ, vào nước
                                 Giảm 500,000đ khi thanh toán qua VNPay QR  " />
							</div>
							<div class="clearfix form-group ">
								<div class="custom custom-btn-number form-control">
									<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty) & qty > 1 ) result.value--;return false; "type="button">–</button>
									<input type="text" class="qty input-text"  name="quantity" size="4" value="1" />
									<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"  type="button">+</button>
								</div>

<%--            usecase-thêm cào giỏ hàng:
                B3: Khách hàng thành viên/nhân viên/quản trị viên chọn thêm vào giỏ hàng.--%>
								<div class="btn-mua">

<%--            B4: Hệ thống gọi phương thức trả về trang giỏ hàng.--%>
                                    <a href="<%=Utils.fullPath("CartController?type=add&&id="+p.getInt(1))%>" type="submit" data-role='addtocart' style="display: inline-block; text-align: center" >
										<span class="txt-main"><i class="fa fa-shopping-cart padding-right-10"></i> Cho vào giỏ</span>
									</a>
								</div>
							</div>
							<div class="clearfix form-group ">
								<div class="custom custom-btn-number form-control">
									<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty) & qty > 1 ) result.value--;return false;" class="btn-minus btn-cts" type="button">–</button>
									<input type="text" class="qty input-text"  name="quantity" size="4" value="1" />
									<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;" class="btn-plus btn-cts" type="button">+</button>
								</div>
								<div class="btn-mua">

									<a href="thanhtoan.jsp" type="submit" data-role='addtocart' style="background: #0a5bff; display: inline-block; text-align: center" >
										<span class="txt-main"><i class="fab fa-amazon-pay"></i> Mua ngay</span>
									</a>
								</div>
							</div>
						</form>
					</div>
					<div class="clearfix"></div>
					<div class="call-and-payment">
						<div class="box-zalo-promotion">
							Giảm ngay <span>250.000đ</span> cho đơn hàng từ 500.000đ khi thanh toán qua ZaloPay cho khách hàng mới. <a href='#' title='Click xem thể lệ'>Click xem thể lệ</a>
						</div>
						<div class="hotline_product">
							Gọi điện để được tư vấn: <a href="tel:18006750" title="18006750">1800 6750</a>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-lg-3 col-md-3 hidden-sm hidden-xs">
					<div class="ant_onlineSupport">
						<h2 class="supportTitle">CHÚNG TÔI LUÔN SẴN SÀNG<br>ĐỂ GIÚP ĐỠ BẠN</h2>
						<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" data-lazyload="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/ant_product_support.png?1559638811340" alt="Hỗ trợ trực tuyến" class="supportImage img-responsive center-block" />
						<h3 class="supportTitle3">Để được hỗ trợ tốt nhất. Hãy gọi</h3>
						<div class="phoneNumber">
							<a href="tel:18006750" title="1800 6750">1800 6750</a>
						</div>
						<div class="or"><span>HOẶC</span></div>
						<h3 class="supportTitle">Chat hỗ trợ trực tuyến</h3>
						<a class="chatNow sprite-icon_chat" href="#" title="CHAT VỚI CHÚNG TÔI">CHAT VỚI CHÚNG TÔI</a>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-lg-12 col-md-12 margin-top-10">
					<div class="row">
						<div class="col-md-9">
							<div class="product-tab e-tabs padding-bottom-10">
								<ul class="tabs tabs-title clearfix margin-bottom-20">
									<li class="tab-link" data-tab="tab-1">
										<h3><span>Mô tả</span></h3>
									</li>
									<li class="tab-link" data-tab="tab-3">
										<h3><span>Nhận xét sản phẩm</span></h3>
									</li>
								</ul>
								<div id="tab-1" class="">
									<div class="rte" id="fancy-image-view">
										<div class="ba-text-fpt has-height">
											<%--                                            <p><strong><%=p.getString(22)%></strong></p>--%>
											<%--                                            <p><strong><img  src="<%=p.getString(23)%> "  /></strong></p>--%>
											<h3><strong><%=p.getString(21)%></strong></h3>
											<h3><strong><%=p.getString(22)%></strong></h3>
											<p><%=p.getString(23)%></p>
											<p><img src="<%=p.getString(24)%>" /></p>
											<%--                                            <h3><strong><%=p.getString(27)%></strong></h3>--%>
											<p><%=p.getString(25)%></p>
											<p><img src="<%=p.getString(26)%>"  /></p>
											<%--                                            <h3><strong><%=p.getString(30)%></strong></h3>--%>
											<p><%=p.getString(27)%></p>
											<p><img  src="<%=p.getString(28)%>" /></p>
											<%--                                            <h3><strong><%=p.getString(33)%></strong></h3>--%>
											<%--                                            <p><%=p.getString(34)%></p>--%>
										</div>
										<div class="show-more hidden-lg hidden-md hidden-sm">
											<a class="btn btn-default btn--view-more">
												<span class="more-text">Xem thêm <i class="fa fa-chevron-down"></i></span>
												<span class="less-text">Thu gọn <i class="fa fa-chevron-up"></i></span>
											</a>
										</div>
									</div>
								</div>
								<div id="tab-3" class="tab-content">
									<div id="bizweb-product-reviews" class="bizweb-product-reviews" data-id="13904443">
										s
										<div class="title-bl">
											<h3>Đánh giá sản phẩm</h3>
										</div>
										<div id="bizweb-product-reviews-sub" style="width:100%">
											<div class="bizweb-product-reviews-summary" id="bizweb-product-reviews-summary">
												<div>
													<meta itemprop="name" content="Samsung Galaxy S10+ (8 + 128GB)" />
													<div class="bpr-summary" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
														<meta content="1" itemprop="ratingValue" />
														<meta content="5" itemprop="bestRating" />
														<meta content="1" itemprop="worstRating" />
														<meta content="1" itemprop="ratingCount" />
														<span class="bpr-summary-average">1</span>
														<div id="bizweb-prv-summary-star" class="bizweb-product-reviews-star" data-score="1" data-number="5"></div>
														<div class="bpr-summary-caption"></div>
													</div>
												</div>
											</div>
											<span class="product-reviews-summary-actions">
                                       </span>
											<div class="bizweb-product-reviews-form" id="bpr-form_13904443" style="display:none;">
											</div>
											<div style="display:none;" id="bpr-thanks" class="bizweb-product-reviews-form">
											</div>
											<div id="bpr-list" class="bizweb-product-reviews-list">
											</div>
											<div id="bpr-more-reviews">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="specifications margin-bottom-20">
								<h2 class="fs-dttop">Thông số kỹ thuật</h2>
								<div class="fs-tsright">
									<ul>
										<li><label>Màn hình:</label><%=p.getString(12)%></li>
										<li><label>Hệ điều hành:</label><%=p.getString(13)%></li>
										<li><label>Camera sau:</label><%=p.getString(14)%></li>
										<li><label>Camera trước:</label><%=p.getString(15)%></li>
										<li><label>CPU:</label><%=p.getString(16)%></li>
										<li><label>RAM:</label><%=p.getString(17)%></li>
										<li><label>Bộ nhớ trong:</label><%=p.getString(18)%></li>
										<li><label>Thẻ SIM:</label><%=p.getString(19)%></li>
										<li><label>Dung lượng pin:</label><%=p.getString(20)%></li>
									</ul>
								</div>
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#specifications">
									Xem cấu hình chi tiết
								</button>
								<div class="modal fade" id="specifications" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												<h4 class="modal-title" id="myModalLabel">Thông số kỹ thuật chi tiết</h4>
											</div>
											<div class="modal-body">
												<ul>
													<li>Màn hình</li>
													<li><label data-id="204">Công nghệ màn hình :</label>Curved Dynamic AMOLED</li>
													<li><label data-id="10">Màu màn hình :</label>16 Triệu</li>
													<li><label data-id="534">Chuẩn màn hình :</label>Quad HD+</li>
													<li><label data-id="12">Độ phân giải màn hình :</label>1440 x 3040 pixels</li>
													<li><label data-id="1160">Màn hình :</label>6.4 inches</li>
													<li><label data-id="1246">Mặt kính màn hình :</label>Corning Gorilla Glass 6</li>
													<li>Camera Trước</li>
													<li><label data-id="1332">Độ phân giải :</label>Camera kép</li>
													<li><label data-id="1334">Thông tin khác :</label>Đang cập nhật</li>
													<li>Camera Sau</li>
													<li><label data-id="1328">Độ phân giải :</label>3 camera</li>
													<li><label data-id="1329">Quay phim :</label>2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec</li>
													<li><label data-id="1330">Đèn Flash :</label>Có</li>
													<li><label data-id="1331">Chụp ảnh nâng cao :</label>Đang cập nhật</li>
													<li>Cấu hình phần cứng</li>
													<li><label data-id="649">Tốc độ CPU :</label>2x2.7 GHz + 2x2.3 GHz + 4x1.9 GHz</li>
													<li><label data-id="650">Số nhân :</label>8</li>
													<li><label data-id="651">Chipset :</label>Exynos 9820</li>
													<li><label data-id="652">RAM :</label>8 GB</li>
													<li><label data-id="653">Chip đồ họa (GPU) :</label>Mali-G76 MP12</li>
													<li><label data-id="1345">Cảm biến :</label>Mở khóa bằng vân tay siêu âm, Mở khóa bằng khuôn mặt 2D,...</li>
													<li>Bộ nhớ &amp; Lưu trữ</li>
													<li><label data-id="23">Danh bạ lưu trữ :</label>Không giới hạn</li>
													<li><label data-id="24">ROM :</label>128 GB</li>
													<li><label data-id="1327">Bộ nhớ còn lại :</label>Đang cập nhật</li>
													<li><label data-id="25">Thẻ nhớ ngoài :</label>MicroSD</li>
													<li><label data-id="151">Hỗ trợ thẻ nhớ tối đa :</label>512 GB</li>
													<li>Thiết kế &amp; Trọng lượng</li>
													<li><label data-id="748">Kiểu dáng :</label>Đang cập nhật</li>
													<li><label data-id="1247">Chất liệu :</label>Kính, kim loại, Ceramic</li>
													<li><label data-id="749">Kích thước :</label>157.6 x 74.1 x 7.8 mm</li>
													<li><label data-id="212">Trọng lượng :</label>175g</li>
													<li><label data-id="1248">Khả năng chống nước :</label>Có</li>
													<li>Thông tin pin</li>
													<li><label data-id="194">Loại pin :</label>Li-Ion</li>
													<li><label data-id="36">Dung lượng pin :</label>4100 mAh</li>
													<li><label data-id="750">Pin có thể tháo rời :</label>Không</li>
													<li><label data-id="1250">Chế độ sạc nhanh :</label>Có</li>
													<li>Kết nối &amp; Cổng giao tiếp</li>
													<li><label data-id="156">Loại SIM :</label>Nano SIM</li>
													<li><label data-id="753">Khe cắm sim :</label>2</li>
													<li><label data-id="28">Wifi :</label>Wi-Fi 802.11 a/b/g/n/ac,&nbsp;Dual-band,&nbsp;Wi-Fi Direct,&nbsp;Wi-Fi hotspot</li>
													<li><label data-id="31">GPS :</label>A-GPS, GLONASS, BDS</li>
													<li><label data-id="30">Bluetooth :</label>v5.0,&nbsp;apt-X,&nbsp;A2DP,&nbsp;LE</li>
													<li><label data-id="754">GPRS/EDGE :</label>Không</li>
													<li><label data-id="396">NFC :</label>Có</li>
													<li><label data-id="755">Cổng sạc :</label>Type-C 1.0</li>
													<li><label data-id="35">Jack (Input &amp; Output) :</label>3.5mm</li>
													<li>Giải trí &amp; Ứng dụng</li>
													<li><label data-id="756">Xem phim :</label>True</li>
													<li><label data-id="757">Nghe nhạc :</label>True</li>
													<li><label data-id="758">Ghi âm :</label>Có</li>
													<li><label data-id="760">FM radio :</label>Có</li>
													<li><label data-id="1251">Đèn pin :</label>Có</li>
													<li><label data-id="193">Chức năng khác :</label>Đang cập nhật</li>
													<li>Bảo hành</li>
													<li><label data-id="46">Thời gian bảo hành :</label>12 Tháng</li>
													<li>Hệ điều hành</li>
													<li><label data-id="1350">Hệ điều hành :</label>Android 9.0 (Pie)</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="right_module">
								<div class="similar-product">
									<div class="right-bestsell">
										<h2><a href="../sanpham.jsp" title="Bạn có thể thích">Bạn có thể thích</a></h2>
										<div class="list-bestsell">
											<div class="list-bestsell-item">
												<div class="thumbnail-container clearfix">
													<div class="product-image">
														<a href="/samsung-galaxy-s10e" title="Laptop MSI Gaming 15 GF63 9SC i7"><img class="img-responsive" src="https://cdn.tgdd.vn/Products/Images/44/205916/msi-gaming-gf63-9sc-i7-9750h-8gb-256gb-gtx1650-win-1-1-180x125.jpg" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863622278818137-ss-galaxy-s10e-den-1.png?v=1552138222357" alt="Samsung Galaxy S10e" /></a>
													</div>
													<div class="product-meta">
														<h3><a href="/samsung-galaxy-s10e" title="Samsung Galaxy A9 2018">Samsung Galaxy S10e</a></h3>
														<div class="bizweb-product-reviews-badge" data-id="13870660"></div>
														<div class="product-price-and-shipping"><span class="price">25.990.000₫</span><span class="regular-price">26.000.000₫</span></div>
													</div>
												</div>
											</div>
											<div class="list-bestsell-item">
												<div class="thumbnail-container clearfix">
													<div class="product-image">
														<a href="/samsung-galaxy-a9-2018" title=""><img class="img-responsive" src="https://cdn.tgdd.vn/Products/Images/44/205916/msi-gaming-gf63-9sc-i7-9750h-8gb-256gb-gtx1650-win-1-1-180x125.jpg" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636776104541101822-galaxy-a7-blue-5.png?v=1551252657427" alt="Samsung Galaxy A9 2018" /></a>
													</div>
													<div class="product-meta">
														<h3><a href="/samsung-galaxy-a9-2018" title="Samsung Galaxy A9 2018">Samsung Galaxy A9 2018</a></h3>
														<div class="bizweb-product-reviews-badge" data-id="13818369"></div>
														<div class="product-price-and-shipping"><span class="price">10.490.000₫</span><span class="regular-price">12.500.000₫</span></div>
													</div>
												</div>
											</div>
											<div class="list-bestsell-item">
												<div class="thumbnail-container clearfix">
													<div class="product-image">
														<a href="/samsung-galaxy-a7-2018" title="Samsung Galaxy A7 (2018)"><img class="img-responsive" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636746958719163577-a7-2018-blue-1.png?v=1551252578530" alt="Samsung Galaxy A7 (2018)" /></a>
													</div>
													<div class="product-meta">
														<h3><a href="/samsung-galaxy-a7-2018" title="Samsung Galaxy A7 (2018)">Samsung Galaxy A7 (2018)</a></h3>
														<div class="bizweb-product-reviews-badge" data-id="13818293"></div>
														<div class="product-price-and-shipping"><span class="price">6.990.000₫</span><span class="regular-price">7.500.000₫</span></div>
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
				<% } %>
			</div>
		</div>
		<div class="row margin-top-20 margin-bottom-10">
			<div class="col-lg-12">
				<div class="related-product">
					<div class="home-title">
						<h2><a href="" title="Sản phẩm cùng loại">Sản phẩm cùng loại</a></h2>
					</div>
					<div class="section-tour-owl owl-carousel not-dqowl products-view-grid margin-top-10" data-md-items="5" data-sm-items="4" data-xs-items="2" data-margin="10">
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy S10e"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636863622278818137-ss-galaxy-s10e-den-1.png?v=1552138222357" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy S10e" class="img-responsive center-block" />
									<label class="per">Giảm  6% </label>
								</div>
								<h3>Samsung Galaxy S10e</h3>
								<div class="price">
									<strong>15.990.000₫</strong>
									<span>17.000.000₫</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy A9 2018"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636776104541101822-galaxy-a7-blue-5.png?v=1551252657427" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy A9 2018" class="img-responsive center-block" />
									<label class="per">Giảm  16% </label>
								</div>
								<h3>Samsung Galaxy A9 2018</h3>
								<div class="price">
									<strong>10.490.000₫</strong>
									<span>12.500.000₫</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy A7 (2018)"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636746958719163577-a7-2018-blue-1.png?v=1551252578530" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy A7 (2018)" class="img-responsive center-block" />
									<label class="per">Giảm  7% </label>
								</div>
								<h3>Samsung Galaxy A7 (2018)</h3>
								<div class="price">
									<strong>6.990.000₫</strong>
									<span>7.500.000₫</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Oppo A3s 16GB"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636688079458645221-oppoa3s-tim-1.jpg?v=1551252470783" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Oppo A3s 16GB" class="img-responsive center-block" />
								</div>
								<h3>Oppo A3s 16GB</h3>
								<div class="price">
									<strong>3.290.000₫</strong>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy J8"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636668977169527052-samsung-j8-tim-1.jpg?v=1551252361210" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy J8" class="img-responsive center-block" />
								</div>
								<h3>Samsung Galaxy J8</h3>
								<div class="price">
									<strong>4.970.000₫</strong>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy S9"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636552317043233179-1.jpg?v=1551242342070" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy S9" class="img-responsive center-block" />
								</div>
								<h3>Samsung Galaxy S9</h3>
								<div class="price">
									<strong>19.990.000₫</strong>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Nokia 6.1 Plus"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636737264632784078-nokia6plus-den-1.jpg?v=1551242185720" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Nokia 6.1 Plus" class="img-responsive center-block" />
								</div>
								<h3>Nokia 6.1 Plus</h3>
								<div class="price">
									<strong>5.990.000₫</strong>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="news-item-products">
								<a href="" title="Samsung Galaxy A7 2018 - 128GB"></a>
								<div class="relative fix-images">
									<img data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636749648129210031-a7-2018-den-1.jpg?v=1551242012420" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="  alt="Samsung Galaxy A7 2018 - 128GB" class="img-responsive center-block" />
								</div>
								<h3>Samsung Galaxy A7 2018 - 128GB</h3>
								<div class="price">
									<strong>7.990.000₫</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<link href="css/bpr-products-module.scss.css" rel="stylesheet" type="text/css" />
<div class="bizweb-product-reviews-module"></div>
<footer class="footer ">
    <div class="site-footer">
        <div class="container">
            <div class="footer-inner">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-widget">
                            <h3><span>Thông tin công ty</span></h3>
                            <ul class="list-menu">
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><a href="gioithieu.html">Giới thiệu</a></li>
                                <li><a href="sanpham.html">Sản phẩm</a></li>
                                <!--                                <li><a href="/tin-tuc">Tin tức</a></li>-->
                                <li><a href="lienhe.html">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-widget">
                            <h3><span>Chính sách</span></h3>
                            <ul class="list-menu">

                                <li><a href="#">Bảo hành</a></li>
                                <li><a href="#">Đổi trả hàng</a></li>
                                <li><a href="tintuc.html">Tin tức</a></li>
                                <li><a href="lienhe.html">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-widget">
                            <h3><span>Chính sách hỗ trợ khách hàng</span></h3>
                            <ul class="list-menu">
                                <li><a >Gọi mua hàng 1800.1060 (7:30 - 22:00)</a></li>
                                <li><a>Gọi khiếu nại   1800.1062 (8:00 - 21:30)</a></li>
                                <li><a>Gọi bảo hành   1800.1064 (8:00 - 21:00)</a></li>
                                <li><a>Kỹ thuật           1800.1763 (7:30 - 22:00)</a></li>
                                <!--                                <li><a href="/lien-he">Liên hệ</a></li>-->
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-widget">
                            <h3><span>Liên hệ với chúng tôi</span></h3>
                            <ul class="list-menu">
                                <li><a ><b>Địa chỉ: </b>kp6, P.Linh Trung, Q.Thủ Đưc, HCM</a></li>
                                <li><a ><b>Sđt: </b> 0964024229</a></li>
                                <li><a ><b>Email: </b>Team02@gmail.com</a></li>
                                <!--                                <li><a href="/tin-tuc">Tin tức</a></li>-->
                                <!--                                <li><a href="/lien-he">Liên hệ</a></li>-->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row bottom-footer">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-widget footer-payment">
                            <h3><span>Phương thức thanh toán</span></h3>
                            <ul class="list-menu clearfix">
                                <li class="item">
                                    <img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_1.png?1559638811340" alt="Phương thức thanh toán" />
                                </li>
                                <li class="item">
                                    <img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_2.png?1559638811340" alt="Phương thức thanh toán" />
                                </li>
                                <li class="item">
                                    <img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_3.png?1559638811340" alt="Phương thức thanh toán" />
                                </li>
                                <li class="item">
                                    <img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_4.png?1559638811340" alt="Phương thức thanh toán" />
                                </li>
                                <li class="item">
                                    <img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_5.png?1559638811340" alt="Phương thức thanh toán" />
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-widget footer-social">
                            <h3><span>Kết nối với chúng tôi</span></h3>
                            <ul class="list-menu list-inline">
                                <li class="twitter">
                                    <a href="https://www.twitter.com/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve" width="15px" height="15px">
                                       <g>
                                          <path d="M612,116.258c-22.525,9.981-46.694,16.75-72.088,19.772c25.929-15.527,45.777-40.155,55.184-69.411    c-24.322,14.379-51.169,24.82-79.775,30.48c-22.907-24.437-55.49-39.658-91.63-39.658c-69.334,0-125.551,56.217-125.551,125.513    c0,9.828,1.109,19.427,3.251,28.606C197.065,206.32,104.556,156.337,42.641,80.386c-10.823,18.51-16.98,40.078-16.98,63.101    c0,43.559,22.181,81.993,55.835,104.479c-20.575-0.688-39.926-6.348-56.867-15.756v1.568c0,60.806,43.291,111.554,100.693,123.104    c-10.517,2.83-21.607,4.398-33.08,4.398c-8.107,0-15.947-0.803-23.634-2.333c15.985,49.907,62.336,86.199,117.253,87.194    c-42.947,33.654-97.099,53.655-155.916,53.655c-10.134,0-20.116-0.612-29.944-1.721c55.567,35.681,121.536,56.485,192.438,56.485    c230.948,0,357.188-191.291,357.188-357.188l-0.421-16.253C573.872,163.526,595.211,141.422,612,116.258z" data-original="#010002" class="active-path" data-old_color="#010002" fill="#FFFFFF"/>
                                       </g>
                                    </svg>
                                    </a>
                                </li>
                                <li class="facebook">
                                    <a href="https://www.facebook.com/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="15px" height="15px" viewBox="0 0 430.113 430.114" style="enable-background:new 0 0 430.113 430.114;" xml:space="preserve">
                                       <path id="Facebook" d="M158.081,83.3c0,10.839,0,59.218,0,59.218h-43.385v72.412h43.385v215.183h89.122V214.936h59.805   c0,0,5.601-34.721,8.316-72.685c-7.784,0-67.784,0-67.784,0s0-42.127,0-49.511c0-7.4,9.717-17.354,19.321-17.354   c9.586,0,29.818,0,48.557,0c0-9.859,0-43.924,0-75.385c-25.016,0-53.476,0-66.021,0C155.878-0.004,158.081,72.48,158.081,83.3z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                    </svg>
                                    </a>
                                </li>
                                <li class="pinterest">
                                    <a href="https://www.pinterest.com/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 310.05 310.05" style="enable-background:new 0 0 310.05 310.05;" xml:space="preserve" width="15px" height="15px">
                                       <path id="XMLID_799_" d="M245.265,31.772C223.923,11.284,194.388,0,162.101,0c-49.32,0-79.654,20.217-96.416,37.176   c-20.658,20.9-32.504,48.651-32.504,76.139c0,34.513,14.436,61.003,38.611,70.858c1.623,0.665,3.256,1,4.857,1   c5.1,0,9.141-3.337,10.541-8.69c0.816-3.071,2.707-10.647,3.529-13.936c1.76-6.495,0.338-9.619-3.5-14.142   c-6.992-8.273-10.248-18.056-10.248-30.788c0-37.818,28.16-78.011,80.352-78.011c41.412,0,67.137,23.537,67.137,61.425   c0,23.909-5.15,46.051-14.504,62.35c-6.5,11.325-17.93,24.825-35.477,24.825c-7.588,0-14.404-3.117-18.705-8.551   c-4.063-5.137-5.402-11.773-3.768-18.689c1.846-7.814,4.363-15.965,6.799-23.845c4.443-14.392,8.643-27.985,8.643-38.83   c0-18.55-11.404-31.014-28.375-31.014c-21.568,0-38.465,21.906-38.465,49.871c0,13.715,3.645,23.973,5.295,27.912   c-2.717,11.512-18.865,79.953-21.928,92.859c-1.771,7.534-12.44,67.039,5.219,71.784c19.841,5.331,37.576-52.623,39.381-59.172   c1.463-5.326,6.582-25.465,9.719-37.845c9.578,9.226,25,15.463,40.006,15.463c28.289,0,53.73-12.73,71.637-35.843   c17.367-22.418,26.932-53.664,26.932-87.978C276.869,77.502,265.349,51.056,245.265,31.772z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                    </svg>
                                    </a>
                                </li>
                                <li class="google">
                                    <a href="https://www.google.com/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 491.858 491.858" style="enable-background:new 0 0 491.858 491.858;" xml:space="preserve" width="15px" height="15px" class="">
                                       <path d="M377.472,224.957H201.319v58.718H308.79c-16.032,51.048-63.714,88.077-120.055,88.077     c-69.492,0-125.823-56.335-125.823-125.824c0-69.492,56.333-125.823,125.823-125.823c34.994,0,66.645,14.289,89.452,37.346     l42.622-46.328c-34.04-33.355-80.65-53.929-132.074-53.929C84.5,57.193,0,141.693,0,245.928s84.5,188.737,188.736,188.737     c91.307,0,171.248-64.844,188.737-150.989v-58.718L377.472,224.957L377.472,224.957z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                            <polygon points="491.858,224.857 455.827,224.857 455.827,188.826 424.941,188.826 424.941,224.857 388.91,224.857      388.91,255.74 424.941,255.74 424.941,291.772 455.827,291.772 455.827,255.74 491.858,255.74    " data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                    </svg>
                                    </a>
                                </li>
                                <li class="instagram">
                                    <a href="https://www.instagram.com/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15px" height="15px">
                                            <path d="m75 512h362c41.355469 0 75-33.644531 75-75v-362c0-41.355469-33.644531-75-75-75h-362c-41.355469 0-75 33.644531-75 75v362c0 41.355469 33.644531 75 75 75zm-45-437c0-24.8125 20.1875-45 45-45h362c24.8125 0 45 20.1875 45 45v362c0 24.8125-20.1875 45-45 45h-362c-24.8125 0-45-20.1875-45-45zm0 0" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                            <path d="m256 391c74.4375 0 135-60.5625 135-135s-60.5625-135-135-135-135 60.5625-135 135 60.5625 135 135 135zm0-240c57.898438 0 105 47.101562 105 105s-47.101562 105-105 105-105-47.101562-105-105 47.101562-105 105-105zm0 0" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                            <path d="m406 151c24.8125 0 45-20.1875 45-45s-20.1875-45-45-45-45 20.1875-45 45 20.1875 45 45 45zm0-60c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="footer-widget footer-subcrible">
                            <h3><span>Đăng ký nhận tin</span></h3>
                            <p>Nhận thông tin sản phẩm mới nhất, tin khuyến mãi và nhiều hơn nữa.</p>
                            <form action="//facebook.us7.list-manage.com/subscribe/post?u=97ba6d3ba28239250923925a8&id=4ef3a755a8" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank">
                                <div class="input-group">
                                    <input type="email" class="form-control" value="" placeholder="Email của bạn" name="EMAIL" id="mail">
                                    <span class="input-group-btn">
                                 <button class="btn btn-default" name="subscribe" id="subscribe" type="submit">Đăng ký</button>
                                 </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright clearfix">
        <div class="container">
            <div class="inner clearfix">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <span>Design by @ <span class="s480-f">|</span> <a href="http://hci2019group13.tk/">Group 02</a></span>
                    </div>
                </div>
            </div>
            <div class="back-to-top"><i class="fa  fa-arrow-circle-up"></i></div>
        </div>
    </div>
</footer>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js" type="text/javascript"></script>
<div class="ajax-load">
         <span class="loading-icon">
            <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                 width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
               </rect>
               <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
               </rect>
               <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            </svg>
         </span>
</div>
<div class="loading awe-popup">
    <div class="overlay"></div>
    <div class="loader" title="2">
        <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                   <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                   <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            </svg>
    </div>
</div>
<div class="addcart-popup product-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="content">
        <div class="row row-noGutter">
            <div class="col-xl-6 col-xs-12">
                <div class="btn btn-full btn-primary a-left popup-title"><i class="fa fa-check"></i>Thêm vào giỏ hàng thành công
                </div>
                <a href="javascript:void(0)" class="close-window close-popup"><i class="fa fa-close"></i></a>
                <div class="info clearfix">
                    <div class="product-image margin-top-5"><img alt="popup" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340" style="max-width:150px; height:auto"/></div>
                    <div class="product-info">
                        <p class="product-name"></p>
                        <p class="quantity color-main"><span>Số lượng: </span></p>
                        <p class="total-money color-main"><span>Tổng tiền: </span></p>
                    </div>
                    <div class="actions"><button class="btn  btn-primary  margin-top-5 btn-continue">Tiếp tục mua hàng</button><button class="btn btn-gray margin-top-5" onclick="window.location='/cart'">Kiểm tra giỏ hàng</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="error-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="popup-inner content">
        <div class="error-message"></div>
    </div>
</div>
<!--<div id="popup-cart" class="modal fade" role="dialog">-->
<!--    <div id="popup-cart-desktop" class="clearfix">-->
<!--        <div class="title-popup-cart"><i class="ion ion-md-notifications-outline" aria-hidden="true"></i> Bạn đã thêm <span class="cart-popup-name"></span> vào giỏ hàng</div>-->
<!--        <div class="title-quantity-popup"><a href="giohang.html" title="Giỏ hàng của bạn">Giỏ hàng của bạn có <span class="cart-popup-count"></span> sản phẩm</a></div>-->
<!--        <div class="content-popup-cart clearfix">-->
<!--            <div class="thead-popup">-->
<!--                <div style="width: 55%;" class="text-left">Sản phẩm</div>-->
<!--                <div style="width: 15%;" class="text-center">Đơn giá</div>-->
<!--                <div style="width: 15%;" class="text-center">Số lượng</div>-->
<!--                <div style="width: 15%;" class="text-center">Thành tiền</div>-->
<!--            </div>-->
<!--            <div class="tbody-popup"></div>-->
<!--            <div class="tfoot-popup">-->
<!--                <div class="tfoot-popup-1 clearfix">-->
<!--                    <div class="pull-left popupcon"><a class="button btn-continue" title="Tiếp tục mua hàng" onclick="$('#popup-cart').modal('hide');"><span><span><i class="fa fa-caret-left" aria-hidden="true"></i> Tiếp tục mua hàng</span></span></a></div>-->
<!--                    <div class="pull-right popup-total">-->
<!--                        <p>Thành tiền: <span class="total-price"></span></p>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="tfoot-popup-2 clearfix"><a class="button btn-proceed-checkout" title="Thanh toán đơn hàng" href="/checkout"><span>Thanh toán đơn hàng</span></a></div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <a class="quickview-close close-window" href="javascript:" onclick="$('#popup-cart').modal('hide');" title="Đóng"><i class="fa fa-times"></i></a>-->
<!--    </div>-->
<!--</div>-->
<div id="myModal" class="modal fade" role="dialog"></div>
<script src="js/appear.js" type="text/javascript"></script>
<script src="js/cs.script.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>
<div class="backdrop__body-backdrop___1rvky"></div>
<div class="mobile-main-menu">
    <div class="drawer-header">
        <a href="account/login">
            <div class="drawer-header--auth">
                <div class="_object"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/user.svg?1559638811340" alt="Ant Mobile" /></div>
                <div class="_body">ĐĂNG NHẬP<br>Nhận nhiều ưu đãi hơn</div>
            </div>
        </a>
    </div>
    <ul class="ul-first-menu">
        <li><a href="/account/login" title="Đăng nhập">Đăng nhập</a></li>
        <li><a href="/account/register" title="Đăng ký">Đăng ký</a></li>
    </ul>
    <div class="la-scroll-fix-infor-user">
        <div class="la-nav-menu-items">
            <div class="la-title-nav-items"><strong>Danh mục</strong></div>
            <ul class="la-nav-list-items">
                <li class="ng-scope"><a href="/" title="Trang chủ">Trang chủ</a></li>
                <li class="ng-scope"><a href="/gioi-thieu" title="Giới thiệu">Giới thiệu</a></li>
                <li class="ng-scope ng-has-child1">
                    <a href="product.html" title="Sản phẩm">Sản phẩm <i class="fa fa-plus fa1" aria-hidden="true"></i></a>
                    <ul class="ul-has-child1">
                        <li class="ng-scope ng-has-child2">
                            <a href="/dien-thoai" title="Điện thoại">Điện thoại <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/samsung" title="Samsung">Samsung</a></li>
                                <li class="ng-scope"><a href="/apple" title="Apple">Apple</a></li>
                                <li class="ng-scope"><a href="/sony" title="Sony">Sony</a></li>
                                <li class="ng-scope"><a href="/oppo" title="Oppo">Oppo</a></li>
                                <li class="ng-scope"><a href="/huawei" title="Huawei">Huawei</a></li>
                                <li class="ng-scope"><a href="/xiaomi" title="Xiaomi">Xiaomi</a></li>
                                <li class="ng-scope"><a href="/vivo" title="Vivo">Vivo</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/tablet" title="Tablet">Tablet <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/apple-ipad" title="Apple (iPad)">Apple (iPad)</a></li>
                                <li class="ng-scope"><a href="/samsung-1" title="Samsung">Samsung</a></li>
                                <li class="ng-scope"><a href="/lenovo-1" title="Lenovo">Lenovo</a></li>
                                <li class="ng-scope"><a href="/masstel" title="Masstel">Masstel</a></li>
                                <li class="ng-scope"><a href="/huawei-1" title="Huawei">Huawei</a></li>
                                <li class="ng-scope"><a href="/itel" title="Itel">Itel</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/laptop" title="Laptop">Laptop <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/apple-macbook" title="Apple (Macbook)">Apple (Macbook)</a></li>
                                <li class="ng-scope"><a href="/asus" title="Asus">Asus</a></li>
                                <li class="ng-scope"><a href="/acer" title="Acer">Acer</a></li>
                                <li class="ng-scope"><a href="/dell" title="Dell">Dell</a></li>
                                <li class="ng-scope"><a href="/hp" title="HP">HP</a></li>
                                <li class="ng-scope"><a href="/lenovo" title="Lenovo">Lenovo</a></li>
                                <li class="ng-scope"><a href="/msi" title="MSI">MSI</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope"><a href="/phu-kien" title="Phụ kiện">Phụ kiện</a></li>
                        <li class="ng-scope"><a href="/dong-ho" title="Đồng hồ">Đồng hồ</a></li>
                        <li class="ng-scope"><a href="/may-cu" title="Máy cũ">Máy cũ</a></li>
                    </ul>
                </li>
                <li class="ng-scope ng-has-child1">
                    <a href="/tin-tuc" title="Tin tức">Tin tức <i class="fa fa-plus fa1" aria-hidden="true"></i></a>
                    <ul class="ul-has-child1">
                        <li class="ng-scope ng-has-child2">
                            <a href="/" title="Sản phẩm">Sản phẩm <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/dien-thoai" title="Điện thoại">Điện thoại</a></li>
                                <li class="ng-scope"><a href="/tablet" title="Tablet">Tablet</a></li>
                                <li class="ng-scope"><a href="/laptop" title="Laptop">Laptop</a></li>
                                <li class="ng-scope"><a href="/phu-kien" title="Phụ kiện">Phụ kiện</a></li>
                                <li class="ng-scope"><a href="/dong-ho" title="Đồng hồ">Đồng hồ</a></li>
                                <li class="ng-scope"><a href="/may-cu" title="Máy cũ">Máy cũ</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope"><a href="/" title="Liên hệ">Liên hệ</a></li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/" title="Tin tức">Tin tức <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/" title="Sản phẩm">Sản phẩm</a></li>
                                <li class="ng-scope"><a href="/" title="Liên hệ">Liên hệ</a></li>
                                <li class="ng-scope"><a href="/" title="Tin tức">Tin tức</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="ng-scope"><a href="/lien-he" title="Liên hệ">Liên hệ</a></li>
            </ul>
        </div>
    </div>
    <ul class="mobile-support">
        <li>
            <div class="drawer-text-support">HỖ TRỢ</div>
        </li>
        <li><i class="fa fa-phone" aria-hidden="true"></i> HOTLINE: <a href="tel:18006750" title="18006750">1800 6750</a></li>
        <li><i class="fa fa-envelope" aria-hidden="true"></i> EMAIL: <a href="mailto:baotrung304@gmail.com" title="baotrung304@gmail.com">baotrung304@gmail.com</a></li>
    </ul>
</div>
<script type="text/javascript">
    WebFontConfig = {
        custom: {
            families: ['FontAwesome'],
            urls: ['https://use.fontawesome.com/releases/v5.7.2/css/all.css']
        }
    };
    (function() {
        var wf = document.createElement('script');
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
    })();
</script>
<script>
    $(document).ready(function() {
        deferimg('#sync1 img', 10);
        var total_banner = 5;
        var sync1 = $("#sync1");
        var sync2 = $("#sync2");
        var slidesPerPage = (total_banner < 5) ? total_banner : 5;
        var syncedSecondary = true;
        sync1.owlCarousel({
            items : 1,
            slideSpeed : 2000,
            nav: true,
            autoplay: true,
            dots: false,
            loop: true,
            responsiveRefreshRate : 200,
            navText: "",
        }).on('changed.owl.carousel', syncPosition);
        sync2
            .on('initialized.owl.carousel', function () {
                sync2.find(".owl-item").eq(0).addClass("current");
            })
            .owlCarousel({
                items : slidesPerPage,
                dots: false,
                nav: false,
                smartSpeed: 200,
                slideSpeed : 500,
                slideBy: slidesPerPage,
                responsiveRefreshRate : 100
            }).on('changed.owl.carousel', syncPosition2);
        function syncPosition(el) {
            var count = el.item.count-1;
            var current = Math.round(el.item.index - (el.item.count/2) - .5);
            if(current < 0) {
                current = count;
            }
            if(current > count){
                current = 0;
            }
            sync2
                .find(".owl-item")
                .removeClass("current")
                .eq(current)
                .addClass("current");
            var onscreen = sync2.find('.owl-item.active').length - 1;
            var start = sync2.find('.owl-item.active').first().index();
            var end = sync2.find('.owl-item.active').last().index();
            if (current > end) {
                sync2.data('owl.carousel').to(current, 100, true);
            }
            if (current < start) {
                sync2.data('owl.carousel').to(current - onscreen, 100, true);
            }
        }
        function syncPosition2(el) {
            if(syncedSecondary) {
                var number = el.item.index;
                sync1.data('owl.carousel').to(number, 100, true);
            }
        }
        sync2.on("click", ".owl-item", function(e){
            e.preventDefault();
            var number = $(this).index();
            sync1.data('owl.carousel').to(number, 300, true);
        });
    });
</script>
<div class="support-cart mini-cart hidden-sm hidden-xs" >
	<a class="btn-support-cart" href="<%=Utils.fullPath("ShowCart")%>" >
		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 435.104 435.104" style="enable-background:new 0 0 435.104 435.104;" xml:space="preserve" width="30px" height="30px">
               <g>
				   <circle cx="154.112" cy="377.684" r="52.736" data-original="#000000" class="active-path" data-old_color="#Ffffff" fill="#FFFFFF"/>
				   <path d="M323.072,324.436L323.072,324.436c-29.267-2.88-55.327,18.51-58.207,47.777c-2.88,29.267,18.51,55.327,47.777,58.207     c3.468,0.341,6.962,0.341,10.43,0c29.267-2.88,50.657-28.94,47.777-58.207C368.361,346.928,348.356,326.924,323.072,324.436z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
				   <path d="M431.616,123.732c-2.62-3.923-7.059-6.239-11.776-6.144h-58.368v-1.024C361.476,54.637,311.278,4.432,249.351,4.428     C187.425,4.424,137.22,54.622,137.216,116.549c0,0.005,0,0.01,0,0.015v1.024h-43.52L78.848,50.004     C77.199,43.129,71.07,38.268,64,38.228H0v30.72h51.712l47.616,218.624c1.257,7.188,7.552,12.397,14.848,12.288h267.776     c7.07-0.041,13.198-4.901,14.848-11.776l37.888-151.552C435.799,132.019,434.654,127.248,431.616,123.732z M249.344,197.972     c-44.96,0-81.408-36.448-81.408-81.408s36.448-81.408,81.408-81.408s81.408,36.448,81.408,81.408     C330.473,161.408,294.188,197.692,249.344,197.972z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
				   <path d="M237.056,118.1l-28.16-28.672l-22.016,21.504l38.912,39.424c2.836,2.894,6.7,4.55,10.752,4.608     c3.999,0.196,7.897-1.289,10.752-4.096l64.512-60.928l-20.992-22.528L237.056,118.1z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
			   </g>
            </svg>
		<div class="animated infinite zoomIn kenit-alo-circle"></div>
		<div class="animated infinite pulse kenit-alo-circle-fill"></div>
		<% GioHang c =(GioHang) session.getAttribute("Cart");
			int count = c == null ? 0 : c.list().size();
		%>
		<span class="cnt crl-bg count_item_pr"><%=count%></span>

	</a>
	<div class="top-cart-content hidden-md hidden-sm hidden-xs">
		<ul>

		</ul>

	</div>
</div>
<div id="menu-overlay" class=""></div>
</body>
</html>
