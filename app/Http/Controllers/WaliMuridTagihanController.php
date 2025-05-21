<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\Tagihan;
use App\Models\Pembayaran;
use App\Models\BankSekolah;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Notification;
use App\Notifications\PembayaranKonfirmasiNotification;

class WaliMuridTagihanController extends Controller
{
    public function index()
    {
        // $siswaId = Auth::user()->getAllSiswaId(); getAllSiswaId dapat dari model user
        $data['tagihan'] = Tagihan::WaliSiswa()->get(); //karna extends model tagihan maka ada method scopewalisiswa
        return view('wali.tagihan_index', $data);
    }
    public function show($id)
    {
        $tagihan = Tagihan::WaliSiswa()->findOrfail($id);
        if ($tagihan->status == 'lunas') {
            $pembayaranId = $tagihan->pembayaran->last()->id;
            return redirect()->route('wali.pembayaran.show', $pembayaranId);
        }
        $statusPembayaran = '';
        if (request('check')) {
            $response = Http::withHeaders([
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
                'Authorization' => 'Basic ' . base64_encode(env('MIDTRANS_SERVER_KEY') . ':')
            ])->get('https://api.sandbox.midtrans.com/v2/' . $tagihan->getNomorTagihan() . '/status');
            $responseJson = $response->json();
            $statusPembayaran = $responseJson['transaction_status'];
            if ($statusPembayaran == 'settlement') {
                // update status pembayaran
                $requestData['tanggal_bayar'] = now();
                $requestData['jumlah_dibayar'] = $responseJson['gross_amount'];
                $requestData['tagihan_id'] = $tagihan->id;
                $requestData['tanggal_konfirmasi'] = now();
                $requestData['metode_pembayaran'] = 'manual';
                $requestData['wali_id'] = $tagihan->siswa->wali_id ?? 0;

                $pembayaran = Pembayaran::firstOrCreate($requestData, ['tanggal_bayar' => now(), 'tanggal_konfirmasi' => now()]);
                $wali = $pembayaran->wali;
                $pembayaran->tanggal_konfirmasi = now();
                $pembayaran->user_id = auth()->user()->id;
                $pembayaran->save();
                $pembayaran->tagihan->status = 'lunas';
                $pembayaran->tagihan->tanggal_lunas = $pembayaran->tanggal_bayar;
                $pembayaran->tagihan->save();
                Notification::send($wali, new PembayaranKonfirmasiNotification($pembayaran));
                flash("Data Pembayaran Berhasil Di Konfirmasi");

                return redirect('/walimurid/tagihan');
            }
        }
        $banksekolah = BankSekolah::all();
        $data['bankSekolah'] = $banksekolah;
        $data['statusPembayaran'] = $statusPembayaran;
        $data['tagihan'] = $tagihan;
        $data['siswa'] = $tagihan->siswa;
        return view('wali.tagihan_show', $data);
    }
}
