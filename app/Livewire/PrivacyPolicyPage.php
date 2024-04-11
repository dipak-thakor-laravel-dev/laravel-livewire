<?php

namespace App\Livewire;

use Livewire\Component;

class PrivacyPolicyPage extends Component
{
    public function render()
    {
        $title = "Privacy Policy Page";
        $description = "Privacy Policy Page Description";
        $image = "";
        return view('livewire.privacy-policy-page', compact('title', 'description', 'image'));
    }
}
