<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class ContactUsController extends Controller
{

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'g-recaptcha-response' => function ($attribute, $value, $fail) {
                $secretKey = '6LFSEW@aAAAAAOVUxCwVvy40kqgz8WsSqGVcb17y';
                $response = $value;
                $userIP = $_SERVER['REMOTE_ADDR'];
                $url = "URL: https://www.google.com/recaptcha/api/siteverify?secret=$secretKey&response=$response&remoteip=$userIP";
                $response = \file_get_contents($url);
                $response = json_decode($response);
                if (!$response->success) {
                    Session::flash('g-recaptcha-response', 'please check recaptcha');
                    Session::flash('alert-class', 'alert-danger');
                    $fail($attribute . 'google reCatpcha failed');
                }
            },

        ]);
    }
    protected function create(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|max:70',
            'description' => 'required',
            'g-recaptcha-response' => 'required|recaptcha'
        ]);
    }
}
