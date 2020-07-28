<%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/6
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- META -->
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- TITLE -->
    <title>MyVersity.com</title>

    <!-- Main StyleSheet -->
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="style-responsive.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
    <link rel="stylesheet" href="css/libs/animate.css">

    <style>

        a{text-decoration:none}

        a:hover{text-decoration:none}

    </style> <!--去除超链接下划线-->

    <!-- bxSlider CSS file -->
    <link href="css/jquery.bxslider.css" rel="stylesheet" />


    <!-- LayerSlider stylesheet -->
    <link rel="stylesheet" href="layerslider/css/layerslider.css" type="text/css">
    <!-- External libraries: jQuery & GreenSock -->
    <script src="layerslider/js/jquery.js" type="text/javascript"></script>
    <script src="layerslider/js/greensock.js" type="text/javascript"></script>
    <!-- LayerSlider script files -->
    <script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
    <script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    <!--<script>
        function sout() {
            <%
            //session.removeAttribute("username");//点击退出时，销毁会话
            //response.sendRedirect("home.jsp");
            %>
        }
    </script>-->


    <!-- bxSlider Javascript file -->
    <script src="js/jquery.bxslider.js"></script>
    <script>
        $(document).ready(function(){
            $('.bxslider').bxSlider({

                pager: false,
                controls: true,
                auto: true


            });
        });
    </script>



    <link rel="stylesheet" type="text/css" href="lightbox/jquery.fancybox.css" media="screen" />
    <script src="lightbox/jquery.fancybox.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $('.fancybox').fancybox();

        });
    </script>


    <!-- GOTO TOP JQUERY -->
    <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() != 0) {
                    $('#gotop').fadeIn();
                } else {
                    $('#gotop').fadeOut();
                }
            });

            $('#gotop').click(function() {
                $('body,html').animate({scrollTop:0},800);
            });
        });
    </script>



    <!-- HEADER JQUERY -->
    <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() >= 200) {
                    $('.header').addClass("header_fix");
                } else {
                    $('.header').removeClass("header_fix");
                }
            });
        });
    </script>


    <script type="text/javascript">

        if($(window).width() <= 900){
            $(document).ready(function() {



                $('.mobile .title').click(function() {

                    $(this).next("ul").slideToggle();
                    $(this).toggleClass("minus");

                });



            });

        }
    </script>

    <script>
        function exitSystem() {
            var ok = confirm("Are you sure you want to exit？");
            if (ok){
            }
        }
    </script>


</head>

<body>



<div class="header">
<div class="container">

    <a href="#" class="logo"><img src="images/logo.png" alt="" /></a>

    <div class="nav mobile">
        <div class="title">Menu <span class="fa "></span></div>
        <ul>
            <li><a href="allcourse.jsp">Courses</a></li>
            <li><a href="#features">Club</a></li>
            <li><a href="#testimonials_part">Certificate employment </a></li>
            <li><a href="#pricing_part">cooperation</a></li>
            <!--<li><a href="login and reg.jsp">Sign In</a></li>-->
            <li>
                <%// String Username = request.getSession().getAttribute("username").toString();%><!--获取已登录的用户名，并显示-->
                    <a href="info.jsp">Welcome ，<%=session.getAttribute("username")%></a>
                </li>
                <li>
                    <a href="logout.jsp" onclick="exitSystem()">Sign out</a>
                </li>
            </ul>
        </div>

    </div>
</div>




