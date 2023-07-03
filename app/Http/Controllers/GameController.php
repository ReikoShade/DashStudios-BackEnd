<?php

namespace App\Http\Controllers;

use App\Http\Resources\GameCollection;
use App\Http\Resources\GameResource;
use App\Models\Game;
use App\Http\Requests\StoreGameRequest;
use App\Http\Requests\UpdateGameRequest;
use App\Models\Image;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Spatie\QueryBuilder\QueryBuilder;

class GameController extends Controller
{

    public function __construct(){
        $this->authorizeResource(Game::class, 'game');
    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index(Request $request)
    {
//        $games = Game::all();
        $query = Game::query();

        if ($request->filled('year')) {
            $query -> whereYear('releaseDate', $request->get('year'));
        }

        if ($request->filled('ratingMin')) {
            $query -> where('rating', '>' , $request->get('ratingMin'));
        }
        if ($request->filled('ratingMax')) {
            $query -> where('rating', '<' , $request->get('ratingMax'));
        }

        if ($request->filled('remainMin')) {
            $query -> where('rating', '>' , $request->get('remainMin'));
        }
        if ($request->filled('remainMax')) {
            $query -> where('remain', '<' , $request->get('remainMax'));
        }

        if ($request->filled('priceMin')) {
            $query -> where('price', '>' , $request->get('priceMin'));
        }
        if ($request->filled('priceMax')) {
            $query -> where('price', '<' , $request->get('priceMax'));
        }


        if ($request->filled('platform_id')) {
            $query -> whereHas('platforms', function ($query) use($request) {
                $query->where('game_platform.platform_id', '=', $request->get('platform_id'));
            });
        }

        if ($request->filled('genre_id')) {
            $query -> whereHas('genres', function ($query) use($request) {
                $query->where('game_genre.genre_id', '=', $request->get('genre_id'));
            });
        }

        if ($request->filled('team_id')) {
            $query -> whereHas('teams', function ($query) use($request) {
                $query->where('game_team.team_id', '=', $request->get('team_id'));
            });
        }

        if ($request->filled('sortBy')) {
            if($request->get('sortBy') === "new"){
                $query -> orderBy('releaseDate', 'desc');
            }
//            $query -> orderBy('releaseDate', 'desc');

            if($request->get('sortBy') === "old"){
                $query -> orderBy('releaseDate', 'asc');
            }
        }

        $games = $query->get();



//        $games = QueryBuilder::for(Game::class)
//            ->join('genres', 'game_genre.game_id', 'game.id')
////            ->allowedFilters(['genre_id'])
//            ->allowedFilters(AllowedFilter::exact('genres.id', null, $request->get('genre_id')));
//            ->get();

        return new GameCollection($games);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreGameRequest $request)
    {



        $data = $request->validated();
        $images = $data['images'];
        $game = Game::create($data);

        $game->genres()->attach($data['genres']);
        $game->platforms()->attach($data['platforms']);
        $game->teams()->attach($data['teams']);

        foreach ($images as $image){
            $image = $image;
            $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
            $filePath = Storage::disk('public')->putFileAs('/images/game-images', $image, $name);

            $image = Image::create([
                'imgPath' => $filePath,
                'imgURL' => url('/storage/'.$filePath),
                'game_id' => $game -> id,
            ]);

        };




        return response()->noContent(201)->withHeaders([
            'Location' => route('games.show', [
                'game' => $game->id,
            ]),
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Game $game)
    {
        return new GameResource($game);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGameRequest $request, Game $game)
    {



        $data = $request->validated();
        $game->update($data);
        $images = $data['images'];

        $game->genres()->sync($data['genres']);
        $game->platforms()->sync($data['platforms']);
        $game->teams()->sync($data['teams']);

        foreach ($images as $image){
            $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
            $filePath = Storage::disk('public')->putFileAs('/images/game-images', $image, $name);

            $image = Image::create([
                'imgPath' => $filePath,
                'imgURL' => url('/storage/'.$filePath),
                'game_id' => $game -> id,
            ]);

        };

        return response()->noContent(204);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Game $game)
    {
        $game->delete();
        return response()->noContent(204);
    }
}
