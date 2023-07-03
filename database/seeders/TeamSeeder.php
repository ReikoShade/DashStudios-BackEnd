<?php

namespace Database\Seeders;

use App\Models\Game;
use App\Models\Team;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TeamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $games = Game::all();
        Team::factory()
            ->count(10)
            ->hasAttached($games->isEmpty() ? Game::factory()->count(3) : $games)
            ->create();
    }
}
