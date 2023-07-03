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
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('game_id')
                ->unsigned()
            ;
            $table->bigInteger('user_id')
                ->unsigned()
            ;
            $table->foreign('game_id')
                ->references('id')
                ->on('games')
                ->onDelete('CASCADE')
                ->onUpdate('RESTRICT')
            ;
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('CASCADE')
                ->onUpdate('RESTRICT')
            ;
            $table->text('text')
            ;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comments');
    }
};
