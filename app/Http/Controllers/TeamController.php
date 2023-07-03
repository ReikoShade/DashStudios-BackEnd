<?php

namespace App\Http\Controllers;

use App\Http\Resources\TeamCollection;
use App\Http\Resources\TeamResource;
use App\Models\Team;
use App\Http\Requests\StoreTeamRequest;
use App\Http\Requests\UpdateTeamRequest;
use Carbon\Carbon;
use Illuminate\Session\Store;
use Illuminate\Support\Facades\Storage;

class TeamController extends Controller
{

    public function __construct(){
        $this->authorizeResource(Team::class, 'team');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $teams = Team::all();
        return new TeamCollection($teams);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTeamRequest $request)
    {
        $data = $request->validated();

        $image = $data['image'];
        $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
        $filePath = Storage::disk('public')->putFileAs('/images/teams', $image, $name);
        $data['imgPath'] = $filePath;
        $data['imgURL'] = url('/storage/'.$filePath);
        unset($data['image']);

        $team = Team::create($data);
        return response()->noContent(201)->withHeaders([
            'Location' => route('teams.show', [
                'team' => $team->id,
            ]),
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Team $team)
    {
        return new TeamResource($team);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreTeamRequest $request, Team $team)
    {
        $data = $request->validated();

        Storage::disk('public')->delete($team->imgPath);

        $image = $data['image'];
        $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
        $filePath = Storage::disk('public')->putFileAs('/images/teams', $image, $name);
        $data['imgPath'] = $filePath;
        $data['imgURL'] = url('/storage/'.$filePath);

        unset($data['image']);

        $team->update($data);
        return response()->noContent(204);

//        dd($request->all());
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Team $team)
    {
        Storage::disk('public')->delete($team->imgPath);
        $team->delete();
        return response()->noContent(204);
    }
}
