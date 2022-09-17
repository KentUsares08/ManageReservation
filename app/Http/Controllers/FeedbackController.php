<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FeedbackController extends Controller
{
    public function show1()
    {
     $data= Feedback::all();
     return view('welcome',['feedback'=>$data]);
    }

    function index1()
    {
        $data = DB::table('feedback')
            ->select(
            DB::raw('rating as rating'),
            DB::raw('count(*) as number'))
            ->groupBy('rating')
            ->get();
        $array[] = ['Rating','Number'];
        foreach($data as $key => $value)
        {
            $array[++$key] =  [$value->rating, $value->number];
        }
        return view('admin.index')->with('rating', json_encode($array));
    }
}
