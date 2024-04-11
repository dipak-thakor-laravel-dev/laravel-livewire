<?php

use App\Http\Controllers\ContactUsController;
use App\Http\Controllers\ServiceController;
use App\Livewire\AboutPage;
use App\Livewire\BlogPage;
use App\Livewire\FaqPage;
use App\Livewire\HomePage;
use App\Livewire\OurTeamPage;
use App\Livewire\PrivacyPolicyPage;
use App\Livewire\ServicePage;
use App\Livewire\TermConditionPage;
use App\Livewire\Test;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/', [ServiceController::class, 'index'])->name('home');
Route::get('/', HomePage::class)->name('home');
Route::get('/about-us', AboutPage::class)->name('aboutUs');
Route::get('/services', ServicePage::class)->name('servicePage');
Route::get('/our-team', OurTeamPage::class)->name('ourTeam');
Route::get('/blogs', BlogPage::class)->name('blog');
Route::get('/faqs', FaqPage::class)->name('faq');
Route::get('/privacy-policy', PrivacyPolicyPage::class)->name('privacy');
Route::get('/term-condition', TermConditionPage::class)->name('term');
Route::get('/test', Test::class);
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::post('/tests', [ContactUsController::class, 'create'])->name('contactsub');
Route::get('/test', function () {
    return view('contact');
});
