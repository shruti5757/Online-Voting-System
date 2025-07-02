<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Online eVoting</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-user" ></i>eVOTING</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
               <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Registration</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="register.jsp" class="dropdown-item">Student Registration</a>
                        <a href="canreg.jsp" class="dropdown-item">Candidate Registration</a>
                        
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                <a href="Help.jsp" class="nav-item nav-link">Help</a>
            </div>
            
              <<div class="nav-item dropdown">
    <a href="login.jsp" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Login<i class="fa fa-arrow-right ms-3"></i></a>
    <div class="dropdown-menu fade-down m-0">
        <a href="adminlogin.jsp" class="dropdown-item">Admin login</a>
        <div class="dropdown-divider"></div> <!-- Add a divider between admin and student/candidate -->
        <div class="dropdown">
            <a href="#" class="dropdown-item dropdown-toggle">Student/Candidate login</a>
            <div class="dropdown-menu">
                <!-- Add your student/candidate login options here -->
                <a href="login.jsp" class="dropdown-item">Student login</a>
                <a href="canlogin.jsp" class="dropdown-item">Candidate login</a>
            </div>
        </div>
    </div>
</div>

           
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/vote3.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Bharati vidhyapeeth college of Engineering,Kolhapur</h5>
                                <h1 class="display-3 text-white animated slideInDown">The Best Online Voting Platform</h1>
                                <p class="fs-5 text-white mb-4 pb-2">Right2Vote is an eVoting website which enables you to create and manage elections</p>
                               
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/vote2.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown">Bharati vidhyapeeth college of Engineering,Kolhapur</h5>
                                <h1 class="display-3 text-white animated slideInDown">The Best Online Voting Platform</h1>
                                <p class="fs-5 text-white mb-4 pb-2">>>To eliminate paper in the voting process. This involves sending of notices and ballot papers and receiving the said ballot votes.<br>>> Enable security holders to vote at a time and place of their convenience . </p>
        
                            
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                          <img class="img-fluid" src="img/current.jpg" alt="" width="200" height="200">  
                            <h5 class="mb-3">Current Voting Schedule</h5>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                           <img class="img-fluid" src="img/preview.jpg" alt="" width="200" height="200">
                            <h5 class="mb-3">Voting News</h5>
             
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <img class="img-fluid" src="img/result.png" alt="" width="200" height="200">
                            <h5 class="mb-3">Voting Result</h5>
                             <form action="displayVoters.jsp" method="post">
                    
                    <input type="submit" value="">
                </form>
                            
                        </div>
                    </div>
                </div>
                            </div>
        </div>
    </div>
    <!-- Service End -->


   


   
               
            </div>
        </div>
    </div>
   


    


   
    

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>