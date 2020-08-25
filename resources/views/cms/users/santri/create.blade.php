<form method="post" action="{{ route('santri-store') }}">
@csrf
    <div class="form-group ">
    <label for="name">NIS</label>
        <input class="form-control" name="NIS" type="text" placeholder="Required" value="" id="NIS">
    </div>

    <div class="form-group ">
    <label for="name">Nama</label>
        <input class="form-control" name="name" type="text" value="" id="name">
    </div>
    <div class="form-group ">
    <label for="father_name">Nama Ayah</label>
        <input class="form-control" name="father_name" type="text" value="" id="father_name">
    </div>
    
    <div class="form-group ">
    <label for="gender">Jenis Kelamin</label>
    <select class="form-control" id="gender" name="gender">
            <option></option>
            <option value="Laki-laki">Laki-Laki</option>
            <option value="Peremuan" >Perempuan</option>
        </select>
    </div>   
    <div class="form-group ">
    <label for="name">Email</label>
        <input class="form-control" name="email" type="email" value="" id="email">
    </div>
    
    <div class="form-group ">
    <label for="name">Contact Person</label>
    <input class="form-control" name="contact_person" type="text" placeholder="Required" value="" id="contact_person">
    </div>
    <div class="form-group ">
    <label for="name">Password</label>
        <input class="form-control" name="password" type="password" value="" id="password">
    </div>
    <div class="form-group ">
    <label for="name">Address</label>
        <textarea class="form-control" name="address" placeholder="Required"></textarea>
    </div>
   
</form>
