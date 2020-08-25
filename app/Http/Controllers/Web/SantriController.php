<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DataTables;
use App\User, App\Role, App\UserHasSubscription, App\Transaction, App\Subscription, App\EnumUserPackage;
use \RouterOS\Client;
use \RouterOS\Query;
use Carbon\Carbon;

use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\DB;


class SantriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
       return view('cms.users.santri.index');
    }

    public function datatables()
    {       
    
        $data = User::where('role_id', ROLE::ROLE_SANTRI);
        
        return Datatables::of($data)  
        // ->editColumn('name',
        //     function ($data){
        //         return $data->name;
        // })     
        ->editColumn('nis',
            function ($data){
                return $data->nis;
        })         
        ->editColumn('name',
            function ($data){
                return $data->name;
        })               
        ->editColumn('father_name',
            function ($data){
                return $data->father_name;
        })    
        ->editColumn('action',
            function ($data){                                
            
                    return
                    // \Component::btnDetailPaket(route('santri-detail'), 'Detail santri').
                    \Component::btnUpdate(route('santri-edit', $data->id), 'Ubah santri '. $data->name).
                    \Component::btnDelete(route('santri-destroy', $data->id), 'Hapus santri '. $data->name);
                    
        })
        ->addIndexColumn()
        // ->rawColumns(['action']) 
        ->make(true);          
    }

    /**x
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.users.santri.create');
    }
    public function import()
    {
        $subscriptions = Subscription::all('name', 'id');
        return view('cms.users.santri.import', compact('subscriptions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
   	        'nis'       => 'required|max:50',
            'address'        => 'required|max:100',
            'name'           => 'required|max:50', 
            'father_name'    => 'required|max:50', 
            'gender'         => 'required|max:50', 
            'password'       => 'required|min:8', 
            'email'          => 'required|email', 
            'contact_person' => 'required', 
        ]);
        $request['role_id'] = ROLE::ROLE_SANTRI;
        $request['password'] = bcrypt(request('password'));
        $request['password_router'] = encrypt($request['nis']);

        User::create($request->except('_token'));
 
        
    }
    public function storeImport(Request $request)
    {
        // return 'sukses';

        // validasi
		$this->validate($request, [
			'file' => 'required|mimes:csv,xls,xlsx'
        ]);
        

        if($request->hasFile('file')){
            $path = $request->file('file')->getRealPath();
            $users = Excel::toArray(new UsersImport, $request->file('file'));
            // $users[0][0]; //heder
            if(count($users[0]) > 1)
            {               
                foreach ($users[0] as $key => $user) {            
                  $users[0] > [$key+1];
                    if($key > $key+1 ){  
                        $data = $users[0][$key+1];
                    }else{
                        $data = $users[0][$key]; 
                    }
                    $userChecknis = User::where('nis', $data[1])->first();
                    $subscriptions = $request['subscription_id'];
                    $password = bcrypt($data[7]);

                    if($userChecknis != null){
                        User::where('nis', $data[1])->update([
                            'nis'           => $data [1], 
                            'name'          => $data [2], 
                            'father_name'   => $data [3], 
                            'gender'        => $data [4], 
                            'address'       => $data [5], 
                            'contact_person'=> $data [6],
                            'password'      => $password, 
                            'email'         => $data [8], 
                            'role_id'       => ROLE::ROLE_SANTRI
                        ]);
                        $userCheckPackage = UserHasSubscription::where('user_id', $userChecknis->id)->first();
                            if($userCheckPackage != null){
                                UserHasSubscription::where('user_id', $userChecknis->id)->update([
                                    'subscription_id'    => $subscriptions,
                                    'status'        => 'active',
                                ]);
                            }else{
                                $id = DB::getPdo()->lastInsertId();
                            UserHasSubscription::create([
                                'user_id'       => $id,
                                'subscription_id'    => $subscriptions,
                                'status'        => 'active',
                            ]);
                            $id = DB::getPdo()->lastInsertId();
                            $data = DB::table('user_has_subscription')
                            ->join('subscriptions','user_has_subscription.subscription_id','subscriptions.id')
                            ->select('subscriptions.price')
                            ->where('user_has_subscription.id', $id)->first();

                            Transaction::create([
                                'user_has_subscription_id'         =>  $id,
                                'transaction_has_modified_id'   => 1,
                                'notes'                         => '-',
                                'expired_date'                  => Carbon::now()->addMonths(1),
                                'status'                        => \EnumTransaksi::STATUS_BELUM_BAYAR,
                                'price'                         =>  $data->price,
                                'fee'                           =>  0,
                                'paid'                          =>  0,
                                'created_at'                    =>  now(),                   
                            ]);
                            };
                    }else{
                            User::create([
                                'nis'           => $data [1], 
                                'name'          => $data [2], 
                                'father_name'   => $data [3], 
                                'gender'        => $data [4], 
                                'address'       => $data [5], 
                                'contact_person'=> $data [6],
                                'password'      => $data [7], 
                                'email'         => $data [8], 
                                'role_id'       => ROLE::ROLE_SANTRI
                            ]);
                            $id = DB::getPdo()->lastInsertId();;
                            UserHasSubscription::create([
                                'user_id'       => $id,
                                'subscription_id'    => $subscriptions,
                                'status'        => 'active',
                            ]);
                            $id = DB::getPdo()->lastInsertId();;
                            $data = DB::table('user_has_subscription')
                            ->join('subscriptions','user_has_subscription.subscription_id','subscriptions.id')
                            ->select('subscriptions.price')
                            ->where('user_has_subscription.id', $id)->first();
                            
                                Transaction::create([
                                    'user_has_subscription_id'         =>  $id,
                                    'transaction_has_modified_id'   => 1,
                                    'notes'                         => '-',
                                    'expired_date'                  => Carbon::now()->addMonths(1),
                                    'status'                        => \EnumTransaksi::STATUS_BELUM_BAYAR,
                                    'price'                         =>  $data->price,
                                    'fee'                           =>  0,
                                    'paid'                          =>  0,
                                    'created_at'                    =>  now(),
                            ]);       
                            };
                   
                  }
            }
        };
        
    }

    public function loadData(Request $request)
    {
        if ($request->has('q')) {
            $cari = $request->q;
            $data = DB::table('user_has_subscription')
            ->join('users','user_has_subscription.user_id','users.id')
            ->join('subscriptions','user_has_subscription.subscription_id','subscriptions.id')
            ->select(
                'user_has_subscription.id as id', 
                'users.nis', 
                'subscriptions.name', 
                'users.name', 
                'subscriptions.price')
            ->where('users.name', 'like', '%' . $cari . '%'
            )->get();

            return response()->json($data);
        }
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = array();
        $data['user'] = User::where('id', $id)->first();
        
        $data['subscriptions'] = DB::table('user_has_subscription')
            ->join('subscriptions','user_has_subscription.subscription_id','subscriptions.id')
            ->select('subscriptions.name as subscription_name', 'subscriptions.price')
            ->where('user_has_subscription.user_id', $data['user']->id)
            ->get();

            
        return view('cms.users.santri.edit', compact ('data'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $data = User::where('id', $id)->first();
        $this->validate($request,[
            'nis'      =>  'required|max:255|string|unique:users,nis,'.$data->id,
            'name'          =>  'required|max:255|string',
            'father_name'          =>  'required|max:255|string',
            'address'       =>  'required|max:255|string'
        ]);

        
        $request['password'] = bcrypt(request('password'));
        
        if($data)
        {
            User::where('id', $id)->update($request->only('nis','password','name','father_name','address'));
            return "Data Berhasil di Update";

        }else{
            return false;
        }


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // menghapus data pegawai berdasarkan id yang dipilih
	$user= User::where('id', $id)->first();
        
    if (is_null($user)){
        return 'tidak ditemukan';
    }else{
        $user->delete();
       
    }

    }
    
}
