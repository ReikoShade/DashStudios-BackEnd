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
        Schema::create('teams', function (Blueprint $table) {
            $table->id();
            $table->string('name', 55);
            $table->string('imgPath', 255);
            $table->string('imgURL', 255);
            $table->string('email', 255);
            $table->string('description', 55);
            $table->timestamps();
        });
        Schema::create('game_team', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('game_id')
                ->unsigned()
            ;
            $table->bigInteger('team_id')
                ->unsigned()
            ;
            $table->foreign('game_id')
                ->references('id')
                ->on('games')
                ->onDelete('CASCADE')
                ->onUpdate('RESTRICT')
            ;
            $table->foreign('team_id')
                ->references('id')
                ->on('teams')
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
        Schema::dropIfExists('game_team');
        Schema::dropIfExists('teams');
    }
};
