<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TeamResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'type' => 'teams',
            'id' => (string) $this->id,

            'attributes' => [
                'name' => $this->name,
                'description' => $this->description,
                'email' => $this->email,
                'imgURL' => $this->imgURL,
            ],
            'links' => [
                'self' => route('teams.show', ['team' => $this->id]),
            ],
        ];
    }
}
