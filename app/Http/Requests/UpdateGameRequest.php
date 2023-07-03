<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateGameRequest extends FormRequest
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
                'string',
                'unique:games,name'
            ],
            'description' => [
                'string'
            ],
            'price' => [
                'decimal:0,2',
                'max:99999.99',
                'min:0',
            ],
            'releaseDate' => [
                'date',
            ],
            'rating' => [
                'decimal:0,2',
                'max:5.00',
                'min:0',
            ],
            'remain' => [
                'integer',
            ],
            'link' => [
                'max:255',
                'string',
            ],
            'genres' => [
                'array'
            ],
            'teams' =>[
                'array',
            ],
            'platforms' => [
                'array'
            ],
            'images' => [
                'array',
            ],
        ];
    }
}
