<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Role::factory()->create([
            'id' => 1,
            'name' => 'user'
        ]);
        Role::factory()->create([
            'id' => 2,
            'name' => 'admin'
        ]);
    }
}
