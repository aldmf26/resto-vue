<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class MenuController extends Controller
{
    public function index()
    {
        $id_lokasi = 1;
        $lokasi = $id_lokasi == 1 ? 'TAKEMORI' : 'SOONDOBU';
        $data = [
            'menu' => DB::table('tb_menu as a')
                            ->join('tb_kategori as b', 'a.id_kategori', 'b.kd_kategori')
                            ->join('tb_handicap as c', 'a.id_handicap', 'c.id_handicap')
                            ->join('tb_station as d', 'a.id_station', 'd.id_station')
                            ->select(
                                'a.id_menu',
                                'a.kd_menu',
                                'a.aktif',
                                'a.tipe',
                                'a.nm_menu',
                                'b.kategori',
                                'c.handicap',
                                'c.point',
                                'd.nm_station',
                            )
                            ->where('a.lokasi', $id_lokasi)
                            ->get(),
            'kategori' => DB::table('tb_kategori')->where('lokasi', $lokasi)->get(),
            'level' => DB::table('tb_handicap')->where('id_lokasi', $id_lokasi)->get(),
            'station' => DB::table('tb_station')->where('id_lokasi', $id_lokasi)->get(),
            'distribusi' => DB::table('tb_distribusi')->get(),
        ];
        return Inertia::render('Administrator/Menu/Index', $data);
    }
}
