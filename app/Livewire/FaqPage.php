<?php

namespace App\Livewire;

use Livewire\Component;

class FaqPage extends Component
{
    public function render()
    {
        $title = "Faq Page";
        $description = "Faq Page Description";
        $image = "";
        return view('livewire.faq-page', [
            'title' => $title,
            'description' => $description,
            'image' => ""
        ]);
    }
}
