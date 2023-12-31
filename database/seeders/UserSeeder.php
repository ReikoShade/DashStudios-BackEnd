<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::factory()->create([
            'id' => 1,
            'name' => 'user',
            'email' => 'user@gmail.com'
        ]);
        User::factory()->create([
            'id' => 2,
            'name' => 'admin',
            'email' => 'admin@gmail.com'
        ]);

        User::factory(10)->create();
    }
}
