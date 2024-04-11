<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Laravel + Livewire</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Privacy Policy</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron text-center">
        <div class="container">
            <h1 class="display-4">Welcome to My Website Laravel + Livewire</h1>
        </div>
    </div>

    <section class="section-sm">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mx-auto">
                    <div class="content">
                        <h3>Home Page</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum
                            illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non
                            necessitatibus fugiat quia dolor, assumenda consectetur ut.</p>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam explicabo nulla voluptatum
                            illum quaerat molestias repellat illo libero accusamus voluptatibus earum possimus non
                            necessitatibus fugiat quia dolor, assumenda consectetur ut.</p>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="text-center">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6 col-md-6 col-6">
                    <h5 class="mb-4 text-primary font-secondary">Other Link</h5>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="service-details.html">About Us</a>
                        </li>
                        <li class="mb-2"><a href="service-details.html">Privacy Policy</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-6 col-6">
                    <p>&copy; 2024 My Website. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS (optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>