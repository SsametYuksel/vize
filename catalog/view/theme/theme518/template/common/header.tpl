<!DOCTYPE html>

<!--[if IE]><![endif]-->

<!--[if IE 8 ]>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->

<!--[if IE 9 ]>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->

<!--[if (gt IE 9)|!(IE)]><!-->

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">

<!--<![endif]-->

<head>

    <meta charset="UTF-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <base href="<?php echo $base; ?>"/>

    <?php if ($description) { ?>

    <meta name="description" content="<?php echo $description; ?>"/>

    <?php } ?>

    <?php if ($keywords) { ?>

    <meta name="keywords" content="<?php echo $keywords; ?>"/>

    <?php } ?>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <?php if ($icon) { ?>

    <link href="<?php echo $icon; ?>" rel="icon"/>

    <?php } ?>

    <?php foreach ($links as $link) { ?>

    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>

    <?php } ?>

    <!--<?php foreach ($styles as $style) { ?>-->

    <!--<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"-->

    <!--media="<?php echo $style['media']; ?>"/>-->

    <!--<?php } ?>-->

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

    <script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>

    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>

    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/country-select-js/2.1.0/css/countrySelect.min.css" integrity="sha512-HHSUgqDtmyVfGT0pdLVRKcktf9PfLMfFzoiBjh9NPBzw94YFTS5DIwZ12Md/aDPcrkOstXBp9uSAOCl5W2/AOQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/country-select-js/2.1.0/js/countrySelect.min.js" integrity="sha512-criuU34pNQDOIx2XSSIhHSvjfQcek130Y9fivItZPVfH7paZDEdtAMtwZxyPq/r2pyr9QpctipDFetLpUdKY4g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>

    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <link href="catalog/view/javascript/camera/css/camera.css" rel="stylesheet">



    <link rel="stylesheet" href="catalog/view/theme/theme518/js/fancybox/jquery.fancybox.css" media="screen"/>

    <link href="catalog/view/theme/theme518/stylesheet/livesearch.css" rel="stylesheet">

    <link href="catalog/view/theme/theme518/stylesheet/owl-carousel.css" rel="stylesheet">

    <link href="catalog/view/theme/theme518/stylesheet/photoswipe.css" rel="stylesheet">

    <link href="catalog/view/theme/theme518/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">



    <link href="catalog/view/theme/theme518/stylesheet/stylesheet.css?ver=<?php echo rand()?>" rel="stylesheet">

    <!--custom script-->

    <?php foreach ($scripts as $script) { ?>

    <script src="<?php echo $script; ?>" type="text/javascript"></script>

    <?php } ?>



    <script src="catalog/view/theme/theme518/js/common.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/tmstickup.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/jquery.unveil.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/jquery.bxslider/jquery.bxslider.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/fancybox/jquery.fancybox.pack.js"></script>

    <script src="catalog/view/theme/theme518/js/elavatezoom/jquery.elevatezoom.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/superfish.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/jquery.ui.totop.js"></script>

    <script src="catalog/view/theme/theme518/js/owl.carousel.min.js"></script>

    <!--<script src="catalog/view/theme/theme518/js/jquery.equalheights.js"></script>-->

    <!--Green Sock-->

    <script src="catalog/view/theme/theme518/js/greensock/jquery.gsap.min.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/greensock/TimelineMax.min.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/greensock/TweenMax.min.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/greensock/jquery.scrollmagic.min.js" type="text/javascript"></script>



    <!--photo swipe-->

    <script src="catalog/view/theme/theme518/js/photo-swipe/klass.min.js" type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/photo-swipe/code.photoswipe.jquery-3.0.5.js"

            type="text/javascript"></script>

    <script src="catalog/view/theme/theme518/js/photo-swipe/code.photoswipe-3.0.5.min.js"

            type="text/javascript"></script>



    <!--Lightpick-->

    <link rel="stylesheet" href="catalog/view/theme/theme518/stylesheet/lightpick.css" media="screen"/>

    <script src="catalog/view/javascript/moment.js" type="text/javascript"></script>

    <script src="catalog/view/javascript/lightpick.js" type="text/javascript"></script>

    <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/litepicker.js"></script>





    <!--[if lt IE 9]>

    <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'>

        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img

                src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"

                height="42" width="820"

                alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>

        </a>

    </div><![endif]-->

    <?php echo $google_analytics; ?>

