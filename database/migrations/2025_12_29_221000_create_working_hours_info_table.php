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
        Schema::create('working_hours_infos', function (Blueprint $table) {
            $table->id();
            $table->text('text')->comment('Текст информации о времени работы');
            $table->dateTime('valid_until')->nullable()->comment('Время до которого будет показываться информация');
            $table->boolean('is_active')->default(true)->comment('Активна ли информация');
            $table->integer('position')->default(0)->comment('Позиция для сортировки');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('working_hours_infos');
    }
};
