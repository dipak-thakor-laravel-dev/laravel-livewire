<?php

namespace App\Livewire;

use App\Models\Post;
use Livewire\Component;

class BlogPage extends Component
{
    public function render()
    {
        $title = "Post Page";
        $description = "Post Page Description";
        $image = "";
        $posts = Post::orderBy('title', 'ASC')->get();
        return view('livewire.blog-page', [
            'title' => $title,
            'description' => $description,
            'image' => "",
            'posts' => $posts
        ]);
    }
}
