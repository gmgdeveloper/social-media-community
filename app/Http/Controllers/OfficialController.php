<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OfficialController extends Controller
{
    public function index()
    {
        $page_data['view_path'] = 'frontend.official.officials';
        return view('frontend.index', $page_data);
    }
}
