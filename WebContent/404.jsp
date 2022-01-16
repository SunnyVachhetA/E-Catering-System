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
                <div style="background-image: url(assets/images/topbg.jpg);" class="fixed-bg"></div>
                <div class="error-page-wrapper text-center">
                    <div class="error-page-inner">
                        <h1 itemprop="headline">404 <span class="red-clr">Error</span></h1>
                        <h4 itemprop="headline"><span class="yellow-clr">Oops,</span> This Page Not Found!</h4>
                        <p itemprop="description">Vivam pulput vehic Mauris porttitor erovel sapien Sed ut persp tatem semper mi, at ultricies odio.</p>
                        <a class="brd-rd2 yellow-bg" href="http://localhost:8080/E-cateringsystem/" title="" itemprop="url"><i class="fa fa-home"></i> BACK TO HOME</a>
                        <form class="search-frm">
                            <input class="brd-rd3" type="text" placeholder="SEARCH KEYWORD">
                            <button class="yellow-bg" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div><!-- Error Page Wrapper -->
            </div>
        </section>
        
        <%@include file = "Footer.jsp" %>
        <%@include file = "LogRegistration.jsp" %>
        
            </main><!-- Main Wrapper -->

	<%@include file = "commonjs.jsp" %>
</body>	

</html>