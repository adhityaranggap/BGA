<form method="post" action="{{ route('santri-update', $data['user']->id)  }}">
@csrf
    <div class="form-group ">
        <label for="nis">NIS</label>
        <input class="form-control" name="nis" type="text" value="{{$data['user']->nis}}" id="nis">
    </div>
    <div class="form-group ">
        <label for="name">Name</label>
        <input class="form-control" name="name" type="text" value="{{$data['user']->name}}" id="name">
    </div>
    <div class="form-group ">
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">No</th>
                <th scope="col">Nama </th>
                <th scope="col">Price</th>
                </tr>
            </thead>
            <tbody>
            @forelse($data['subscriptions'] as $key => $subscription)
                <tr>
                <th scope="row">{{ $key+1 }}</th>
                <td>{{ $subscription->name }}</td>
                <td>{{ $subscription->price }}</td>
                </tr>
            @empty
                <tr>Data Layanan Kosong</tr>
            @endforelse
            </tbody>
            </table>
        
    </div>
    <div class="form-group ">
    <label for="name">Address</label>
        <textarea class="form-control" name="address" placeholder="Required">{{$data['user']->address}}</textarea>
    </div>    
    
   
</form>