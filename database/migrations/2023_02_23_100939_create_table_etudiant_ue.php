<?php

use App\Models\Etudiant;
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
        Schema::create('etudiant_ue', function (Blueprint $table) {
            //
            $table->id();
            $table->foreignIdFor(Ue::class);
            $table->foreignIdFor(Etudiant::class);
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
        Schema::table('etudiant_ue', function (Blueprint $table) {
            //
        });
    }
};
