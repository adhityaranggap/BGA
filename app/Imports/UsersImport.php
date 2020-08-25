<?php

namespace App\Imports;

use App\User;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new User([
            'nis'           => $row [1], 
            'name'          => $row [2], 
            'father_name'   => $row [3], 
            'gender'        => $row [4], 
            'address'       => $row [5], 
            'contact_person'=> $row [6],
            'password'      => $row [7], 
            'email'         => $row [8], 
            'role_id'       => 1 
        ]);
    }
}
