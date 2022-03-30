<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSellordersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sellorders', function (Blueprint $table) {
            $table->id();
            $table->string('name');  
            $table->unsignedBigInteger('price');
            $table->unsignedBigInteger('qty');
            $table->unsignedBigInteger('total');  
            $table->boolean('status')->default(1);  
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
        Schema::dropIfExists('sellorders');
    }
}
