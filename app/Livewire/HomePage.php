<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class HomePage extends Component
{
    public function render()
    {
        $title = "Home Page";
        $description = "Home Page Description";
        $image = "";
        $services = Service::orderBy('title', 'ASC')->get();
        return view('livewire.home-page', [
            'services' => $services,
            'title' => $title,
            'description' => $description,
            'image' => ""
        ]);
    }
}
