<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="utils.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Đăng ký - Phone Group 02</title>
	<script src="js/defer_plus.js" type="text/javascript"></script>
	<script>deferscript('js/polyfill.js', 'polyfill-js', 1)</script>
	<meta name="description" content="">
	<meta name="keywords" content="Kiến vàng, Ant Theme"/>
	<link rel="canonical" href="https://ant-mobile.bizwebvietnam.net"/>
	<meta name='revisit-after' content='1 days'/>
	<meta name="robots" content="noodp,index,follow"/>
	<link rel="icon" href="https://images.cooltext.com/5362564.png"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--    <link rel="icon" href="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/favicon.png?1559638811340" type="image/x-icon" />-->
	<meta property="og:type" content="website">
	<meta property="og:title" content="Ant Mobile">
	<meta property="og:image"
		  content="https:https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340">
	<meta property="og:image:secure_url"
		  content="https:https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340">
	<meta property="og:description" content="">
	<meta property="og:url" content="https://ant-mobile.bizwebvietnam.net">
	<meta property="og:site_name" content="Ant Mobile">
	<link href="css/bootstrap.scss.css" rel="stylesheet" type="text/css"/>
	<link href="css/plugin.scss.css" rel="stylesheet" type="text/css"/>
	<link href="css/base.scss.css" rel="stylesheet" type="text/css"/>
	<link href="css/style.css" rel="stylesheet" type="text/css"/>
	<link href="css/custom.css" rel="stylesheet" type="text/css"/>
	<!--    <link rel="stylesheet" href="css/loginstyle.css">-->
</head>
<body>
<%
	String fullname_error = "";
	String name_error = "";
	String email_error = "";
	String password_error = "";
	String repass_error = "";
	
	if (request.getAttribute("fullname_error") != null) {
		fullname_error = (String) request.getAttribute("fullname_error");
	}
	if (request.getAttribute("name_error") != null) {
		name_error = (String) request.getAttribute("name_error");
	}
	if (request.getAttribute("email_error") != null) {
		email_error = (String) request.getAttribute("email_error");
	}
	if (request.getAttribute("password_err") != null) {
		password_error = (String) request.getAttribute("password_err");
	}
	if (request.getAttribute("repass_err") != null) {
		repass_error = (String) request.getAttribute("repass_err");
	}
	
	String fullname = "";
	String name = "";
	String email = "";
	String password = "";
	String re_password = "";
	
	if (request.getAttribute("fullname") != null) {
		fullname = (String) request.getAttribute("fullname");
	}
	if (request.getAttribute("name") != null) {
		name = (String) request.getAttribute("name");
	}
	if (request.getAttribute("email") != null) {
		email = (String) request.getAttribute("email");
	}
	if (request.getAttribute("password") != null) {
		password = (String) request.getAttribute("password");
	}
	if (request.getAttribute("repass") != null) {
		re_password = (String) request.getAttribute("repass");
	}

	String yeuCauXacThuc = (String) request.getAttribute("yeuCauXacThuc");

