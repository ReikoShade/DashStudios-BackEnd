<?php

namespace App\Http\Controllers;

use App\Http\Resources\GenreCollection;
use App\Http\Resources\GenreResource;
use App\Models\Genre;
use App\Http\Requests\StoreGenreRequest;
use App\Http\Requests\UpdateGenreRequest;

class GenreController extends Controller
{
    public function __construct(){
        $this->authorizeResource(Genre::class, 'genre');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $genres = Genre::all();
        return new GenreCollection($genres);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreGenreRequest $request)
    {
        $data = $request->validated();
        $genre = Genre::create($data);
        return response()->noContent(201)->withHeaders([
            'Location' => route('genres.show', [
                'genre' => $genre->id,
            ]),
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Genre $genre)
    {
        return new GenreResource($genre);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGenreRequest $request, Genre $genre)
    {
        $data = $request->validated();
        $genre->update($data);
        return response()->noContent(204);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Genre $genre)
    {
        $genre->delete();
        return response()->noContent(204);
    }
}
