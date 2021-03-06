<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMilitaryAreasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('military_areas', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('government_id')->unsigned();
            // $table->foreign('government_id')->references('id')->on('governments')
            // ->onDelete('no action')
            // ->onUpdate('no action');
            $table->string('notes')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('military_areas');
    }
}