%>
<jsp:include page="header.jsp"/>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/option-selectors.js" type="text/javascript"></script>
<script src="js/api.jquery.js?4" type="text/javascript"></script>
<script src="js/owl.carousel.min.js" type="text/javascript"></script>
<div class="content-login">
	<div class="left-login">
		<div class="img-left-login">
			<img height="600px" width="350px"
				 src="http://marketingbox.vn/upload/image/%C4%90%E1%BA%B9p-%C4%90%E1%BB%99c-%C4%90%E1%BB%89nh/12-poster/03-thiet-ke-poster-quang-cao-may-tinh.jpg">
		</div>
	</div>

	<div class="form-login-regeter">
        <% if(yeuCauXacThuc == null) {%>
		<%--Use case: Đăng ký.
		B2.1: Hệ thống hiển thị form để người dùng nhập thông tin cần thiết
		(tên đăng nhập, email, mật khẩu, nhập lại mật khẩu).--%>
		<form class="form-login-regeter" action="<%=Utils.fullPath("dangky")%>" method="POST">
			<div class="imgcontainer ">
				<div class="option">
					<div class="w3-content w3-section" style="max-width:780px">
						<img class="mySlides" src="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(89).png"
							 style="width:100%">
						<img class="mySlides" src="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(100).png"
							 style="width:100%">
						<img class="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(85).png" style="width:100%">

					</div>

				</div>
			</div>

			<div class=" login-geterform">
				<label><b>Họ và tên</b>
					<p style="color: red"><%=fullname_error%>
					</p></label>
				<input class=" login-geter1" type="text" placeholder="Nhập họ tên" value="<%=fullname%>" name="fullname"
					   required>

				<label><b>Tên đăng nhập</b>
					<p style="color: red"><%=name_error%>
					</p></label>
				<input class=" login-geter1" type="text" placeholder="Tên đăng nhập" value="<%=name%>" name="uname"
					   required>

				<label><b>Email</b>
					<p style="color: red"><%=email_error%>
					</p></label>
				<input class=" login-geter1" type="text" placeholder="Email hoặc Số điện thoại" value="<%=email%>"
					   name="uemail" required>

				<label><b>Mật khẩu</b>
					<p style="color: red"><%=password_error%>
					</p></label>
				<input class=" login-geter1" type="password" placeholder="Nhập mậu khẩu" name="pwd" required>

				<label><b>Nhập lại mật khẩu</b>
					<p style="color: red"><%=repass_error%>
					</p></label>
				<input class=" login-geter1" type="password" placeholder="Nhập lại mật khẩu" name="pwd1" required>
				<input type="hidden" value="xacThucMail" name="tacVu">
				<button class="login-buton" type="submit">Đăng kí</button>


                <div class="container-loginadd">
                    <a class="cancelbtn" href="<%=Utils.fullPath("dangnhap")%>">Đăng nhập</a>
				</div>

			</div>


		</form>
        <%} else {%>
        <div class="alert alert-info" style="margin-top: 140px; padding: 8px">
            <h5><%=yeuCauXacThuc%></h5>
        </div>
        <% }%>
	</div>
	<div class="right-login">
		<div class="img-left-login">
			<img height="600px" width="350px"
				 src="https://bitex.com.vn/vnt_upload/File/Image/tintuc2014/don_giang_sinh_ring_dong_ho_cung_Bitex.png">
		</div>
	</div>
