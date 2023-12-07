<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_name' => $this->faker->name(),
            'product_img' => $this->faker->imageUrl($width = 200, $height = 200),
            'product_price' => $this->faker->randomDigit,
            'product_des' => $this->faker->paragraph,
      
        ];
    }
}
