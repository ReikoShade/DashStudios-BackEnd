<?php

namespace App\Http\Resources;

use App\Models\Game;
use App\Models\Genre;
use App\Http\Resources\GenreResource;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class GameResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
//        $games = Game::with('genres');

        return [
            'type' => 'games',
            'id' => (string) $this->id,

            'attributes' => [
                'name' => $this->name,
                'price' => (float) $this->price,
                'description' => $this->description,
                'remain' => (int) $this->remain,
                'releaseDate' => $this->releaseDate,
                'rating' => (float) $this->rating,
                'link'=> $this->link
            ],
            'genres' =>
                GenreResource::collection($this->genres)
            ,
            'platforms' =>
                PlatformResource::collection($this->platforms)
            ,
            'teams' =>
                TeamResource::collection($this->teams)
            ,
            'images' =>
                ImageResource::collection($this->images)
            ,
            'comments' =>
                CommentResource::collection($this->comments)
            ,
            'links' => [
                'self' => route('games.show', ['game' => $this->id]),
            ],
        ];
    }

}