</div>
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
								<li><a>Gọi mua hàng 1800.1060 (7:30 - 22:00)</a></li>
								<li><a>Gọi khiếu nại 1800.1062 (8:00 - 21:30)</a></li>
								<li><a>Gọi bảo hành 1800.1064 (8:00 - 21:00)</a></li>
								<li><a>Kỹ thuật 1800.1763 (7:30 - 22:00)</a></li>
								<!--                                <li><a href="/lien-he">Liên hệ</a></li>-->
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="footer-widget">
							<h3><span>Liên hệ với chúng tôi</span></h3>
							<ul class="list-menu">
								<li><a><b>Địa chỉ: </b>kp6, P.Linh Trung, Q.Thủ Đưc, HCM</a></li>
								<li><a><b>Sđt: </b> 0964024229</a></li>
								<li><a><b>Email: </b>Team02@gmail.com</a></li>
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
									<img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_1.png?1559638811340"
										 alt="Phương thức thanh toán"/>
								</li>
								<li class="item">
									<img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_2.png?1559638811340"
										 alt="Phương thức thanh toán"/>
								</li>
								<li class="item">
									<img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_3.png?1559638811340"
										 alt="Phương thức thanh toán"/>
								</li>
								<li class="item">
									<img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_4.png?1559638811340"
										 alt="Phương thức thanh toán"/>
								</li>
								<li class="item">
									<img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/payment_5.png?1559638811340"
										 alt="Phương thức thanh toán"/>
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
										<svg xmlns="http://www.w3.org/2000/svg"
											 xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px"
											 viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;"
											 xml:space="preserve" width="15px" height="15px">
                                       <g>
										   <path d="M612,116.258c-22.525,9.981-46.694,16.75-72.088,19.772c25.929-15.527,45.777-40.155,55.184-69.411    c-24.322,14.379-51.169,24.82-79.775,30.48c-22.907-24.437-55.49-39.658-91.63-39.658c-69.334,0-125.551,56.217-125.551,125.513    c0,9.828,1.109,19.427,3.251,28.606C197.065,206.32,104.556,156.337,42.641,80.386c-10.823,18.51-16.98,40.078-16.98,63.101    c0,43.559,22.181,81.993,55.835,104.479c-20.575-0.688-39.926-6.348-56.867-15.756v1.568c0,60.806,43.291,111.554,100.693,123.104    c-10.517,2.83-21.607,4.398-33.08,4.398c-8.107,0-15.947-0.803-23.634-2.333c15.985,49.907,62.336,86.199,117.253,87.194    c-42.947,33.654-97.099,53.655-155.916,53.655c-10.134,0-20.116-0.612-29.944-1.721c55.567,35.681,121.536,56.485,192.438,56.485    c230.948,0,357.188-191.291,357.188-357.188l-0.421-16.253C573.872,163.526,595.211,141.422,612,116.258z"
												 data-original="#010002" class="active-path" data-old_color="#010002"
												 fill="#FFFFFF"/>
									   </g>
                                    </svg>
									</a>
								</li>
								<li class="facebook">
									<a href="https://www.facebook.com/" target="_blank">
										<svg xmlns="http://www.w3.org/2000/svg"
											 xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px"
											 width="15px" height="15px" viewBox="0 0 430.113 430.114"
											 style="enable-background:new 0 0 430.113 430.114;" xml:space="preserve">
                                       <path id="Facebook"
											 d="M158.081,83.3c0,10.839,0,59.218,0,59.218h-43.385v72.412h43.385v215.183h89.122V214.936h59.805   c0,0,5.601-34.721,8.316-72.685c-7.784,0-67.784,0-67.784,0s0-42.127,0-49.511c0-7.4,9.717-17.354,19.321-17.354   c9.586,0,29.818,0,48.557,0c0-9.859,0-43.924,0-75.385c-25.016,0-53.476,0-66.021,0C155.878-0.004,158.081,72.48,158.081,83.3z"
											 data-original="#000000" class="active-path" data-old_color="#000000"
											 fill="#FFFFFF"/>
                                    </svg>
									</a>
								</li>
								<li class="pinterest">
									<a href="https://www.pinterest.com/" target="_blank">
										<svg xmlns="http://www.w3.org/2000/svg"
											 xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px"
											 viewBox="0 0 310.05 310.05"
											 style="enable-background:new 0 0 310.05 310.05;" xml:space="preserve"
											 width="15px" height="15px">
                                       <path id="XMLID_799_"
											 d="M245.265,31.772C223.923,11.284,194.388,0,162.101,0c-49.32,0-79.654,20.217-96.416,37.176   c-20.658,20.9-32.504,48.651-32.504,76.139c0,34.513,14.436,61.003,38.611,70.858c1.623,0.665,3.256,1,4.857,1   c5.1,0,9.141-3.337,10.541-8.69c0.816-3.071,2.707-10.647,3.529-13.936c1.76-6.495,0.338-9.619-3.5-14.142   c-6.992-8.273-10.248-18.056-10.248-30.788c0-37.818,28.16-78.011,80.352-78.011c41.412,0,67.137,23.537,67.137,61.425   c0,23.909-5.15,46.051-14.504,62.35c-6.5,11.325-17.93,24.825-35.477,24.825c-7.588,0-14.404-3.117-18.705-8.551   c-4.063-5.137-5.402-11.773-3.768-18.689c1.846-7.814,4.363-15.965,6.799-23.845c4.443-14.392,8.643-27.985,8.643-38.83   c0-18.55-11.404-31.014-28.375-31.014c-21.568,0-38.465,21.906-38.465,49.871c0,13.715,3.645,23.973,5.295,27.912   c-2.717,11.512-18.865,79.953-21.928,92.859c-1.771,7.534-12.44,67.039,5.219,71.784c19.841,5.331,37.576-52.623,39.381-59.172   c1.463-5.326,6.582-25.465,9.719-37.845c9.578,9.226,25,15.463,40.006,15.463c28.289,0,53.73-12.73,71.637-35.843   c17.367-22.418,26.932-53.664,26.932-87.978C276.869,77.502,265.349,51.056,245.265,31.772z"
											 data-original="#000000" class="active-path" data-old_color="#000000"
											 fill="#FFFFFF"/>
                                    </svg>
									</a>
								</li>
								<li class="google">
									<a href="https://www.google.com/" target="_blank">
										<svg xmlns="http://www.w3.org/2000/svg"
											 xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px"
											 viewBox="0 0 491.858 491.858"
											 style="enable-background:new 0 0 491.858 491.858;" xml:space="preserve"
											 width="15px" height="15px" class="">
                                       <path d="M377.472,224.957H201.319v58.718H308.79c-16.032,51.048-63.714,88.077-120.055,88.077     c-69.492,0-125.823-56.335-125.823-125.824c0-69.492,56.333-125.823,125.823-125.823c34.994,0,66.645,14.289,89.452,37.346     l42.622-46.328c-34.04-33.355-80.65-53.929-132.074-53.929C84.5,57.193,0,141.693,0,245.928s84.5,188.737,188.736,188.737     c91.307,0,171.248-64.844,188.737-150.989v-58.718L377.472,224.957L377.472,224.957z"
											 data-original="#000000" class="active-path" data-old_color="#000000"
											 fill="#FFFFFF"/>
											<polygon
													points="491.858,224.857 455.827,224.857 455.827,188.826 424.941,188.826 424.941,224.857 388.91,224.857      388.91,255.74 424.941,255.74 424.941,291.772 455.827,291.772 455.827,255.74 491.858,255.74    "
													data-original="#000000" class="active-path" data-old_color="#000000"
													fill="#FFFFFF"/>
                                    </svg>
									</a>
								</li>
								<li class="instagram">
									<a href="https://www.instagram.com/" target="_blank">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="15px"
											 height="15px">
											<path d="m75 512h362c41.355469 0 75-33.644531 75-75v-362c0-41.355469-33.644531-75-75-75h-362c-41.355469 0-75 33.644531-75 75v362c0 41.355469 33.644531 75 75 75zm-45-437c0-24.8125 20.1875-45 45-45h362c24.8125 0 45 20.1875 45 45v362c0 24.8125-20.1875 45-45 45h-362c-24.8125 0-45-20.1875-45-45zm0 0"
												  data-original="#000000" class="active-path" data-old_color="#000000"
												  fill="#FFFFFF"/>
											<path d="m256 391c74.4375 0 135-60.5625 135-135s-60.5625-135-135-135-135 60.5625-135 135 60.5625 135 135 135zm0-240c57.898438 0 105 47.101562 105 105s-47.101562 105-105 105-105-47.101562-105-105 47.101562-105 105-105zm0 0"
												  data-original="#000000" class="active-path" data-old_color="#000000"
												  fill="#FFFFFF"/>
											<path d="m406 151c24.8125 0 45-20.1875 45-45s-20.1875-45-45-45-45 20.1875-45 45 20.1875 45 45 45zm0-60c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0"
												  data-original="#000000" class="active-path" data-old_color="#000000"
												  fill="#FFFFFF"/>
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
							<form action="//facebook.us7.list-manage.com/subscribe/post?u=97ba6d3ba28239250923925a8&id=4ef3a755a8"
								  method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
								  target="_blank">
								<div class="input-group">
									<input type="email" class="form-control" value="" placeholder="Email của bạn"
										   name="EMAIL" id="mail">
									<span class="input-group-btn">
                                 <button class="btn btn-default" name="subscribe" id="subscribe"
										 type="submit">Đăng ký</button>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"
		type="text/javascript"></script>
