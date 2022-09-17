<?php

namespace App\Http\Controllers;

use App\Models\Reservation;
use Illuminate\Http\Request;
use PDF;

class EmpController extends Controller
{
    public function getAllReservations()
    {
        $reservations = Reservation::all();
        return view('reservation', compact('reservations'));
    }

    public function downloadPDF()
    {
        $reservations = Reservation::all();
        $pdf = PDF::loadView('reservation', compact('reservations'));
        return $pdf->download('reservations.pdf');
    }
}
