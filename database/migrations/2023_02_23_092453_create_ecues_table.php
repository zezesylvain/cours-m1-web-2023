<?php

use App\Models\Ue;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ecues', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Ue::class);
            $table->string('nom');
            $table->string('code');
            $table->integer('cm')->nullable();
            $table->integer('td')->default(0);
            $table->integer('tp')->nullable();
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
        Schema::dropIfExists('ecues');
    }
};
