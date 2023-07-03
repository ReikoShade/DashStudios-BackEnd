<?php

namespace App\Http\Resources;

use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'type' => 'users',
            'id' => (string) $this->id,

            'attributes' => [
                'name' => $this->name,
                'email' => $this->email,
                'isAdmin' => $this->roles->containsStrict('id', Role::ID_ADMIN)
            ],
            'links' => [
                'self' => route('genres.show', ['genre' => $this->id]),
            ],
        ];
    }
}
