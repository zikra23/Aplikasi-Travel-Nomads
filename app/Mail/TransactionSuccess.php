<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class TransactionSuccess extends Mailable
{
    use Queueable, SerializesModels;
    public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        //proses data yang dikirimkan
        $this->data = $data;
        // echo ($data->travel_packages->galleries[1]->image);
        // echo ($data);
        // echo ($data->id);
        // exit();
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

        return $this
            ->from('h1belajarcoding@gmail.com', 'NOMADS')
            ->subject('Tiket NOMADS Anda')
            ->view('email.transaction_success',);
    }
}
