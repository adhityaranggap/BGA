<form method="post" action="{{ route('santri-subscription-update', $data->id) }}">
@csrf

    <div class="form-group ">
    <label for="nis">nis</label>
        <input class="form-control" name="nis" type="text" value="{{$data->nis}}" id="nis" readonly>
    </div>
    <div class="form-group ">
    <label for="subscription_id">Subscription Name</label>
    <select class="form-control" name="subscription_id">
    @foreach($subscriptions as $subscription)
      <option value="{{$subscription->id}}"  {{ $subscription->id == $data->subscription_id ? 'selected' : '' }}>{{$subscription->name}}</option>
    @endforeach
  </select>
    </div>
   
</form>