<div class="ajax-load">
         <span class="loading-icon">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
				 y="0px"
				 width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;"
				 xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s"
						   repeatCount="indefinite"/>
               </rect>
               <rect x="8" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s"
						   repeatCount="indefinite"/>
               </rect>
               <rect x="16" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s"
						   repeatCount="indefinite"/>
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s"
						   repeatCount="indefinite"/>
               </rect>
            </svg>
         </span>
</div>
<div class="loading awe-popup">
	<div class="overlay"></div>
	<div class="loader" title="2">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			 width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;"
			 xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
				   <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s"
							repeatCount="indefinite"/>
				   <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s"
							repeatCount="indefinite"/>
				   <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s"
							repeatCount="indefinite"/>
			   </rect>
			<rect x="8" y="10" width="4" height="10" fill="#333" opacity="0.2">
				<animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s"
						 repeatCount="indefinite"/>
				<animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s"
						 repeatCount="indefinite"/>
				<animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s"
						 repeatCount="indefinite"/>
			</rect>
			<rect x="16" y="10" width="4" height="10" fill="#333" opacity="0.2">
				<animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s"
						 repeatCount="indefinite"/>
				<animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s"
						 repeatCount="indefinite"/>
				<animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s"
						 repeatCount="indefinite"/>
			</rect>
            </svg>
	</div>
