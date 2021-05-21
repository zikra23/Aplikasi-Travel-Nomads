@extends('layout.app')

@section('title')
NOMADS
@endsection

@section('content')
<!-- header -->
<header class="text-center">
    <h1>
        Explore the Beautiful World
        <br> As Easy One Click
    </h1>
    <p class="mt-3">
        You will see beautiful
        <br> moment you never see before
    </p>
    <a href="#popular" class="btn btn-get-started py-2 px-4 mt-4">
        Get Started
    </a>
</header>

<main>
    <div class="container">
        <section class="section-stats row justify-content-center" id="stats">
            <div class="col-3 col-md-2 stats-detail">
                <h2>20K</h2>
                <p>Members</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>12</h2>
                <p>Countries</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>3K</h2>
                <p>Hotels</p>
            </div>
            <div class="col-3 col-md-2 stats-detail">
                <h2>7</h2>
                <p>Partners</p>
            </div>
        </section>
    </div>

    <section class="section-popular" id="popular">
        <div class="container">
            <div class="row">
                <div class="col text-center section-popular-heading">
                    <h2>Wisata Popular</h2>
                    <p>Something that you never try
                        <br> before in this world
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-popular-content" id="popularContent">
        <div class="container">
            <div class="section-popular-travel row justify-content-center">
                @foreach($items as $item)
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="card-travel text-center d-flex flex-column" style="background-image: url('{{$item->galleries->count() ? Storage::url($item->galleries->first()->image):`s`}}');">
                        <div class="travel-countri">{{$item->location}}</div>
                        <div class="travel-location">{{$item->title}}</div>
                        <div class="travel-button mt-auto">
                            <a href="{{route('detail', $item->slug)}}" class="btn btn-travel-details py-2 px-4">
                                View Details
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="section-network" id="networks">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h2>Our Networks</h2>
                    <p>
                        Companies are trusted us
                        <br> more than just a trip
                    </p>
                </div>
                <div class="col-md-8 text-center py-4 partner-list">
                    <div class="row">
                        <div class="col-md-3">
                            <img class="partner-item" src="frontend/images/partner1.png" alt="partner">
                        </div>
                        <div class="col-md-3">
                            <img class="partner-item" src="frontend/images/partner2.png" alt="partner">
                        </div>
                        <div class="col-md-3">
                            <img class="partner-item" src="frontend/images/partner3.png" alt="partner">
                        </div>
                        <div class="col-md-3">
                            <img class="partner-item" src="frontend/images/partner4.png" alt="partner">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-testimonial-heading">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <h2>They are Loving Us</h2>
                    <p>
                        Moment were Giving Them
                        <br> the Best Experience
                    </p>

                </div>
            </div>
        </div>
    </section>

    <section class="section-testimonial-content" id="testimonialContent">
        <div class="container">
            <div class="section-popular-traver row justify-content-center">
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testimonial-content">
                            <img src="frontend/images/testimonial1.png" alt="user" class="mb-4 rounded circle">
                            <div class="mb-4">
                                <h3>Angga Rizky</h3>
                                <p class="testimonial">
                                    “ It was glorious and i could <br> stop to say woohoo for <br> every single moment <br>Dankeeeeee “
                                </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Ubud, Bali, Indonesia
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testimonial-content">
                            <img src="frontend/images/testimonial2.png" alt="user" class="mb-4 rounded circle">
                            <div class="mb-4">
                                <h3>Jonathan</h3>
                                <p class="testimonial">
                                    “ This trip give me more<br> inspiration “
                                </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Nusa Penida </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4">
                    <div class="card card-testimonial text-center">
                        <div class="testimonial-content">
                            <img src="frontend/images/testimonial3.png" alt="user" class="mb-4 rounded circle">
                            <div class="mb-4">
                                <h3>Skye</h3>
                                <p class="testimonial">
                                    “ Beautiful view and so<br> relaxing trip, I can’t forget<br> this memorable moment “

                                </p>
                            </div>
                            <hr>
                            <p class="trip-to mt-2">
                                Trip to Ubud, Bali, Indonesia
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="#" class="btn btn-need-help py-2 px-4 mt-4 mx-1">
                        I Need Help!
                    </a>
                    <a href="{{route('register')}}" class="btn btn-get-started py-2 px-4 mt-4 mx-1">
                        Get Started
                    </a>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection