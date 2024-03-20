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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description');
            $table->longText('content');
            $table->unsignedBigInteger('menu_id'); // Assuming menu_id is the foreign key referencing the id column in the menus table
            $table->integer('price')->nullable();
            $table->integer('price_sale')->nullable();
            $table->integer('active');
            $table->timestamps();
            
            // Foreign key constraint
            $table->foreign('menu_id')->references('id')->on('menus')->onDelete('cascade');
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