</div>
<div class="addcart-popup product-popup awe-popup">
	<div class="overlay no-background"></div>
	<div class="content">
		<div class="row row-noGutter">
			<div class="col-xl-6 col-xs-12">
				<div class="btn btn-full btn-primary a-left popup-title"><i class="fa fa-check"></i>Thêm vào giỏ hàng
					thành công
				</div>
				<a href="javascript:void(0)" class="close-window close-popup"><i class="fa fa-close"></i></a>
				<div class="info clearfix">
					<div class="product-image margin-top-5"><img alt="popup"
																 src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340"
																 style="max-width:150px; height:auto"/></div>
					<div class="product-info">
						<p class="product-name"></p>
						<p class="quantity color-main"><span>Số lượng: </span></p>
						<p class="total-money color-main"><span>Tổng tiền: </span></p>
					</div>
					<div class="actions">
						<button class="btn  btn-primary  margin-top-5 btn-continue">Tiếp tục mua hàng</button>
						<button class="btn btn-gray margin-top-5" onclick="window.location='/cart'">Kiểm tra giỏ hàng
						</button>
					</div>
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
				<div class="_object"><img
						src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/user.svg?1559638811340"
						alt="Ant Mobile"/></div>
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
					<a href="product.html" title="Sản phẩm">Sản phẩm <i class="fa fa-plus fa1"
																		aria-hidden="true"></i></a>
					<ul class="ul-has-child1">
						<li class="ng-scope ng-has-child2">
							<a href="/dien-thoai" title="Điện thoại">Điện thoại <i class="fa fa-plus fa2"
																				   aria-hidden="true"></i></a>
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
							<a href="/tablet" title="Tablet">Tablet <i class="fa fa-plus fa2"
																	   aria-hidden="true"></i></a>
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
							<a href="/laptop" title="Laptop">Laptop <i class="fa fa-plus fa2"
																	   aria-hidden="true"></i></a>
							<ul class="ul-has-child2">
								<li class="ng-scope"><a href="/apple-macbook" title="Apple (Macbook)">Apple
									(Macbook)</a></li>
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
		<li><i class="fa fa-phone" aria-hidden="true"></i> HOTLINE: <a href="tel:18006750" title="18006750">1800
			6750</a></li>
		<li><i class="fa fa-envelope" aria-hidden="true"></i> EMAIL: <a href="mailto:baotrung304@gmail.com"
																		title="baotrung304@gmail.com">baotrung304@gmail.com</a>
		</li>
	</ul>
</div>
<script type="text/javascript">
	WebFontConfig = {
		custom: {
			families: ['FontAwesome'],
			urls: ['https://use.fontawesome.com/releases/v5.7.2/css/all.css']
		}
	};
	(function () {
		var wf = document.createElement('script');
		wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
		wf.type = 'text/javascript';
		wf.async = 'true';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(wf, s);
	})();
