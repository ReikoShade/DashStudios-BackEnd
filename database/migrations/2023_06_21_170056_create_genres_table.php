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
        Schema::create('genres', function (Blueprint $table) {
            $table->id();
            $table->string('name', 55);
            $table->timestamps();
        });
        Schema::create('game_genre', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('game_id')
                ->unsigned()
            ;
            $table->bigInteger('genre_id')
                ->unsigned()
            ;
            $table->foreign('game_id')
                ->references('id')
                ->on('games')
                ->onDelete('CASCADE')
                ->onUpdate('RESTRICT')
            ;
            $table->foreign('genre_id')
                ->references('id')
                ->on('genres')
                ->onDelete('CASCADE')
                ->onUpdate('RESTRICT')
            ;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('game_genre');
        Schema::dropIfExists('genres');
    }
};
