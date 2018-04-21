

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <title>BudgetMetal</title>
    <meta name="description" content="BudgetMetal">
    <meta name="author" content="">
<link rel="shortcut icon" type="image/png" href="fav.ico"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/style.css?v=20180410">
    <link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/modernizr.custom.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php
      include("market/piwik.php");
    ?>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

<div id="preloader">
    <div id="status"><img src="img/preloader.gif" height="64" width="64" alt=""></div>
</div>
<!-- Navigation -->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse"><i
                    class="fa fa-bars"></i></button>
            <a class="navbar-brand page-scroll" href="#page-top"> BudgetMetal | <small style="font-size: 8pt !important;">soft launch</small> </a></div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                <li class="hidden"><a href="#page-top"></a></li>
                <li><a class="page-scroll" href="#intro">Home</a></li>
                <li><a class="page-scroll" href="#about">About</a></li>
                <li><a class="page-scroll" href="#services">How it works?</a></li>
				 <li><a class="page-scroll" href="#works">Services</a></li>
                <li><a class="page-scroll" href="#contact">Contact</a></li>
                <li><a class="page-scroll" href="market/register.php">Sign Up for Free</a></li>


            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Header -->
<div id="intro">
    <div class="intro-body">
        <div class="container">
            <div class="row">&nbsp;</div>
            <div class="row">&nbsp;</div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <h1><br/><span class="brand-heading">BudgetMetal</span></h1>
                    <p class="intro-text">B2B Metal Services Marketplace</p>
                </div>
            </div>
            <div class="row">
                <a href="#about" class="btn btn-default btn-sm page-scroll">Learn More</a>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="wrap">
                        <p class="form-title">
                            or, Sign In</p>
                        <form name="loginform" id="loginform" class="login" action="market/checklogin.php"
                              method="post">
                            <input  name="username" placeholder="Email" type="text"  value="<?php
                             if(isset($_GET['l'])){
                               echo $_GET['l'];
                             }

                            ?>"/>
                            <input name="password" placeholder="Password" type="password" />
                            <?php
                            $doc_type = "";
                            $id = "";
                            if(isset($_GET["id"])){
                             $id = $_GET["id"];
                             $doc_type = "Quotation";
                           }
                           if(isset($_GET["rfq_ref"])){
                            $id = $_GET["rfq_ref"];
                            $doc_type = "RFQ";
                          }
                          $ref_div="";
                          if(isset($_GET["ref_div"])){
                           $ref_div = $_GET["ref_div"];
                         }
                            ?>
                            <input type="hidden" name="doc_type" value="<?php echo $doc_type;?>">
                            <input type="hidden" name="id" value="<?php echo $id;?>">
                              <input type="hidden" name="ref_div" value="<?php echo $ref_div;?>">
                            <div class="remember-forgot">
                                <div class="row">
                                    <div class="col-md-12">
                                      <a href="market/resetpassword.php" class="forgot-pass pull-left"
                                        style="color: white !important;">Forgot Password</a>

                                        <!--  <a href="" class="forgot-pass pull-left"
                                           style="color: white !important;">Forgot Password</a>

                                      <div class="checkbox pull-right">
                                            <label>
                                                <input type="checkbox"/>
                                                Remember Me
                                            </label>
                                        </div>
                                        <!--<br/>

                                            <ul class="messages">

                                                    <div class="alert alert-danger">
                                                        <li class=""></li>
                                                    </div>

                                            </ul>
                                        -->
                                    </div>
                                    <?php
                                     if(isset($_GET['l'])){
                                       echo "<div class='row'><small style='color:white;'>Email or Password is invalid!</small></div>";
                                     }

                                    ?>
                                </div>
                            </div>

                            <input id="btnSigIn" type="submit" value="Sign In" class="btn btn-success btn-sm"/>
                            <br/><br/>
                            <a href="market/register.php" class="btn btn-info btn-sm"
                               style="color: white !important; width: 100%">
                                Sign Up for Free
                            </a>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- About Section -->
