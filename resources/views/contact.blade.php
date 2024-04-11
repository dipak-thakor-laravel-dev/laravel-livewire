<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <style>
        * {
            font-family: "Poppins", sans-serif;
        }

        body {
            background-image: linear-gradient(to left bottom,
                    #051937,
                    #05162f,
                    #051327,
                    #040f1f,
                    #010a18);

            background-size: 800%;
            animation: animateClr 1s infinite cubic-bezier(0.62, 0.28, 0.23, 0.99);
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        textarea {
            border: none;
            border-bottom: 2px solid rgb(128, 126, 126);
            background: transparent;
            outline: none;
            width: 100%;
            text-transform: capitalize;
            padding: 1rem 0.4rem;
        }

        .aside {
            background-image: linear-gradient(to left bottom,
                    #051937,
                    #002350,
                    #002d69,
                    #003684,
                    #01409f);
            animation: animateClr 5s infinite cubic-bezier(0.62, 0.28, 0.23, 0.99);
            background-size: 400%;
        }

        @keyframes animateClr {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        ion-icon:not([name="logo-codepen"]) {
            border: 1px solid currentColor;
            border-radius: 20%;
            padding: 1rem;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="bg-light">
            <div class="row">
                <div class="col-lg-8 col-md-12 p-5 bg-white rounded-3">
                    <div class="d-flex mb-3 flex-column">
                        <h1 class="h5 text-capitalize my-4">What service You need ?</h1>
                        <div class="d-flex flex-wrap">
                            <div
                                class="
                          d-flex
                          flex-wrap
                          justify-content-center
                          align-items-center
                          me-4
                        ">
                                <input type="checkbox" name="webdev" class="form-check-input m-0 me-3"
                                    id="webdev" />
                                <label for="webdev"> Web Development</label>
                            </div>
                            <div
                                class="
                          d-flex
                          flex-wrap
                          justify-content-center
                          align-items-center
                          me-4
                        ">
                                <input type="checkbox" name="webdes" class="form-check-input m-0 me-3"
                                    id="webdes" />
                                <label for="webdes"> Web Design</label>
                            </div>
                            <div
                                class="
                          d-flex
                          flex-wrap
                          justify-content-center
                          align-items-center
                          me-4
                        ">
                                <input type="checkbox" name="logodes" class="form-check-input m-0 me-3"
                                    id="logodes" />
                                <label for="logodes"> Logo Design</label>
                            </div>
                            <div
                                class="
                          d-flex
                          flex-wrap
                          justify-content-center
                          align-items-center
                          me-4
                        ">
                                <input type="checkbox" name="others" class="form-check-input m-0 me-3"
                                    id="others" />
                                <label for="others"> Others </label>
                            </div>
                        </div>
                    </div>
                    <form class="row mb-3" action="{{ route('contactsub') }}" method="POST">
                        @csrf
                        <div class="col-md-6 p-3">
                            <input placeholder="first name" type="text" name="title" id="" />
                        </div>
                        @if ($errors->has('title'))
                            <span class="text-danger">{{ $errors->first('title') }}</span>
                        @endif
                        <div class="col-md-6 p-3">
                            <input placeholder="last name" type="text" name="" id="" />
                        </div>
                        @if ($errors->has('title'))
                            <span class="text-danger">{{ $errors->first('title') }}</span>
                        @endif
                        <div class="col-md-6 p-3">
                            <input placeholder="E-mail" type="email" name="" id="" />
                        </div>
                        <div class="col-md-6 p-3">
                            <input placeholder="phone" type="tel" name="" id="" />
                        </div>
                        <div class="col-md">
                            <textarea name="" placeholder="write your message" id="" cols="30" rows="1"></textarea>
                        </div>
                        <div class="g-recaptcha" id="feedback-recaptcha"
                            data-sitekey="{{ env('GOOGLE_RECAPTCHA_KEY') }}"></div>
                        @if ($errors->has('g-recaptcha-response'))
                            <span class="text-danger">{{ $errors->first('g-recaptcha-response') }}</span>
                        @endif
                        <div class="text-end mt-4">
                            <input class="btn px-4 py-3 btn-outline-dark" type="submit" value="Send Message" />
                        </div>

                    </form>
                </div>
                <div class="col-lg-4 col-md-12 text-white aside px-4 py-5">
                    <div class="mb-5">
                        <h1 class="h3">Contact Information</h1>
                        <p class="opacity-50">
                            <small>
                                Fill out the from and we will get back to you whitin 24 hours
                            </small>
                        </p>
                    </div>
                    <div class="d-flex flex-column px-0">
                        <ul class="m-0 p-0">
                            <li class="d-flex justify-content-start align-items-center mb-4">
                                <span class="opacity-50 d-flex align-items-center me-3 fs-2">
                                    <ion-icon name="call"></ion-icon>
                                </span>
                                <span>+134 1234 1234</span>
                            </li>
                            <li class="d-flex align-items-center r mb-4">
                                <span class="opacity-50 d-flex align-items-center me-3 fs-2">
                                    <ion-icon name="mail"></ion-icon>
                                </span>
                                <span>Help@contact.com</span>
                            </li>
                            <li class="d-flex justify-content-start align-items-center mb-4">
                                <span class="opacity-50 d-flex align-items-center me-3 fs-2">
                                    <ion-icon name="pin"></ion-icon>
                                </span>
                                <span>52 Buddy Ln Conway, <br />
                                    Arkansas(AR), 72032
                                </span>
                            </li>
                        </ul>
                        <div class="text-muted text-center">
                            <code>
                                Inspiration from :
                                <a
                                    href="https://dribbble.com/shots/14126196-Contact-Form-01/attachments/5749555?mode=media">
                                    Erşad Başbağ
                                </a></code>
                            <br />
                            <code>Created By : walid cherhane </code> <br />
                            <code><a class="fs-3" href="https://codepen.io/walidcherhane" target="_blank">
                                    <ion-icon name="logo-codepen"></ion-icon>
                                </a></code>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

</body>

</html>
