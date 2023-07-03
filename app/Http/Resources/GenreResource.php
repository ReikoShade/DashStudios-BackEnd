<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class GenreResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'type' => 'genres',
            'id' => (string) $this->id,

            'attributes' => [
                'name' => $this->name,
            ],
            'links' => [
                'self' => route('genres.show', ['genre' => $this->id]),
            ],
        ];
    }
}
