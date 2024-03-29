<html lang="en">

<head>

    <title>Health - Medical Website Template</title>
    <!--

Template 2098 Health

http://www.tooplate.com/view/2098-health

-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Tooplate">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/tooplate-style.css">

</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

    <!-- PRE LOADER -->
    <section class="preloader">
        <div class="spinner">

            <span class="spinner-rotate"></span>

        </div>
    </section>


    <!-- HEADER -->
    <header>
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-5">
                    <p>Welcome to a Professional Health Care</p>
                </div>

                <div class="col-md-8 col-sm-7 text-align-right">
                    <span class="phone-icon"><i class="fa fa-phone"></i> 010-060-0160</span>
                    <span class="date-icon"><i class="fa fa-calendar-plus-o"></i> 6:00 AM - 10:00 PM (Mon-Fri)</span>
                    <span class="email-icon"><i class="fa fa-envelope-o"></i> <a href="#">info@company.com</a></span>
                </div>

            </div>
        </div>
    </header>


    <!-- MENU -->
    <section class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                </button>

                <!-- lOGO TEXT HERE -->
                <a href="index.html" class="navbar-brand"><i class="fa fa-h-square"></i>ealth Center</a>
            </div>

            <!-- MENU LINKS -->
            <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                         <li><a href="index.html" class="smoothScroll">Home</a></li>
                         <li><a href="show_all.php" class="smoothScroll">Show All</a></li>
                         <li class="appointment-btn"><a href="index.html">Registration a patient</a></li>
                    </ul>
            </div>

        </div>
    </section>



    <!-- MAKE AN APPOINTMENT -->
    <section id="appointment" data-stellar-background-ratio="3">
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-sm-6">
                    <img src="images/appointment-image.jpg" class="img-responsive" alt="">
                </div>

                <div class="col-md-6 col-sm-6">
                    <!-- CONTACT FORM HERE -->
                    <form id="common_   _process.php" role="form" method="post" action="common_diseases_process.php">

                        <!-- SECTION TITLE -->
                        <div class="section-title wow fadeInUp" data-wow-delay="0.4s">
                            <h2>Common Diseases</h2>
                        </div>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">

                        <div class="wow fadeInUp" data-wow-delay="0.8s">
                            <div class="col-md-6 col-sm-6">
                                <label for="select">Diabetes</label>
                                <select class="form-control" name="dia" id="Diabetes">
                                    <option value="Yes">Yes</option>
                                    <option value="No">N0</option>
                                </select>
                            </div>

                            <div class="col-md-6 col-sm-6">
                                <label for="select">High Blood Pressure</label>
                                <select class="form-control" name="hbp" id="High Blood Pressure">
                                    <option value="Yes">Yes</option>
                                    <option value="No">N0</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label for="select">HIV</label>
                                <select class="form-control" name="hiv" id="HIV">
                                    <option value="Yes">Yes</option>
                                    <option value="No">N0</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label for="select">ASMA</label>
                                <select class="form-control" name="asma" id="ASMA">
                                    <option value="Yes">Yes</option>
                                    <option value="No">N0</option>
                                </select>
                            </div>

                            <div class="col-md-12 col-sm-12">
                                <button type="submit" class="form-control appointment-btn" id="cf-submit" name="submit">Submit patient</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>



    <!-- FOOTER -->
    <footer data-stellar-background-ratio="5">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-4">
                    <div class="footer-thumb">
                        <h4 class="wow fadeInUp" data-wow-delay="0.4s">Contact Info</h4>
                        <p>Fusce at libero iaculis, venenatis augue quis, pharetra lorem. Curabitur ut dolor eu
                            elit consequat ultricies.</p>

                        <div class="contact-info">
                            <p><i class="fa fa-phone"></i> 010-070-0170</p>
                            <p><i class="fa fa-envelope-o"></i> <a href="#">info@company.com</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="footer-thumb">
                        <h4 class="wow fadeInUp" data-wow-delay="0.4s">Author</h4>
                        <h5 class="wow fadeInUp" data-wow-delay="0.4s">Iftekhar Ahamed Siddiquee</h4>
                            <div class="latest-stories">
                                <div class="stories-image">
                                    <a href="#"><img src="images/iftekhar.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="stories-info">
                                    <span>Mobile : 01612158329</span>
                                    <p>Intake-44 Sec-12</p>

                                </div>
                            </div>
                            <h5 class="wow fadeInUp" data-wow-delay="0.4s">Rafikul Islam Redwan</h4>
                                <div class="latest-stories">
                                    <div class="stories-image">
                                        <a href="#"><img src="images/redwan.PNG" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="stories-info">
                                        <span>Mobile : 01799276760</span>
                                        <p>Intake-44 Sec-12</p>

                                    </div>
                                </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="footer-thumb">
                        <div class="opening-hours">
                            <h4 class="wow fadeInUp" data-wow-delay="0.4s">Opening Hours</h4>
                            <p>Monday - Friday <span>06:00 AM - 10:00 PM</span></p>
                            <p>Saturday <span>09:00 AM - 08:00 PM</span></p>
                            <p>Sunday <span>Closed</span></p>
                        </div>

                        <ul class="social-icon">
                            <li><a href="https://www.facebook.com/iftekharahamedsiddiquee" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                            <li><a href="https://www.instagram.com/iftekhar_ahamed_siddiquee/" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-instagram"></a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12 border-top">
                    <div class="col-md-4 col-sm-6">
                        <div class="copyright-text">
                            <p>Copyright &copy; 2021 Iftekhar & Redwan</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="footer-link">
                            <p><b>Banglasesh University of Business and Technology</b></p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2 text-align-center">
                        <div class="angle-up-btn">
                            <a href="#top" class="smoothScroll wow fadeInUp" data-wow-delay="1.2s"><i class="fa fa-angle-up"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </footer>

    <!-- SCRIPTS -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>