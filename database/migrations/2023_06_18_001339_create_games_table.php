<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            $table->string('name', 55)
                ->unique()
            ;
            $table->text('description')
            ;
            $table->date('releaseDate');
            $table->decimal('rating', 3, 2)
                ->index()
            ;
            $table->decimal('price', 7, 2)
                ->index()
            ;
            $table->integer('remain');
            $table->string('link', 255)
                ->unique()
            ;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('games');
    }
};
