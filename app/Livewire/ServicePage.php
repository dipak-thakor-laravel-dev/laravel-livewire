<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class ServicePage extends Component
{
    public function render()
    {
        $title = "Service Page";
        $description = "Service Page Description";
        $image = "";
        $services = Service::orderBy('title', 'ASC')->get();
        return view('livewire.service-page', [
            'services' => $services,
            'title' => $title,
            'description' => $description,
            'image' => ""
        ]);
    }
}
