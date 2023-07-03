<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Game;
use App\Models\Genre;
use App\Models\Image;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $genres = Genre::all();
        Game::factory()
            ->count(10)
            ->has(Image::factory()->count(3))
            ->has(Comment::factory()->count(3))
            ->hasAttached($genres->isEmpty() ? Genre::factory() : $genres)
            ->create();

    }
}