<div id="about">
    <div class="container">
        <div class="section-title text-center center">
            <h2>About us</h2>
            <hr>
        </div>
        <div class="row">
            <div class="col-md-4"><img src="img/about.jpg" class="img-responsive"></div>
            <div class="col-md-4">
                <div class="about-text">
                    <h4>Who We Are</h4>
                    <p>BudgetMetal is a one-stop metalworks marketplace to facilitate business trading among Small &
                        Medium Enterprises (SMEs) in the metal and fabrication services industry.</p>
                    <p>We aim to be the bridge for the buyers and suppliers in the market to improve transparency and
                        efficiency in the ecosystem.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="about-text">
                    <h4>What We Do</h4>
                    <p>We offer the following services to make life easier for metalworks buyers and suppliers to
                        conduct
                        their business on our platform:</p>
                    <ul>
                        <li>Match relevant suppliers to your requirements</li>
                        <li>Improve speed of receiving quotes by using our online tools</li>
                        <li>Automate and record each step of the quotation process for easy tracking</li>
                        <li>Feedback system to create trust and credibility</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Services Section -->
<div id="services" class="text-center" style="background-position: 50% -76px; background-size: cover;">
    <div class="container">
        <div class="section-title center">
            <h2>How it works</h2>
            <hr>
        </div>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-4 col-sm-4">
                <div class="service"><i class="fa fa-search"></i>
                    <h3>Find suppliers</h3>
                    <p>Filter using your requirements</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service"><i class="fa fa-upload"></i>
                    <h3>Request Quote</h3>
                    <p>Upload your specifications</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service"><i class="fa fa-envelope"></i>
                    <h3>One-Click Send</h3>
                    <p>Choose multiple suppliers at one go and deliver your specifications with one-click</p>
                </div>
            </div>
        </div>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="service"><i class="fa fa-heartbeat"></i>
                    <h3>Wait for Quote</h3>
                    <p>Alerts will be sent when supplier submit clarification or quotation</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="service"><i class="fa fa-bullseye"></i>
                    <h3>Decision</h3>
                    <p>Compare with ease and decide on your supplier for the project</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="service"><i class="fa fa-comments"></i>
                    <h3>Feedback</h3>
                    <p>Close the deal and leave rating/feedback</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Portfolio Section -->