<div class="wrapper">
    <div class="slider_main">
        <div id="full-slider-wrapper">
            <div id="layerslider" style="width:100%;height:473px;">


                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                    <img src="images/slider/page-banner-vue.png" class="ls-bg" alt="Slide background"/>

                    <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l1"></h2>
                    </div>

                    <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l2"></h2>
                    </div>



                    <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <!--<a href="#" class="button2"></a>-->
                    </div>


                    <div class="ls-l" style="top:400px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <a href="vue.jsp" class="button1">Learning Now</a>
                    </div>


                </div><!--FIRST SLIDE-->



                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                    <img src="images/slider/page-banner-node.png" class="ls-bg" alt="Slide background"/>





                    <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l1"></h2>
                    </div>

                    <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l2"></h2>
                    </div>



                    <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <!--<a href="#" class="button2">Learn More</a>-->
                    </div>


                    <div class="ls-l" style="top:400px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <a href="node.jsp" class="button1">Learning Now</a>
                    </div>


                </div><!--FIRST SLIDE-->

                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                    <img src="images/slider/page-banner-ssm.png" class="ls-bg" alt="Slide background"/>





                    <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l1"></h2>
                    </div>

                    <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l2"></h2>
                    </div>



                    <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <!--<a href="#" class="button2">Learn More</a>-->
                    </div>


                    <div class="ls-l" style="top:400px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <a href="#" class="button1">Learning Now</a>
                    </div>


                </div><!--FIRST SLIDE-->

                <div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
                    <img src="images/slider/page-banner-wx-game.png" class="ls-bg" alt="Slide background"/>





                    <div class="ls-l" style="top:140px;left:638px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l1"></h2>
                    </div>

                    <div class="ls-l" style="top:200px;left:583px;white-space: nowrap;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <h2 class="l2"></h2>
                    </div>



                    <div class="ls-l" style="top:265px;left:598px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <!--<a href="#" class="button2">Learn More</a>-->
                    </div>


                    <div class="ls-l" style="top:400px;left:810px;" data-ls="offsetxin:0;delayin:1000;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">
                        <a href="#" class="button1">Learning Now</a>
                    </div>


                </div><!--FIRST SLIDE-->







            </div>
        </div>
    </div>

    <div class="service_section">
        <div class="container">

            <h2>Excellent courses</h2>
            <h4>Java is the best language in the world.</h4>

            <div class="insider">

                <div class="column">
                    <span class="fa fa-mobile"></span>
                    <h3><a href="java.jsp"> Getting started with Java</a></h3>
                    <p>My first Java program.</p>
                </div>

                <div class="column">
                    <span class="fa fa-comment-o"></span>
                    <h3>Android Development</h3>
                    <p>From there to here, and here to there, funny things are everywhere.</p>
                </div>

                <div class="column">
                    <span class="fa fa-heart-o"></span>
                    <h3>Learning spring and spring MVC framework </h3>
                    <p>Open source Java platform, which provides a comprehensive infrastructure for  development of durable Java applications.</p>
                </div>

            </div>

        </div>
    </div>





    <!--<div class="feature_section" id="features">
    <div class="container">


                    <div class="leftside">
                    <img src="images/thumbs/t1.png" alt=""  class="wow bounceInLeft animated" data-wow-duration="2s" data-wow-offset="300" data-wow-delay="0.2s" />
                    </div>


                    <div class="rightside">
                    <h2>Explore the awesomeness</h2>
                    <p>
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really. The concentration is warm and intimate and like the fire inside the earth - intense but not distorted. You can go to a place, really feel it in your heart. It's actually a beautiful feeling.
                    </p>

                    <div class="feature">
                    <span class="fa fa-life-ring"></span>
                    <div class="description">
                    <strong>Good in Performance</strong> <br />
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really.
                    </div>
                    </div>

                    <br clear="all" />

                    <a href="#" class="button3">Learn More</a>
                    <a href="#" class="button4">Start Now</a>
                    </div>

    </div>
    </div>-->





    <!--<div class="feature_section ano_feature_section">
    <div class="container">


                    <div class="leftside">
                    <h2>Describe more about product</h2>
                    <p>
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really. The concentration is warm and intimate and like the fire inside the earth - intense but not distorted. You can go to a place, really feel it in your heart. It's actually a beautiful feeling.
                    </p>

                    <div class="feature">
                    <span class="fa fa-life-ring"></span>
                    <div class="description">
                    <strong>Good in Performance</strong> <br />
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really.
                    </div>
                    </div>

                    <div class="feature">
                    <span class="fa fa-play-circle-o "></span>
                    <div class="description">
                    <strong>Video Background</strong> <br />
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really.
                    </div>
                    </div>

                    </div>


                    <div class="rightside">
                    <img src="images/thumbs/t2.png" alt="" class="wow bounceInRight animated imagethumb2" data-wow-offset="300" data-wow-delay="0.2s" />
                    </div>

    </div>
    </div>-->




    <!--<div class="common_section" id="faqs_part">
    <div class="container">

                <h2>Frequently Asked Questions</h2>
                <h4>One machine can do the work of fifty ordinary men. No machine can do the work of one extraordinary man</h4>


                <div class="faqbox">
                <div class="title">Are bears just about to extinct?</div>
                <p>
                Yes! But if you’d like to buy us a slice of cheap pizza, we’ll reward you with some cool bonus features.
                </p>
                </div>

                <div class="faqbox longer">
                <div class="title">Will Star Wars Episode VII be awesome?</div>
                <p>
                Absolutely not! This theme takes privacy and security extremely seriously. Your personal information will not be shared with anyone. All interaction with this website is encrypted over HTTPS, using the same encryption technology used by banks.
                </p>
                </div>


                <div class="faqbox">
                <div class="title">Are bears just about to extinct?</div>
                <p>
                Yes! But if you’d like to buy us a slice of cheap pizza, we’ll reward you with some cool bonus features.
                </p>
                </div>


                <div class="faqbox">
                <div class="title">Are bears just about to extinct?</div>
                <p>
                Yes! But if you’d like to buy us a slice of cheap pizza, we’ll reward you with some cool bonus features.
                </p>
                </div>


                <div class="faqbox">
                <div class="title">Are bears just about to extinct?</div>
                <p>
                Yes! But if you’d like to buy us a slice of cheap pizza, we’ll reward you with some cool bonus features.
                </p>
                </div>



    </div>
    </div>-->




    <div class="common_section" id="testimonials_part">
        <div class="container">

            <h2>Gold medal lecturer</h2>
            <h4 style="margin:0 0 40px 0;">Interest is the best teacher.</h4>


            <br clear="all" />

            <ul class="bxslider">

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            Study hard and make progress every day.
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/t1.jfif" alt="" />
                            Lifanfan
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            Serve the people.
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/t2.jpg" alt="" />
                            NIIT expert lecturer.
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>





    <!--<div class="pricing_table_section" id="pricing_part">
    <div class="container">

                <h2>Price Table</h2>
                <h4>term sheet convertible note colluding bootstrapping</h4>


                <div class="insider">


                <div class="block">
                <div class="head">
                <h2>Basic</h2>
                <p>From <strong>$59</strong> per month</p>
                </div>
                <ul>
                <li>Total Users <span>10</span></li>
                <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                <li><h5>$59 Per Month</h5> <a href="#" class="button5">SIGN UP</a></li>
                </ul>
                </div>


                <div class="block">
                <div class="head">
                <h2>Premium</h2>
                <p>From <strong>$59</strong> per month</p>
                </div>
                <ul>
                <li>Total Users <span>10</span></li>
                <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                <li><h5>$59 Per Month</h5> <a href="#" class="button5 button6">SIGN UP</a></li>
                </ul>
                </div>



                <div class="block">
                <div class="head">
                <h2>Ultimate</h2>
                <p>From <strong>$59</strong> per month</p>
                </div>
                <ul>
                <li>Total Users <span>10</span></li>
                <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                <li><h5>$59 Per Month</h5> <a href="#" class="button5">SIGN UP</a></li>
                </ul>
                </div>


                </div>


    </div>
    </div>-->




    <div class="common_section" id="contact_part">
        <div class="container">

            <h2>Get in touch with us</h2>
            <h4>We value any comments from users!</h4>


            <br clear="all" />


            <form method="post" class="hpform">
                <input type="text" placeholder="Name" />
                <input type="email" placeholder="Email" />
                <textarea placeholder="Message"></textarea>
                <input type="submit" value="SEND" />
            </form>




        </div>
    </div>




    <div class="subscribe_section" id="subscribe_part">
        <div class="container">

            <h2>Subscribe to our newsletter</h2>


            <br clear="all" />


            <form method="post">
                <input type="email" placeholder="Enter your e-Mail" />
                <input type="submit" value="SUBSCRIBE" />
            </form>




        </div>
    </div>




    <div class="common_section">
        <div class="container">


            <a href="#" class="footer_logo"><img src="images/logo.png" alt="" /></a>

            <div class="copyright">Powered by NIIT ©2016 NIIT</div>

        </div>
    </div>


</div><!--wrapper-->


<script>
    jQuery("#layerslider").layerSlider({
        responsive: false,
        responsiveUnder: 1100,
        layersContainer: 1100,
        skin: 'fullwidth',
        hoverPrevNext: false,
        skinsPath: 'layerslider/skins/'
    });


</script>

<script src="js/wow.js"></script>
<script>
    wow = new WOW(
        {
            animateClass: 'animated',
            offset:       100
        }
    );
    wow.init();
    document.getElementById('moar').onclick = function() {
        var section = document.createElement('section');
        section.className = 'section--purple wow fadeInDown';
        this.parentNode.insertBefore(section, this);
    };
</script>

<script type="text/javascript">
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top - 132
                    }, 2000);
                    return false;
                }
            }
        });
    });
</script>


<script type="text/javascript">


    $(document).ready(function() {

        if($(window).width() <= 1200){


            $(function() {
                $('a[href*=#]:not([href=#])').click(function() {
                    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                        if (target.length) {
                            $('html,body').animate({
                                scrollTop: target.offset().top - 132
                            }, 2000);
                            return false;
                        }
                    }
                });
            });



        }

    });


</script>

</body>
</html>
