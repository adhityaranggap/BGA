<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; //validate
use App\User;


class CustomerController extends Controller
{
    public function fetchAllCustomers(){
        // return -data All Array Role Customer
        $users = User::paginate(25);


        return response()->json([
            'message'   =>  $users->count(). ' Data user ditemukan pada halaman ini',
            'code'      =>  \HttpStatus::OK,
            'data'      =>  $users
        ], \HttpStatus::OK);
    }
    public function create (Request $request)
    {
           //start validate
           $rules = [
            'nis'       => 'required|max:50',
            'address'        => 'required|max:100',
            'name'           => 'required|max:50', 
            'password'       => 'required|min:8', 
            'email'          => 'required|email', 
            'contact_person' => 'required',
            'role_id'        => 'required|integer'
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return  \MessageHelper::unprocessableEntity($validator->messages());
        }
        //end validate
        $data = User::create($request->all());

        return response()->json([
            'message'   =>  $request->nis. ' Data berhasil masuk',
            'code'      =>  \HttpStatus::OK,
            'data'      =>  $data
        ], \HttpStatus::OK);   
    }
    public function update (Request $request, $nis)
    {        
                //start validate
                   $rules = [
                    'nis'       => 'required|max:50',
                    'address'        => 'required|max:100',
                    'name'           => 'required|max:50', 
                    'password'       => 'required|min:8', 
                    'email'          => 'required|email', 
                    'contact_person' => 'required',
                    'role_id'        => 'required|integer'
                ];
        
                $validator = Validator::make($request->all(), $rules);
        
                if ($validator->fails()) {
                    return  \MessageHelper::unprocessableEntity($validator->messages());
                }
                //end validate

        $data = User::where('nis', $nis)->first();
        
        if($data)
        {
            User::where('nis', $nis)->update($request->except('nis'));
            return response()->json([
                'message'   =>  $request->nis. ' Data berhasil update',
                'code'      =>  \HttpStatus::OK,
                'data'      => $data
            ], 200); 
        }else{
            return response()->json([
                'message'   =>  $request->nis. ' Data tidak ditemukan',
                'code'      =>  \HttpStatus::NOT_FOUND
            ], 404); 
        }

    }
    public function delete ($nis)
    {
        $data = User::where('nis', $nis)->first();
        if($data){
            $data->delete();
            return response()->json([
                'message'   =>  $nis. ' Data berhasil dihapus',
                'code'      =>  \HttpStatus::OK,
                'data'      => $data       
            ], 200); 
        }else{
            return response()->json([
                'message'   =>  $nis. ' Data tidak ditemukan',
                'code'      =>  \HttpStatus::NOT_FOUND
            ], 404); 
        }
    }
}
