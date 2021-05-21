@extends('layout.checkout')

@section('title')
Checkout
@endsection


@section('content')
<main>
    <section class="section-details-header">
    </section>
    <section class="section-details-content">
        <div class="container">
            <!--  navigasi page -->
            <div class="row">
                <div class="col p-0">
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                Paket Travel
                            </li>
                            <li class="breadcrumb-item">
                                Details
                            </li>
                            <li class="breadcrumb-item active">Checkout</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 pl-lg-0">
                    <div class="card card-details">
                        @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error )
                                <li>{{$error}}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <h1>Who's Going?</h1>
                        <p> Trip to {{$item->travel_packages->title}}, {{$item->travel_packages->location}}</p>
                        <div class="attendee">
                            <table class="table table-checkout table-sm-responsive text-center">
                                <thead>
                                    <tr>
                                        <td>Picture</td>
                                        <td>Name</td>
                                        <td>Nationality</td>
                                        <td>VISA</td>
                                        <td>Passport</td>
                                        <td></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($item->details as $detail)
                                    <tr>
                                        <td class="align-middle "> <img src="https://ui-avatars.com/api/?name={{$detail->username}}" alt="img_avatar" class="rounded-circle"></td>
                                        <td class="align-middle">{{$detail->username}}</td>
                                        <td class="align-middle">{{$detail->nationality}}</td>
                                        <td class="align-middle">{{$detail->is_visa? '30 Days':'N/A'}}</td>
                                        <td class="align-middle">{{\Carbon\Carbon::createFromDate($detail->doe_passport)>\Carbon\Carbon::now()? 'Active':'Inactive'}}</td>
                                        <td class="align-middle "><a href="{{route('checkout-remove',$detail->id)}}"><img src="{{url('frontend/images/icon_remove.png')}}" alt="ic_remove" class="ic_remove"></a></td>
                                    </tr>
                                    @empty
                                    <tr>
                                        <td colspan="6" class="text-center">
                                            No Visitor
                                        </td>
                                    </tr>
                                    @endforelse
                                </tbody>

                            </table>
                        </div>
                        <div class="member mt-3">
                            <h2>Add Member</h2>
                            <form class="form-inline" action="{{route('checkout-create',$item->id)}}" method="POST">
                                @csrf
                                <label for=" username" class="sr-only">Name</label>
                                <input class="form-control mb-2 mr-sm-2" id="username" required name="username" placeholder="Username">
                                </input>

                                <label for=" nationality" class="sr-only">Nationality</label>
                                <input class="form-control mb-2 mr-sm-2" id="nationality" required name="nationality" placeholder="Nationality" style="width:50px">
                                </input>

                                <label for="is_visa" class="sr-only">Visa</label>
                                <select name="is_visa" id="is_visa" required class="custom-select mb-2 mr-sm-2">
                                    <option value="" selected>VISA</option>
                                    <option value="1">30 Days</option>
                                    <option value="0">N/A</option>
                                </select>

                                <label for="doe_passport" class="sr-only">DOE Passport</label>
                                <div class="input-group mb-2 mr-sm-2">
                                    <input type="text" class="form-control datepicker" style="width:130px" id="doe_passport" name="doe_passport" placeholder="DOE Passport">
                                </div>

                                <button class="btn btn-add-now mb-2 px-4 py-1">
                                    Add Now
                                </button>
                            </form>
                            <div class="note">
                                <h2 class="mt-2 mb-0">Note</h2>
                                <p class="disclaimer mb-0">You are only able to invite member that has registered in Nomads.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card card-details card-right">
                        <h2>Checkout Informations</h2>
                        <table class="trip-informations">
                            <tr>
                                <th width="50%">Members</th>
                                <td width="50%" class="text-right">{{$item->details->count()}} Person</td>
                            </tr>
                            <tr>
                                <th width="50%">Additional VISA</th>
                                <td width="50%" class="text-right">{{$item->additional_visa}},00</td>
                            </tr>
                            <tr>
                                <th width="50%">Trip Price</th>
                                <td width="50%" class="text-right">${{$item->travel_packages->price}},00/person</td>
                            </tr>
                            <tr>
                                <th width="50%">Total Price</th>
                                <td width="50%" class="text-right">${{$item->transaction_total}},00</td>
                            </tr>
                            <tr>
                                <th width="50%" class="text-total">Total Pay (+Unique)</th>
                                <td width="50%" class="text-right text-total">
                                    <span class="text-blue">$ {{$item->transaction_total}},</span>
                                    <span class="text-orange">{{mt_rand(0,99)}}</span>
                                </td>
                            </tr>
                        </table>
                        <hr>
                        <h2>Payment Intructions</h2>
                        <p class="payment-instruction">Please complete the payment before you continue the trip</p>
                        <div class="payment-bank mt-3">
                            <div class="bank-item pb-3 mt-1">
                                <img src="{{url('frontend/images/ic_payment.png')}}" class="bank-image">
                                <div class="description">
                                    <h2>PT. NOMADS ID</h2>
                                    <p>Central Asia</p>
                                    <p>0829 0999 8390</p>
                                </div>
                            </div>
                        </div>
                        <div class="payment-bank">
                            <div class="bank-item pb-3 mt-1">
                                <img src="{{url('frontend/images/ic_payment.png')}}" class="bank-image">
                                <div class="description">
                                    <h2>PT. NOMADS ID</h2>
                                    <p>Bank HSBC</p>
                                    <p>1111 2208 1996</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="join-container">
                        <a href="{{route('checkout-success',$item->id)}}" class="btn btn-block btn-join-now">I Have Made Payment</a>
                        <a href="{{url('/detail',$item->travel_packages->slug)}}" class="btn btn-block btn-cancel">Cancel</a>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main>
@endsection


@push('prepend-style')
<link rel="stylesheet" href="{{url('frontend/libraries/gijgo/css/gijgo.min.css')}}">
@endpush

@push('addon-script')
<script src="{{url('frontend/libraries/gijgo/js/gijgo.min.js')}}"></script>
<script>
    $(document).ready(function() {

        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            uiLibrary: 'bootstrap4',
            icons: {
                rightIcon: `<img src="{{url('frontend/images/calendar.png')}}" width="20" height="20"/>`
            }
        });
    });
</script>
@endpush