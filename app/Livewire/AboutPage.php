<?php

namespace App\Livewire;

use App\Models\AboutUs;
use Livewire\Component;

class AboutPage extends Component
{
    public $title;
    public $description;
    public $image;
    public function __construct()
    {
        $title = "About Page";
        $description = "About Page Description";
        $image = "";
    }
    public function render()
    {
        $title = "About Page";
        $description = "About Page Description";
        $image = "";
        $aboutUsContent = AboutUs::first();

        return view('livewire.about-page', [
            'aboutUsContent' => $aboutUsContent,
            'title' => $title,
            'description' => $description,
            'image' => ""
        ]);
    }
}
