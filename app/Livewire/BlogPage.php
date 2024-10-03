<?php

namespace App\Livewire;

use App\Models\Post;
use Livewire\Component;
use Livewire\WithPagination;
use TCG\Voyager\Models\Category;

class BlogPage extends Component
{
    use WithPagination;
    // public $posts;
    protected $paginationTheme = 'bootstrap';

    public function render()
    {
        $title = "Post Page";
        $description = "Post Page Description";
        $image = "";
        $latestPost = Post::latest()->take(3)->get();
        $category = Category::get();
        return view('livewire.blog-page', [
            'title' => $title,
            'description' => $description,
            'image' => "",
            'latestPost' => $latestPost,
            'category' => $category,
            'posts' => Post::paginate(4)
        ]);
    }
}
