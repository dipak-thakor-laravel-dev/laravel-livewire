<?php

namespace App\Livewire;

use Livewire\Component;

class TermConditionPage extends Component
{
    public function render()
    {
        $title = "Terms & Condition Page";
        $description = "Terms & Condition Page Description";
        $image = "";
        return view('livewire.term-condition-page', compact('title', 'description', 'image'));
    }
}
