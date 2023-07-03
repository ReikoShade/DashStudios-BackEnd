<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreGameRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => [
                'max:55',
                'required',
                'string',
                'unique:games,name'
            ],
            'description' => [
                'required',
                'string'
            ],
            'price' => [
                'decimal:0,2',
                'max:99999.99',
                'min:0',
                'required'
            ],
            'releaseDate' => [
                'date',
                'required'
            ],
            'rating' => [
                'decimal:0,2',
                'max:5.00',
                'min:0',
                'required'
            ],
            'remain' => [
                'integer',
                'required'
            ],
            'link' => [
                'max:255',
                'string',
                'required'
            ],
            'genres' => [
                'array',
                'required'
            ],
            'teams' =>[
                'array',
                'required'
            ],
            'platforms' => [
                'array',
                'required'
            ],
            'images' => [
                'array',
                'required'
            ],
        ];
    }
}
