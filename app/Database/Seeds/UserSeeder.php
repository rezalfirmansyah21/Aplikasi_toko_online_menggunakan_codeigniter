<?php

namespace App\Database\Seeds;

class Userseeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 100; $i++) {
            $data = [
                'username' => $faker->username,
                'password' => $faker->password,
                'salt' => $faker->password,
                'avatar' => NULL,
                'role' => 1,
                'created_by' => 0,
                'created_date' => date("Y-m-d H:i:s"),
            ];

            echo ('Insert User' . ($i + 1));
            // Using Query Builder
            $this->db->table('user')->insert($data);
        }
    }

    // Simple Queries
    // $this->db->query(
    //     "INSERT INTO users (username, email) VALUES(:username:, :email:)",
    //     $data
    // );

}
