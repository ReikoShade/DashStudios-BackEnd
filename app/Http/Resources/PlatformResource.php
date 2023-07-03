<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PlatformResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'type' => 'platforms',
            'id' => (string) $this->id,

            'attributes' => [
                'name' => $this->name,
            ],
            'links' => [
                'self' => route('platforms.show', ['platform' => $this->id]),
            ],
        ];
    }
}
