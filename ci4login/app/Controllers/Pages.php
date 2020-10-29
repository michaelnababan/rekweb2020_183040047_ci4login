<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'title' => "MichaelN| Home Page"
    ];
    return view('pages/home', $data);
  }
  public function about($nama = 'Michael Nababan', $umur = 20)
  {
    $data = [
      'title' => "About Me",
      'nama' => $nama,
      'umur' => $umur
    ];
    return view('pages/about', $data);
  }
  public function contact()
  {
    $data = [
      'title' => "Contact Us",
      'alamat' => [
        [
          'tipe' => 'Rumah',
          'alamat' => 'Jl. Jatiraga Barat RT/RW 006/002',
          'kota' => 'Majalengka'
        ],
        [
          'tipe' => 'Universitas Pasundan',
          'alamat' => 'Jl. Dr Setiabudi No.193',
          'kota' => 'Kota Bandung'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }
}
