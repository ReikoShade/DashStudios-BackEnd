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
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('game_id')
            ->unsigned()
            ;
            $table->foreign('game_id')
            ->references('id')
            ->on('games')
            ->onDelete('CASCADE')
            ->onUpdate('RESTRICT')
            ;
            $table->string('imgPath', 191)
                ->unique()
            ;
            $table->string('imgURL', 191)
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
        Schema::dropIfExists('images');
    }
};