</head>

<body class="<?php echo $class; ?>">

<!-- swipe menu -->

<div class="swipe">

    <div class="swipe-menu">

        <?php if ($maintenance == 0){ ?>

        <ul class="foot">

            <?php if ($informations) { ?>

            <?php foreach ($informations as $information) { ?>

            <li>

                <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>

            </li>

            <?php } ?>

            <?php } ?>

        </ul>

        <?php } ?>

        <ul class="foot foot-1">

            <li>

                <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>

            </li>

            <li>

                <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>

            </li>

            <li>

                <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>

            </li>

        </ul>



        <ul class="foot foot-2">

            <li>

                <a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a>

            </li>

            <li>

                <a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a>

            </li>

            <li>

                <a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a>

            </li>

            <li>

                <a href="<?php echo $special; ?>"><?php echo $text_special; ?></a>

            </li>

        </ul>

        <ul class="foot foot-3">

            <li>

                <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>

            </li>

            <li>

                <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>

            </li>

        </ul>

    </div>

</div>

<div id="page">

    <div class="shadow"></div>

    <div class="toprow-1">

        <a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>

    </div>



    <header class="header">

        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="d-flex" style="align-items: flex-end">
                        <div id="logo" class="logo d-inline-block">

                            <?php if ($logo) { ?>

                            <a href="<?php echo $home; ?>"><img width="60" src="<?php echo $logo; ?>" title="<?php echo $name; ?>"

                                                                alt="<?php echo $name; ?>" class="img-responsive"/></a>

                            <?php } else { ?>

                            <h1>
                                <a href="<?php echo $home; ?>"><?php echo $name; ?></a>

                            </h1>

                            <?php } ?>
                        </div>

                            <div >
                                <h3 style="margin: 0" class="fw-bold text-dark">E-Visa For Turkey</h3>
                                <p class="text-secondary">Electronic Visa Application System</p>
                            </div>
                    </div>
                </div>                    
                <div class="col-lg-6 col-md-6 col-sm-6" style="margin-top: 20px;">

                            <ul id="menu" class="list-unstyled d-flex">
                                                     <li class="btn btn-primary" style="padding: 10px; margin: 0 10px; line-height: 20px">
                                <a href="<?php echo $home ?>">Apply Now</a>
                            </li>
                                                 <li >
                                <a href="http://ferisoftdemo.com/vize/index.php?route=information/information&amp;information_id=6">Fees</a>
                            </li>
                            
                                                    <li>
                                <a href="<?php echo $contact?>">Contact Us</a>
                            </li>
                                    <li>
                                <a href="<?php echo $about?>">About Us</a>
                            </li>
                               
                           
                                </ul>
                </div>
            </div>



        <?php if ($categories) { ?>

        <script type="text/javascript">

            jQuery(window).load(function () {

                $('#tm_menu').TMStickUp({})

            });

        </script>

        <div id="tm_menu" class="nav__primary">

            <div class="container">

                <div class="menu-shadow">

                    <?php if ($categories) {  echo $categories; } ?>

                    <div class="clear"></div>

                </div>



                <!-- <ul class="social-list">

                    <li>

                        <a class="fa fa-facebook-square" href="//www.facebook.com/"></a>

                    </li>

                    <li>

                        <a class="fa fa-twitter" href="//twitter.com/"></a>

                    </li>

                    <li>

                        <a class="fa fa-pinterest" href="//www.pinterest.com/"></a>

                    </li>

                </ul> -->



            </div>

        </div>

        <?php } ?>

    </header>



    <?php if (
        $categories) { ?>

    <div class="container">

        <div class="row">

            <div class="col-sm-12">

                <div id="menu-gadget" class="menu-gadget">

                    <div id="menu-icon"><?php echo $text_category; ?></div>

                    <?php if ($categories) {  echo $categories; } ?>

                </div>

            </div>

        </div>

    </div>

    <?php } ?>