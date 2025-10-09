<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>SnayzzyShop -- Store</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Favicons -->
    <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="{{ asset('assets/css/main.css') }}" rel="stylesheet">

    <!-- =======================================================
  * Template Name: iLanding
  * Template URL: https://bootstrapmade.com/ilanding-bootstrap-landing-page-template/
  * Updated: Nov 12 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

    <header id="header" class="header d-flex align-items-center fixed-top">
        <div
            class="header-container container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

            <a href="index.html" class="logo d-flex align-items-center me-auto me-xl-0">
                <!-- Uncomment the line below if you also wish to use an image logo -->
                <!-- <img src="assets/img/logo.png" alt=""> -->
                <h1 class="sitename">Snayzzy Shop</h1>

            </a>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="#hero" class="active">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#features">Features</a></li>
                    <li class="dropdown"><a href="#"><span>Dropdown</span> <i
                                class="bi bi-chevron-down toggle-dropdown"></i></a>
                        <ul>
                            <li><a href="#">Dropdown 1</a></li>
                            <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i
                                        class="bi bi-chevron-down toggle-dropdown"></i></a>
                                <ul>
                                    <li><a href="#">Deep Dropdown 1</a></li>
                                    <li><a href="#">Deep Dropdown 2</a></li>
                                    <li><a href="#">Deep Dropdown 3</a></li>
                                    <li><a href="#">Deep Dropdown 4</a></li>
                                    <li><a href="#">Deep Dropdown 5</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Dropdown 2</a></li>
                            <li><a href="#">Dropdown 3</a></li>
                            <li><a href="#">Dropdown 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

            <a class="btn-getstarted" href="{{ route ('login') }}">Login</a>

        </div>
    </header>

    <main class="main">

        <!-- Hero Section -->
        <section id="hero" class="hero section">

            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="hero-content" data-aos="fade-up" data-aos-delay="200">
                            <div class="company-badge mb-4">
                                <i class="bi bi-gear-fill me-2"></i>
                                Outfit Kekinian & Nyaman
                            </div>

                            <h1 class="mb-4" style="font-size:40px; line-height:1.25;">
                                Snayzzy Shop <br>
                                <span style="font-size:30PX; line-height:1.25;">Simple Looks, Big Confidence</span>
                                <br>
                                <span class="accent-text">Everyday Essential Wear</span>
                            </h1>

                            <p class="mb-4 mb-md-5">
                                Baju pria & wanita dengan bahan adem dan cutting rapi.
                                Gratis ongkir min. 199K, COD, dan tukar ukuran atau kecilin ukuran baju max 7 hari.

                            <div class="hero-buttons">
                                <a href="{{ route ('login') }}" class="btn btn-primary me-0 me-sm-2 mx-1">Login</a>
                                {{-- <a href="https://www.youtube.com/watch?v=Y7f98aduVJ8"
                                    class="btn btn-link mt-2 mt-sm-0 glightbox">
                                    <i class="bi bi-play-circle me-1"></i>
                                    Belum
                                </a> --}}
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="hero-image" data-aos="zoom-out" data-aos-delay="300">
                            <img src="assets/img/illustration-1.webp" alt="Hero Image" class="img-fluid">

                            <div class="customers-badge">
                                <div class="customer-avatars">
                                    <img src="assets/img/project/baju1.jpeg" alt="Customer 1" class="avatar">
                                    <img src="assets/img/project/baju2.jpeg" alt="Customer 2" class="avatar">
                                    <img src="assets/img/project/baju3.jpeg" alt="Customer 3" class="avatar">
                                    <img src="assets/img/project/baju4.jpeg" alt="Customer 4" class="avatar">
                                    <img src="assets/img/project/baju5.jpeg" alt="Customer 5" class="avatar">
                                    <span class="avatar more">12+</span>
                                </div>
                                {{-- <p class="mb-0 mt-2">12,000+ lorem ipsum dolor sit amet consectetur adipiscing elit</p> --}}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row stats-row gy-4 mt-5" data-aos="fade-up" data-aos-delay="500">
                    <div class="col-lg-3 col-md-6">
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-item">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-item">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="stat-item">
                        </div>
                    </div>
                </div>

            </div>

        </section><!-- /Hero Section -->

        <!-- About Section -->
        <section id="about" class="about section">

            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row gy-4 align-items-center justify-content-between">

                    <div class="col-xl-5" data-aos="fade-up" data-aos-delay="200">
                        <span class="about-meta">MORE ABOUT US</span>
                        <h2 class="about-title">Baju nyaman, gaya simpel, harga masuk akal</h2>
                        <p class="about-description">
                            Snayzzy adalah toko baju harian dengan koleksi esensial yang simpel, mudah dipadu-padan, dan
                            tahan lama. Kami memilih material nyaman untuk iklim tropis—cotton combed 24s/30s, rayon,
                            linen blend, serta knit/baby terry untuk cuaca sejuk. Koleksi kami meliputi basic & oversize
                            tee, kemeja oxford/linen, celana chino & jogger,
                            blouse & outer ringan, hingga dress/gamis.
                            <br> Misi kami sederhana: bikin kamu percaya diri tiap hari lewat baju
                            yang nyaman, fit-nya pas, dan harganya masuk akal.
                        </p>

                        <div class="row feature-list-wrapper">
                            <div class="col-md-6">
                                <ul class="feature-list">
                                    <li><i class="bi bi-check-circle-fill"></i> Bahan adem & tidak menerawang</li>
                                    <li><i class="bi bi-check-circle-fill"></i> Jahitan rapi, awet dipakai</li>
                                    <li><i class="bi bi-check-circle-fill"></i> Warna awet, tak mudah pudar</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul class="feature-list">
                                    <li><i class="bi bi-check-circle-fill"></i> Harga masuk akal, kualitas terjaga</li>
                                    <li><i class="bi bi-check-circle-fill"></i> Kirim cepat / same-day*</li>
                                    <li><i class="bi bi-check-circle-fill"></i> Garansi tukar ukuran 7 hari</li>
                                </ul>
                            </div>
                        </div>

                        <div class="info-wrapper">
                            <div class="row gy-4">
                                <div class="col-lg-5">
                                    <div class="profile d-flex align-items-center gap-3">
                                        <img src="assets/img/avatar-1.webp" alt="CEO Profile" class="profile-image">
                                        <div>
                                            <h4 class="profile-name">Niseu Dump</h4>
                                            <p class="profile-position">CEO &amp; Pemilik</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="contact-info d-flex align-items-center gap-2">
                                        <i class="bi bi-telephone-fill"></i>
                                        <div>
                                            <p class="contact-label">Call us anytime</p>
                                            <p class="contact-number">08983423429</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="image-wrapper">
                            <div class="images position-relative" data-aos="zoom-out" data-aos-delay="400">
                                <img src="assets/img/about-5.webp" alt="Business Meeting"
                                    class="img-fluid main-image rounded-4">
                                <img src="assets/img/about-2.webp" alt="Team Discussion"
                                    class="img-fluid small-image rounded-4">
                            </div>
                        </div>
                    </div>


                </div>

            </div>

        </section><!-- /About Section -->

        <!-- Features Section -->
        <section id="features" class="features section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Features</h2>
                <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
                <!-- Features 2 Section -->
                <section id="features-2" class="features-2 section" style="padding-top: 0px;">


                    <div class="container" data-aos="fade-up" data-aos-delay="100">

                        <div class="row align-items-center">

                            <div class="col-lg-4">

                                <div class="feature-item text-end mb-5" data-aos="fade-right" data-aos-delay="200">
                                    <div class="d-flex align-items-center justify-content-end gap-4">
                                        <div class="feature-content">
                                            <h3>Use On Any Device</h3>
                                            <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
                                                posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.</p>
                                        </div>
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-display"></i>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                                <div class="feature-item text-end mb-5" data-aos="fade-right" data-aos-delay="300">
                                    <div class="d-flex align-items-center justify-content-end gap-4">
                                        <div class="feature-content">
                                            <h3>Feather Icons</h3>
                                            <p>Phasellus ullamcorper ipsum rutrum nunc nunc nonummy metus vestibulum
                                                volutpat sapien arcu sed augue aliquam erat volutpat.</p>
                                        </div>
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-feather"></i>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                                <div class="feature-item text-end" data-aos="fade-right" data-aos-delay="400">
                                    <div class="d-flex align-items-center justify-content-end gap-4">
                                        <div class="feature-content">
                                            <h3>Retina Ready</h3>
                                            <p>Aenean tellus metus bibendum sed posuere ac mattis non nunc
                                                vestibulum fringilla purus sit amet fermentum aenean commodo.</p>
                                        </div>
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-eye"></i>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                            </div>

                            <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="200">
                                <div class="phone-mockup text-center">
                                    <img src="assets/img/project/phone-app-screen.png" alt="Phone Mockup"
                                        class="img-fluid">
                                </div>
                            </div><!-- End Phone Mockup -->

                            <div class="col-lg-4">

                                <div class="feature-item mb-5" data-aos="fade-left" data-aos-delay="200">
                                    <div class="d-flex align-items-center gap-4">
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-code-square"></i>
                                        </div>
                                        <div class="feature-content">
                                            <h3>W3c Valid Code</h3>
                                            <p>Donec vitae sapien ut libero venenatis faucibus nullam quis ante
                                                etiam sit amet orci eget eros faucibus tincidunt.</p>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                                <div class="feature-item mb-5" data-aos="fade-left" data-aos-delay="300">
                                    <div class="d-flex align-items-center gap-4">
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-phone"></i>
                                        </div>
                                        <div class="feature-content">
                                            <h3>Fully Responsive</h3>
                                            <p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper
                                                libero sit amet adipiscing sem neque sed ipsum.</p>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                                <div class="feature-item" data-aos="fade-left" data-aos-delay="400">
                                    <div class="d-flex align-items-center gap-4">
                                        <div class="feature-icon flex-shrink-0">
                                            <i class="bi bi-browser-chrome"></i>
                                        </div>
                                        <div class="feature-content">
                                            <h3>Browser Compatibility</h3>
                                            <p>Nullam dictum felis eu pede mollis pretium integer tincidunt cras
                                                dapibus vivamus elementum semper nisi aenean vulputate.</p>
                                        </div>
                                    </div>
                                </div><!-- End .feature-item -->

                            </div>
                        </div>

                    </div>

                    <section id="features-cards" class="features-cards section">

                        <div class="container">

                            <div class="row gy-4">

                                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
                                    <div class="feature-box orange">
                                        <i class="bi bi-award"></i>
                                        <h4>Corporis voluptates</h4>
                                        <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut
                                            aliquip</p>
                                    </div>
                                </div><!-- End Feature Borx-->

                                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                                    <div class="feature-box blue">
                                        <i class="bi bi-patch-check"></i>
                                        <h4>Explicabo consectetur</h4>
                                        <p>Est autem dicta beatae suscipit. Sint veritatis et sit quasi ab aut inventore
                                        </p>
                                    </div>
                                </div><!-- End Feature Borx-->

                                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
                                    <div class="feature-box green">
                                        <i class="bi bi-sunrise"></i>
                                        <h4>Ullamco laboris</h4>
                                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                            deserunt</p>
                                    </div>
                                </div><!-- End Feature Borx-->

                                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                                    <div class="feature-box red">
                                        <i class="bi bi-shield-check"></i>
                                        <h4>Labore consequatur</h4>
                                        <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis
                                            facere</p>
                                    </div>
                                </div><!-- End Feature Borx-->

                            </div>

                        </div>

                    </section>

                </section>
                <!-- /Features 2 Section -->

        </section><!-- /Features Section -->


        <!-- Testimonials Section -->
        <section id="testimonials" class="testimonials section light-background">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Testimonials</h2>
                <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
            </div><!-- End Section Title -->

            <div class="container">

                <div class="row g-5">

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                        <div class="testimonial-item">
                            <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img"
                                alt="">
                            <h3>Saul Goodman</h3>
                            <h4>Ceo &amp; Founder</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span>Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit
                                    rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam,
                                    risus at semper.</span>
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="testimonial-item">
                            <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img"
                                alt="">
                            <h3>Sara Wilsson</h3>
                            <h4>Designer</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span>Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid
                                    cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet
                                    legam anim culpa.</span>
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="testimonial-item">
                            <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img"
                                alt="">
                            <h3>Jena Karlis</h3>
                            <h4>Store Owner</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span>Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem
                                    veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint
                                    minim.</span>
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                        <div class="testimonial-item">
                            <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img"
                                alt="">
                            <h3>Matt Brandon</h3>
                            <h4>Freelancer</h4>
                            <div class="stars">
                                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                    class="bi bi-star-fill"></i>
                            </div>
                            <p>
                                <i class="bi bi-quote quote-icon-left"></i>
                                <span>Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim
                                    fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem
                                    dolore labore illum veniam.</span>
                                <i class="bi bi-quote quote-icon-right"></i>
                            </p>
                        </div>
                    </div><!-- End testimonial item -->

                </div>

            </div>

        </section><!-- /Testimonials Section -->

        <!-- Call To Action 2 Section -->
        <section id="call-to-action-2" class="call-to-action-2 section dark-background">

            <div class="container">
                <div class="row justify-content-center" data-aos="zoom-in" data-aos-delay="100">
                    <div class="col-xl-10">
                        <div class="text-center">
                            <h3>Call To Action</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                officia deserunt mollit anim id est laborum.</p>
                            <a class="cta-btn" href="#">Call To Action</a>
                        </div>
                    </div>
                </div>
            </div>

        </section><!-- /Call To Action 2 Section -->

        <!-- Contact Section -->
        <section id="contact" class="contact section light-background">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Contact</h2>
                <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
            </div><!-- End Section Title -->

            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row g-4 g-lg-5">
                    <div class="col-lg-5">
                        <div class="info-box" data-aos="fade-up" data-aos-delay="200">
                            <h3>Contact Info</h3>
                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ante
                                ipsum primis.</p>

                            <div class="info-item" data-aos="fade-up" data-aos-delay="300">
                                <div class="icon-box">
                                    <i class="bi bi-geo-alt"></i>
                                </div>
                                <div class="content">
                                    <h4>Our Location</h4>
                                    <p>A108 Adam Street</p>
                                    <p>New York, NY 535022</p>
                                </div>
                            </div>

                            <div class="info-item" data-aos="fade-up" data-aos-delay="400">
                                <div class="icon-box">
                                    <i class="bi bi-telephone"></i>
                                </div>
                                <div class="content">
                                    <h4>Phone Number</h4>
                                    <p>+1 5589 55488 55</p>
                                    <p>+1 6678 254445 41</p>
                                </div>
                            </div>

                            <div class="info-item" data-aos="fade-up" data-aos-delay="500">
                                <div class="icon-box">
                                    <i class="bi bi-envelope"></i>
                                </div>
                                <div class="content">
                                    <h4>Email Address</h4>
                                    <p>info@example.com</p>
                                    <p>contact@example.com</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7">
                        <div class="contact-form" data-aos="fade-up" data-aos-delay="300">
                            <h3>Get In Touch</h3>
                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ante
                                ipsum primis.</p>

                            <form action="forms/contact.php" method="post" class="php-email-form"
                                data-aos="fade-up" data-aos-delay="200">
                                <div class="row gy-4">

                                    <div class="col-md-6">
                                        <input type="text" name="name" class="form-control"
                                            placeholder="Your Name" required="">
                                    </div>

                                    <div class="col-md-6 ">
                                        <input type="email" class="form-control" name="email"
                                            placeholder="Your Email" required="">
                                    </div>

                                    <div class="col-12">
                                        <input type="text" class="form-control" name="subject"
                                            placeholder="Subject" required="">
                                    </div>

                                    <div class="col-12">
                                        <textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
                                    </div>

                                    <div class="col-12 text-center">
                                        <div class="loading">Loading</div>
                                        <div class="error-message"></div>
                                        <div class="sent-message">Your message has been sent. Thank you!</div>

                                        <button type="submit" class="btn">Send Message</button>
                                    </div>

                                </div>
                            </form>

                        </div>
                    </div>

                </div>

            </div>

        </section><!-- /Contact Section -->

    </main>

    <footer id="footer" class="footer">

        <div class="container footer-top">
            <div class="row gy-4">
                <div class="col-lg-4 col-md-6 footer-about">
                    <a href="index.html" class="logo d-flex align-items-center">
                        <span class="sitename">Snayzzy Shop</span>
                    </a>
                    <div class="footer-contact pt-3">
                        <p>A108 Adam Street</p>
                        <p>New York, NY 535022</p>
                        <p class="mt-3"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
                        <p><strong>Email:</strong> <span>info@example.com</span></p>
                    </div>
                    <div class="social-links d-flex mt-4">
                        <a href=""><i class="bi bi-twitter-x"></i></a>
                        <a href=""><i class="bi bi-facebook"></i></a>
                        <a href=""><i class="bi bi-instagram"></i></a>
                        <a href=""><i class="bi bi-linkedin"></i></a>
                    </div>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Terms of service</a></li>
                        <li><a href="#">Privacy policy</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>Our Services</h4>
                    <ul>
                        <li><a href="#">Web Design</a></li>
                        <li><a href="#">Web Development</a></li>
                        <li><a href="#">Product Management</a></li>
                        <li><a href="#">Marketing</a></li>
                        <li><a href="#">Graphic Design</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>Hic solutasetp</h4>
                    <ul>
                        <li><a href="#">Molestiae accusamus iure</a></li>
                        <li><a href="#">Excepturi dignissimos</a></li>
                        <li><a href="#">Suscipit distinctio</a></li>
                        <li><a href="#">Dilecta</a></li>
                        <li><a href="#">Sit quas consectetur</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>Nobis illum</h4>
                    <ul>
                        <li><a href="#">Ipsam</a></li>
                        <li><a href="#">Laudantium dolorum</a></li>
                        <li><a href="#">Dinera</a></li>
                        <li><a href="#">Trodelas</a></li>
                        <li><a href="#">Flexo</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="container copyright text-center mt-4">
            <p>© <span>Copyright</span> <strong class="px-1 sitename">iLanding</strong> <span>All Rights
                    Reserved</span></p>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you've purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> Distributed By <a
                    href="https://themewagon.com">ThemeWagon</a>
            </div>
        </div>

    </footer>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/purecounter/purecounter_vanilla.js') }}"></script>

    <!-- Main JS File -->
    <script src="{{ asset('assets/js/main.js') }}"></script>

</body>

</html>
