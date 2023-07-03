<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\File;

class UpdateTeamRequest extends FormRequest
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
                'unique:teams,name'
            ],
            'description' => [
                'max:55',
                'string',
            ],
            'email' => [
                'max:255',
                'string',
            ],
            'image' => [

            ],
            'imgPath' => [
                'max:255',
            ],
            'imgURL' => [
                'max:255',
            ],
        ];
    }
}
