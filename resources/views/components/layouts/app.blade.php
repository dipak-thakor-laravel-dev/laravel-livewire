<!DOCTYPE html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    @include('meta::manager', [
        'title' => !empty($title) ? $title : '',
        'description' => !empty($title) ? $descritption : '',
        'image' => '',
    ])
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
    <meta name="author" content="Themefisher">
    <link rel="shortcut icon" href="{{ asset('assets/front/images/favicon.png') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('assets/front/images/favicon.png') }}" type="image/x-icon">

    <!-- # Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- # CSS Plugins -->
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/slick/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/font-awesome/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/font-awesome/solid.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/font-awesome/brands.css') }}">

    <!-- # Main Style Sheet -->
    <link rel="stylesheet" href="{{ asset('assets/front/css/style.css') }}">

    @livewireStyles
</head>

<body>

    <!-- navigation -->
    <header class="navigation bg-tertiary">
        <nav class="navbar navbar-expand-xl navbar-light text-center py-3">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                    <img loading="prelaod" decoding="async" class="img-fluid" width="160"
                        src="{{ asset('assets/front/images/logo.png') }}" alt="Wallet">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item"> <a wire:navigate class="nav-link" href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="nav-item "> <a wire:navigate class="nav-link" href="{{ route('aboutUs') }}">About
                                Us</a></li>
                        <li class="nav-item "> <a wire:navigate class="nav-link"
                                href="{{ route('servicePage') }}">Services</a></li>
                        <li class="nav-item "> <a wire:navigate class="nav-link" href="{{ route('ourTeam') }}">Our
                                Team</a></li>
                        <li class="nav-item "><a wire:navigate class="nav-link " href="{{ route('blog') }}">Blog</a>
                        </li>
                        <li class="nav-item "><a wire:navigate class="nav-link " href="{{ route('faq') }}">FAQ</a>
                        </li>
                    </ul>
                    <a href="#!" class="btn btn-outline-primary">Contact Us</a>
                </div>
            </div>
        </nav>
    </header>

    {{ $slot }}

    <footer class="section-sm bg-tertiary">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-2 col-md-4 col-6 mb-4">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Service</h5>
                        <ul class="list-unstyled">
                            <li class="mb-2"><a href="service-details.html">Digital Marketing</a>
                            </li>
                            <li class="mb-2"><a href="service-details.html">Web Design</a>
                            </li>
                            <li class="mb-2"><a href="service-details.html">Logo Design</a>
                            </li>
                            <li class="mb-2"><a href="service-details.html">Graphic Design</a>
                            </li>
                            <li class="mb-2"><a href="service-details.html">SEO</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-6 mb-4">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Quick Links</h5>
                        <ul class="list-unstyled">
                            <li class="mb-2"><a wire:navigate href="{{ route('aboutUs') }}">About Us</a>
                            </li>
                            {{-- <li class="mb-2"><a href="#!">Contact Us</a> --}}
                            </li>
                            <li class="mb-2"><a wire:navigate href="{{ route('blog') }}">Blog</a>
                            </li>
                            <li class="mb-2"><a wire:navigate href="{{ route('ourTeam') }}">Team</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-6 mb-4">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Other Links</h5>
                        <ul class="list-unstyled">
                            <li class="list-inline-item me-4"><a wire:navigate class="text-black"
                                    href="{{ route('privacy') }}">Privacy Policy</a>
                            </li>
                            <li class="list-inline-item me-4"><a wire:navigate class="text-black"
                                    href="{{ route('term') }}">Terms &amp;
                                    Conditions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </footer>

    <!-- # JS Plugins -->
    <script src="{{ asset('assets/front/plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/front/plugins/bootstrap/bootstrap.min.js') }}"></script>

    <!-- Main Script -->
    <script src="{{ asset('assets/front/js/script.js') }}"></script>

    @livewireScripts
    
</body>

</html>