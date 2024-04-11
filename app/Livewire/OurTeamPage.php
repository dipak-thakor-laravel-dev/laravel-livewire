<?php

namespace App\Livewire;

use Livewire\Component;

class OurTeamPage extends Component
{
    public function render()
    {
        $title = "Our Team Page";
        $description = "Our Team Page Description";
        $image = "";
        return view('livewire.our-team-page', compact('title', 'description', 'image'));
    }
}
