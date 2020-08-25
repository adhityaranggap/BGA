<form>
@csrf
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col"><b>NIS</b></th>
      <th>{{ $data->nis }}</th>    
    </tr>
    <tr>
      <th scope="col"><b>Nama</b></th>
      <th>{{ $data->name }}</th>    
    </tr>
    <tr>
      <th scope="col"><b>Nama Ayah</b></th>
      <th>{{ $data->father_name}}</th>    
    </tr>
    <tr>
      <th scope="col"><b>Jenis Kelamin</b></th>
      <th>{{ $data->gender }}</th>    
    </tr>
    <tr>
      <th scope="col"><b>Email</b></th>
      <th>{{ $data->email }}</th>    
    </tr>
    <tr>
      <th scope="col"><b>Nomor Telepon</b></th>
      <th>{{ $data->contact_person }}</th>    
    </tr>
    
    <tr>
      <th scope="col"><b>Alamat</b></th>
      <th>{{ $data->address}}</th>    
    </tr>
    
  </thead> 
</table>


</form>


