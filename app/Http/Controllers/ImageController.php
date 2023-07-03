<?php

namespace App\Http\Controllers;

use App\Http\Resources\ImageCollection;
use App\Http\Resources\ImageResource;
use App\Models\Image;
use App\Http\Requests\StoreImageRequest;
use App\Http\Requests\UpdateImageRequest;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    public function __construct(){
        $this->authorizeResource(Image::class, 'image');
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $images = Image::all();
        return new ImageCollection($images);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreImageRequest $request)
    {
        $data = $request->validated();

        $image = $data['image'];
        $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
        $filePath = Storage::disk('public')->putFileAs('/images/game-images', $image, $name);
        $data['imgPath'] = $filePath;
        $data['imgURL'] = url('/storage/'.$filePath);
        unset($data['image']);

        $image = Image::create($data);
        return response()->noContent(201)->withHeaders([
            'Location' => route('images.show', [
                'image' => $image->id,
            ]),
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Image $image)
    {
        return new ImageResource($image);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateImageRequest $request, Image $image)
    {
        $data = $request->validated();

        Storage::disk('public')->delete($image->imgPath);

        $image = $data['image'];
        $name = md5(Carbon::now().'_'.$image->getClientOriginalName()).'.'.$image->getClientOriginalExtension();
        $filePath = Storage::disk('public')->putFileAs('/images/teams', $image, $name);
        $data['imgPath'] = $filePath;
        $data['imgURL'] = url('/storage/'.$filePath);

        unset($data['image']);

        $image->update($data);
        return response()->noContent(204);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Image $image)
    {
        Storage::disk('public')->delete($image->imgPath);
        $image->delete();
        return response()->noContent(204);
    }
}
