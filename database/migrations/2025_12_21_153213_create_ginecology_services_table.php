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
        Schema::create('ginecology_services', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->constrained('ginecology_service_categories')->onDelete('cascade');
            $table->string('title');
            $table->string('slug');
            $table->string('image')->nullable();
            $table->text('description')->nullable();
            $table->text('details')->nullable();
            $table->string('duration')->nullable();
            $table->string('price')->nullable();
            $table->string('unit')->nullable();
            $table->enum('status', ['active', 'inactive'])->default('active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ginecology_services');
    }
};
