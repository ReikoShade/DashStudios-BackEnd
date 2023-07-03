<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Game>
 */
class GameFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->unique()->word(),
            'description' => fake()->text(),
            'releaseDate' => fake() ->date(),
            'rating' => fake() ->randomFloat(2, 0.0, 5.0),
            'price' => fake() ->randomFloat(2, 0.0, 99999.9),
            'remain' => fake()->randomNumber(7, false),
            'link'=>fake()->url(),

        ];
    }
}
