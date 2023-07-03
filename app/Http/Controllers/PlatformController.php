<?php

namespace App\Http\Controllers;

use App\Http\Resources\PlatformCollection;
use App\Http\Resources\PlatformResource;
use App\Models\Platform;
use App\Http\Requests\StorePlatformRequest;
use App\Http\Requests\UpdatePlatformRequest;

class PlatformController extends Controller
{
    public function __construct(){
        $this->authorizeResource(Platform::class, 'platform');
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $platforms = Platform::all();
        return new PlatformCollection($platforms);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePlatformRequest $request)
    {
        $data = $request->validated();
        $platform = Platform::create($data);
        return response()->noContent(201)->withHeaders([
            'Location' => route('platforms.show', [
                'platform' => $platform->id,
            ]),
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Platform $platform)
    {
        return new PlatformResource($platform);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePlatformRequest $request, Platform $platform)
    {
        $data = $request->validated();
        $platform->update($data);
        return response()->noContent(204);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Platform $platform)
    {
        $platform->delete();
        return response()->noContent(204);
    }
}