<div id="works">
    <div class="container"> <!-- Container -->
        <div class="section-title text-center center">
            <h2>Available Metal Services</h2>
            <hr>

        <div class="categories">
            <ul class="cat">
                <li>
                    <ol class="type">
                        <li><a href="#" data-filter=".custom_fabrication" class="active">Custom Fabrication</a></li>
                        <li><a href="#" data-filter=".metal_materials">Metal Materials</a></li>
                        <li><a href="#" data-filter=".fabrication_services">Fabrication Services</a></li>
                        <li><a href="#" data-filter=".testing">Testing</a></li>
                        <li><a href="#" data-filter=".finishing">Finishing</a></li>
                        <li><a href="#" data-filter=".logistics">Logistics</a></li>
                        <li><a href="#" data-filter=".2d3d">CAD/CAM Design Service</a></li>
                        <li><a href="#" data-filter=".3dmetalprinting">3D Metal Printing</a></li>
                    </ol>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="row">
            <div class="portfolio-items isotope" style="position: relative; overflow: hidden; height: 364px;">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_ArchitectureStructure.jpg"
                               title="Architecture Structure"
                               rel="prettyPhoto"> 
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Architecture Structure</p>
                                </div>
                                <img src="img/services/CustomFabrication_ArchitectureStructure.jpg"
                                     class="img-responsive" alt="Custom Fabrication">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Ducting_Sauna.jpg"
                               title="Ducting"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Ducting</p>
                                </div>
                                <img src="img/services/CustomFabrication_Ducting_Sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_OffshoreStructure_sauna.jpg"
                               title="Offshore Structure"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Offshore Structure</p>
                                </div>
                                <img src="img/services/CustomFabrication_OffshoreStructure_sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Railing_sauna.jpg"
                               title="Railing"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Railing</p>
                                </div>
                                <img src="img/services/CustomFabrication_Railing_sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Skid_sauna.jpg"
                               title="Skid"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Skid</p>
                                </div>
                                <img src="img/services/CustomFabrication_Skid_sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Storage_Cage_sauna.jpg"
                               title="Storage Cage"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Storage Cage</p>
                                </div>
                                <img src="img/services/CustomFabrication_Storage_Cage_sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Tanks_sauna.jpg"
                               title="Tanks"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Tanks</p>
                                </div>
                                <img src="img/services/CustomFabrication_Tanks_sauna.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 custom_fabrication isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_StructuralSteel.jpg"
                               title="Structural Steel"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Custom Fabrication</h4>
                                    <p>Structural Steel</p>
                                </div>
                                <img src="img/services/CustomFabrication_StructuralSteel.jpg"
                                     class="img-responsive" alt="Custom Fabrication"> </a></div>
                    </div>
                </div>
                <!--Custom Fabrications-->

                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_AngleBar.jpg" title="Angle Bar"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Angle Bar</p>
                                </div>
                                <img src="img/services/Materials_AngleBar.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_HollowSection.jpg" title="Hollow Section"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Hollow Section</p>
                                </div>
                                <img src="img/services/Materials_HollowSection.jpg"
                                     class="img-responsive" alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_I_Beam.jpg" title="I Beam"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>I Beam</p>
                                </div>
                                <img src="img/services/Materials_I_Beam.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_Pipe.jpg" title="Pipe"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Pipe</p>
                                </div>
                                <img src="img/services/Materials_Pipe.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_Plate.jpg" title="Plate"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Plate</p>
                                </div>
                                <img src="img/services/Materials_Plate.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_Plate_2.jpg" title="Plate"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Plate</p>
                                </div>
                                <img src="img/services/Materials_Plate_2.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_Rod.jpg" title="Rod"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Rod</p>
                                </div>
                                <img src="img/services/Materials_Rod.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 metal_materials isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Materials_SteelBar.jpg" title="Steel Bar"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Materials</h4>
                                    <p>Steel Bar</p>
                                </div>
                                <img src="img/services/Materials_SteelBar.jpg" class="img-responsive"
                                     alt="Materials"> </a></div>
                    </div>
                </div>
                <!--Materials-->

                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_Bending.jpg"
                               title="Bending"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Bending</p>
                                </div>
                                <img src="img/services/FabricationServices_Bending.jpg"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_LaserCutting_neo.jpg"
                               title="Laser Cutting"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Laser Cutting</p>
                                </div>
                                <img src="img/services/FabricationServices_LaserCutting_neo.jpg"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_Cutting_neo.jpg"
                               title="Cutting"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Cutting</p>
                                </div>
                                <img src="img/services/FabricationServices_Cutting_neo.jpg"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_Machining_neo.jpg"
                               title="Machining"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Machining</p>
                                </div>
                                <img src="img/services/FabricationServices_Machining_neo.jpg"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_PlasmaCutting_neo.jpg"
                               title="Plasma Cutting"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Plasma Cutting</p>
                                </div>
                                <img src="img/services/FabricationServices_PlasmaCutting_neo.jpg"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 fabrication_services isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/FabricationServices_Rolling_neo.png"
                               title="Rolling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Fabrication Services</h4>
                                    <p>Rolling</p>
                                </div>
                                <img src="img/services/FabricationServices_Rolling_neo.png"
                                     class="img-responsive" alt="Fabrication Services"> </a></div>
                    </div>
                </div>
                <!--fabrication services-->

                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 testing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Testing_Destructive.jpg" title="Destructive"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Testing</h4>
                                    <p>Destructive</p>
                                </div>
                                <img src="img/services/Testing_Destructive.jpg" class="img-responsive"
                                     alt="Testing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 testing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Testing_NonDestructive.jpg" title="Non-destructive"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Testing</h4>
                                    <p>Non-destructive</p>
                                </div>
                                <img src="img/services/Testing_NonDestructive.jpg"
                                     class="img-responsive" alt="Testing"> </a></div>
                    </div>
                </div>
                <!--Testing-->

                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_Anodised.jpg" title="Anodised"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Anodised</p>
                                </div>
                                <img src="img/services/Finishing_Anodised.jpg" class="img-responsive"
                                     alt="Finishing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_Galvanised.jpg" title="Galvanised"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Galvanised</p>
                                </div>
                                <img src="img/services/Finishing_Galvanised.jpg"
                                     class="img-responsive" alt="Finishing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_HotDip.jpg" title="Hot Dip"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Hot Dip</p>
                                </div>
                                <img src="img/services/Finishing_HotDip.jpg" class="img-responsive"
                                     alt="Finishing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_Paint.jpg" title="Paint"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Paint</p>
                                </div>
                                <img src="img/services/Finishing_Paint.jpg" class="img-responsive"
                                     alt="Finishing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_Painting.jpg" title="Painting"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Painting</p>
                                </div>
                                <img src="img/services/Finishing_Painting.jpg" class="img-responsive"
                                     alt="Finishing"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 finishing isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Finishing_PowderCoating.jpg" title="Power Coating"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Finishing</h4>
                                    <p>Power Coating</p>
                                </div>
                                <img src="img/services/Finishing_PowderCoating.jpg"
                                     class="img-responsive" alt="Finishing"> </a></div>
                    </div>
                </div>
                <!--Finishing-->

                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 logistics isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Logistics_Loading_Unloading.jpg"
                               title="Loading & Unloading"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Logistics</h4>
                                    <p>Loading &amp; Unloading</p>
                                </div>
                                <img src="img/services/Logistics_Loading_Unloading.jpg"
                                     class="img-responsive" alt="Logistics"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 logistics isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Logistics_Transport.jpg" title="Transport"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>Logistics</h4>
                                    <p>Transport</p>
                                </div>
                                <img src="img/services/Logistics_Transport.jpg" class="img-responsive"
                                     alt="Logistics"> </a></div>
                    </div>
                </div>

                <!--2D/3D -->
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/2D_01.png"
                               title="2D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>2D Modelling</p>
                                </div>
                                <img src="img/services/2D_01.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/2D_02.png"
                               title="2D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>2D Modelling</p>
                                </div>
                                <img src="img/services/2D_02.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CAD01.png"
                               title="3D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>3D Modelling</p>
                                </div>
                                <img src="img/services/CAD01.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CAD02.png"
                               title="3D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>3D Modelling</p>
                                </div>
                                <img src="img/services/CAD02.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CAD03.png"
                               title="3D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>3D Modelling</p>
                                </div>
                                <img src="img/services/CAD03.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Render01A.png"
                               title="Printing"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>Modelling and Simulation</p>
                                </div>
                                <img src="img/services/Render01A.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 2d3d isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/Render02A.png"
                               title="3D Modelling"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>2D /3D</h4>
                                    <p>3D Modelling</p>
                                </div>
                                <img src="img/services/Render02A.png"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>

                <!--3D Metal Printing -->
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 3dmetalprinting isotope-item"
                     style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="img/services/CustomFabrication_Ducting_Sauna.jpg"
                               title="3D Metal Printing"
                               rel="prettyPhoto">
                                <div class="hover-text">
                                    <h4>3D Metal Printing</h4>
                                    <p>Professional metal printing</p>
                                </div>
                                <img src="img/services/CustomFabrication_Ducting_Sauna.jpg"
                                     class="img-responsive" alt="2D / 3D Modelling and Simulation"> </a></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- Contact Section -->