</script>
<script>
	$(document).ready(function () {
		deferimg('#sync1 img', 10);
		var total_banner = 5;
		var sync1 = $("#sync1");
		var sync2 = $("#sync2");
		var slidesPerPage = (total_banner < 5) ? total_banner : 5;
		var syncedSecondary = true;
		sync1.owlCarousel({
			items: 1,
			slideSpeed: 2000,
			nav: true,
			autoplay: true,
			dots: false,
			loop: true,
			responsiveRefreshRate: 200,
			navText: "",
		}).on('changed.owl.carousel', syncPosition);
		sync2
				.on('initialized.owl.carousel', function () {
					sync2.find(".owl-item").eq(0).addClass("current");
				})
				.owlCarousel({
					items: slidesPerPage,
					dots: false,
					nav: false,
					smartSpeed: 200,
					slideSpeed: 500,
					slideBy: slidesPerPage,
					responsiveRefreshRate: 100
				}).on('changed.owl.carousel', syncPosition2);

		function syncPosition(el) {
			var count = el.item.count - 1;
			var current = Math.round(el.item.index - (el.item.count / 2) - .5);
			if (current < 0) {
				current = count;
			}
			if (current > count) {
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
			if (syncedSecondary) {
				var number = el.item.index;
				sync1.data('owl.carousel').to(number, 100, true);
			}
		}

		sync2.on("click", ".owl-item", function (e) {
			e.preventDefault();
			var number = $(this).index();
			sync1.data('owl.carousel').to(number, 300, true);
		});
	});
</script>
<!--<div class="support-cart mini-cart hidden-sm hidden-xs">-->
<!--    <a class="btn-support-cart" href="giohang.html">-->
<!--        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 435.104 435.104" style="enable-background:new 0 0 435.104 435.104;" xml:space="preserve" width="30px" height="30px">-->
<!--               <g>-->
<!--                  <circle cx="154.112" cy="377.684" r="52.736" data-original="#000000" class="active-path" data-old_color="#Ffffff" fill="#FFFFFF"/>-->
<!--                   <path d="M323.072,324.436L323.072,324.436c-29.267-2.88-55.327,18.51-58.207,47.777c-2.88,29.267,18.51,55.327,47.777,58.207     c3.468,0.341,6.962,0.341,10.43,0c29.267-2.88,50.657-28.94,47.777-58.207C368.361,346.928,348.356,326.924,323.072,324.436z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>-->
<!--                   <path d="M431.616,123.732c-2.62-3.923-7.059-6.239-11.776-6.144h-58.368v-1.024C361.476,54.637,311.278,4.432,249.351,4.428     C187.425,4.424,137.22,54.622,137.216,116.549c0,0.005,0,0.01,0,0.015v1.024h-43.52L78.848,50.004     C77.199,43.129,71.07,38.268,64,38.228H0v30.72h51.712l47.616,218.624c1.257,7.188,7.552,12.397,14.848,12.288h267.776     c7.07-0.041,13.198-4.901,14.848-11.776l37.888-151.552C435.799,132.019,434.654,127.248,431.616,123.732z M249.344,197.972     c-44.96,0-81.408-36.448-81.408-81.408s36.448-81.408,81.408-81.408s81.408,36.448,81.408,81.408     C330.473,161.408,294.188,197.692,249.344,197.972z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>-->
<!--                   <path d="M237.056,118.1l-28.16-28.672l-22.016,21.504l38.912,39.424c2.836,2.894,6.7,4.55,10.752,4.608     c3.999,0.196,7.897-1.289,10.752-4.096l64.512-60.928l-20.992-22.528L237.056,118.1z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>-->
<!--               </g>-->
<!--            </svg>-->
<!--        <div class="animated infinite zoomIn kenit-alo-circle"></div>-->
<!--        <div class="animated infinite pulse kenit-alo-circle-fill"></div>-->
<!--        <span class="cnt crl-bg count_item_pr">1</span>-->
<!--    </a>-->

<!--    <div class="top-cart-content hidden-md hidden-sm hidden-xs">-->
<!--        <ul>-->
<!--            <div id="popup-cart">-->
<!--                <div id="popup-cart-desktop" class="clearfix">-->
<!--                    <div class="title-popup-cart"><i class="ion ion-md-notifications-outline" aria-hidden="true"></i> Bạn đã thêm <span class="cart-popup-name"></span> vào giỏ hàng</div>-->
<!--                    <div class="title-quantity-popup"><a href="giohang.html" title="Giỏ hàng của bạn">Giỏ hàng của bạn có <span class="cart-popup-count"></span> sản phẩm</a></div>-->
<!--                    <div class="content-popup-cart clearfix">-->
<!--                        <div class="thead-popup">-->
<!--                            <div style="width: 55%;" class="text-left">Sản phẩm</div>-->
<!--                            <div style="width: 15%;" class="text-center">Đơn giá</div>-->
<!--                            <div style="width: 15%;" class="text-center">Số lượng</div>-->
<!--                            <div style="width: 15%;" class="text-center">Thành tiền</div>-->
<!--                            <div style="width: 55%;" class="text-left">Laptop Dell Inspiron</div>-->
<!--                            <div style="width: 15%;" class="text-center">17.390.000đ</div>-->
<!--                            <div style="width: 15%;" class="text-center">1</div>-->
<!--                            <div style="width: 15%;" class="text-center">17.390.000đ</div>-->
<!--                        </div>-->
<!--                        <div class="tbody-popup"></div>-->
<!--                        <div class="tfoot-popup">-->
<!--                            <div class="tfoot-popup-1 clearfix">-->
<!--                                <div class="pull-left popupcon"><a href="index.html" class="button btn-continue" title="Tiếp tục mua hàng" onclick="$('#popup-cart').modal('hide');"><span><span><i class="fa fa-caret-left" aria-hidden="true"></i> Tiếp tục mua hàng</span></span></a></div>-->
<!--                                <div class="pull-right popup-total">-->
<!--                                    <p>Thành tiền: <span class="total-price"></span> 17.390.000đ</p>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="tfoot-popup-2 clearfix"><a class="button btn-proceed-checkout" title="Thanh toán đơn hàng" href="giohang.html"><span>Thanh toán đơn hàng</span></a></div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <a class="quickview-close close-window" href="javascript:" onclick="$('#popup-cart').modal('hide');" title="Đóng"><i class="fa fa-times"></i></a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </ul>-->
<!--    </div>-->

<!--</div>-->
<div id="menu-overlay" class=""></div>
<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 3000); // Change image every 2 seconds
	}
</script>
</body>
</html>
