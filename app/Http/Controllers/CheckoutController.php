<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\Mail\TransactionSuccess;

use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\TransactionDetail;
use App\Models\TravelPackage;

use Carbon\Carbon;
use Exception;
use Illuminate\Support\Facades\Auth;

use Midtrans\Config;
use Midtrans\Snap;
use PhpParser\Node\Stmt\Catch_;

class CheckoutController extends Controller
{
    public function index(Request $request, $id)
    {

        $item = Transaction::with(['details', 'travel_packages', 'user'])->findOrFail($id);


        return view('pages.checkout', [
            'item' => $item
        ]);
    }

    public function process(Request $request, $id)
    {
        $travel_package = TravelPackage::findOrFail($id);;

        $transaction = Transaction::create([
            'travel_packages_id' => $id,
            'user_id' => Auth::user()->id,
            'additional_visa' => 0,
            'transaction_total' =>  $travel_package->price,
            'transaction_status' => 'IN_CART'
        ]);

        TransactionDetail::create([
            'transaction_id' => $transaction->id,
            'username' => Auth::user()->username,
            'nationality' => 'ID',
            'is_visa' => false,
            'doe_passport' => Carbon::now()->addYears(5)
        ]);

        return redirect()->route('checkout', $transaction->id);
    }

    public function remove(Request $request, $detail_id)
    {
        $item = TransactionDetail::findOrFail($detail_id);

        $transaction = Transaction::with(['details', 'travel_packages'])
            ->findOrFail($item->transaction_id);

        // jika visa ada, kurangi
        if ($item->is_visa) {
            $transaction->transaction_total -= 190;
            $transaction->additional_visa -= 190;
        }

        //hitung total transaksi
        $transaction->transaction_total -= $transaction->travel_packages->price;

        $transaction->save();
        $item->delete();

        return redirect()->route('checkout', ($item->transaction_id));
    }

    public function create(Request $request, $id)
    {
        //validasi input
        $request->validate([
            'username' => 'required|string|exists:users,username',
            'nationality' => 'required|string',
            'is_visa' => 'required|boolean',
            'doe_passport' => 'required'
        ]);

        $data = $request->all();
        $data['transaction_id'] = $id;

        TransactionDetail::create($data);

        // cari id transaksi
        $transaction = Transaction::with(['travel_packages'])->find($id);

        // jika visa ada
        if ($request->is_visa) {
            $transaction->transaction_total += 190;
            $transaction->additional_visa += 190;
        }


        //hitung total transaksi
        $transaction->transaction_total += $transaction->travel_packages->price;

        $transaction->save();

        return redirect()->route('checkout', $id);
    }

    public function success(Request $request, $id)
    {

        $transaction = Transaction::with(['details', 'travel_packages.galleries', 'user'])->findOrFail($id);

        $transaction->transaction_status = 'PENDING';

        $transaction->save();

        // // Set Konfigurasi Mid Trans
        // // (diambil dari file config midtrans)
        // // Set your Merchant Server Key
        // Config::$serverKey = config('midtrans.serverkey');
        // // Set to Development/Sandbox Environment (default). Set to true for Production Environment (accept real transaction).
        // Config::$isProduction = config('midtrans.isProduction');
        // // Set sanitization on (default)
        // Config::$isSanitized = config('midtrans.isSanitized');
        // // Set 3DS transaction for credit card to true
        // Config::$is3ds = config('midtrans.is3ds');

        // // buat array untuk di kirim ke midtrans

        // $midtrans_params = [
        //     'transaction_details' => [
        //         'order_id' => 'TEST' . $transaction->id,
        //         'gross_ammount' => (int) $transaction->trasaction_total
        //     ],
        //     'customer_details' => [
        //         'first_name' => $transaction->user->name,
        //         'email' => $transaction->user->email,
        //     ],
        //     'enabled_payment' => ['gopay'],
        //     'vtweb' => []
        // ];

        // try {
        //     // ambil halaman payment midtrans
        //     $paymentUrl = Snap::createTransaction($midtrans_params)->redirect_url;
        //     // Redirect to Snap Payment Page Midtras
        //     header('Location: ' . $paymentUrl);
        // } catch (Exception $e) {
        //     // throw $th
        //     echo $e->getMessage();
        // }

        // kirim e-ticket ke email user
        Mail::to($transaction->user)->send(
            new TransactionSuccess($transaction)
        );

        return view('pages.success');
    }
}
