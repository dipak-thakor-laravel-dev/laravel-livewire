<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index()
    {
        $services = Service::orderBy('title', 'ASC')->get();
        return view('pages.home', [
            'services' => $services
        ]);
    }
}