<div id="contact" class="text-center">
    <div class="container">
        <div class="section-title center">
            <h2>Contact us</h2>
            <hr>
            <p>Please feel free to contact us using the channels below.</p>
        </div>
        <div class="col-md-8 col-md-offset-2">
            <div class="col-md-3">
                <div class="contact-item"><i class="fa fa-map-marker fa-2x"></i>
                    <p>100 Jalan Sultan, Sultan Plaza, #03-02
                        <br>
                        Singapore 19901
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="contact-item"><i class="fa fa-envelope-o fa-2x"></i>
                    <p>info@budgetmetal.com</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="contact-item"><i class="fa fa-life-ring fa-2x"></i>
                    <p>support@budgetmetal.com</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="contact-item"><i class="fa fa-phone fa-2x"></i>
                    <p> +65 65190961</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div id="contactFormContainer" class="col-md-8 col-md-offset-2">
            <h3>Leave us a message</h3>
            <form name="sentMessage" id="contactForm" novalidate action="email.php">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="name" id="txt_name" class="form-control" placeholder="Name"
                                   required="required">
                            <p id="name_required" class="help-block text-danger">Required</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="email" name="email" id="txt_email" class="form-control" placeholder="Email"
                                   required="required">
                            <p id="email_required" class="help-block text-danger">Required</p>
                            <p id="email_format_required" class="help-block text-danger">Invalid Email.</p>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <textarea name="message" name="message" id="txt_message" class="form-control" rows="4"
                              placeholder="Message"
                              required></textarea>
                    <p id="message_required" class="help-block text-danger">Required</p>
                </div>
                <div id="success"></div>
                <button type="button" id="btnMessage" class="btn btn-default">Send Message</button>
            </form>

        </div>
    </div>
</div>
<div id="footer">
    <div class="container">
             <p>Copyright &copy; BudgetMetal.</p>
    </div>
</div>
<script>



</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/SmoothScroll.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/jquery.isotope.js"></script>
<script type="text/javascript" src="js/jquery.parallax.js"></script>
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
<script type="text/javascript" src="js/send_message.js"></script>
<!-- <script type="text/javascript" src="js/contact_me.js"></script>-->

<!-- Javascripts
    ================================================== -->
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
