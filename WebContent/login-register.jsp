<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file = "commoncss.jsp" %>
    </head>
<body itemscope>
    <main>
        <%@include file = "Topbar.jsp" %>
        <section>
            <div class="block">
                <div class="fixed-bg" style="background-image: url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
                    <div class="col-md-12 col-sm-12 col-lg-12">
                        <div class="page-title-inner">
                            <h1 itemprop="headline">Login & Register</h1>
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
                    <li class="breadcrumb-item active">Login & Register</li>
                </ol>
            </div>
        </div>

        <section>
            <div class="block top-padd30">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="login-register-wrapper">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12 col-lg-6">
                                        <div class="sign-popup-wrapper brd-rd5">
                                            <div class="sign-popup-inner brd-rd5">
                                                <div class="sign-popup-title text-center">
                                                    <h4 itemprop="headline">SIGN IN</h4>
                                                    <span>with your social network</span>
                                                </div>
                                                <div class="popup-social text-center">
                                                    <a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
                                                    <a class="google brd-rd3" href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i> Google</a>
                                                    <a class="twitter brd-rd3" href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
                                                </div>
                                                <span class="popup-seprator text-center"><i class="brd-rd50">or</i></span>
                                                <form class="sign-form">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="text" placeholder="Username or Email">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="password" placeholder="Password">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <button class="red-bg brd-rd3" type="submit">SIGN IN</button>
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <a class="sign-btn" href="#" title="" itemprop="url">Not a member? Sign up</a>
                                                            <a class="recover-btn" href="#" title="" itemprop="url">Recover my password</a>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 col-lg-6">
                                        <div class="sign-popup-wrapper brd-rd5">
                                            <div class="sign-popup-inner brd-rd5">
                                                <div class="sign-popup-title text-center">
                                                    <h4 itemprop="headline">SIGN UP</h4>
                                                    <span>with your social network</span>
                                                </div>
                                                <div class="popup-social text-center">
                                                    <a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
                                                    <a class="google brd-rd3" href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i> Google</a>
                                                    <a class="twitter brd-rd3" href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
                                                </div>
                                                <span class="popup-seprator text-center"><i class="brd-rd50">or</i></span>
                                                <form class="sign-form">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="text" placeholder="Name" name = "name">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="email" placeholder="Email" name = "email">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="text" placeholder="Contact Number" name = "contact">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="password" placeholder="Password" name = "password">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <input class="brd-rd3" type="password" placeholder="Confirm Password" name = "copassword">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <button class="red-bg brd-rd3" type="submit">REGISTER NOW</button>
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                                                            <a class="sign-btn" href="#" title="" itemprop="url">Already Registered? Sign in</a>
                                                            <a class="recover-btn" href="#" title="" itemprop="url">Recover my password</a>
                                                        </div>
                                                    </div>
                                                </form>
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

    <%@include file = "commonjs.jsp" %>
</body>	

</html>