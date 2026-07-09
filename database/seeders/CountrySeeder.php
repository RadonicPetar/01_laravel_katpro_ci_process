<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Country;

class CountrySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Country::create([
            'naziv' => 'Hrvatska',
            'regija' => 'Europa',
            'br_stanovnika' => 4000000,
        ]);

        Country::create([
            'naziv' => 'SAD',
            'regija' => 'Sjeverna Amerika',
            'br_stanovnika' => 300000000,
        ]);

        Country::create([
            'naziv' => 'Japan',
            'regija' => 'Azija',
            'br_stanovnika' => 125000000,
        ]);
    }
}
