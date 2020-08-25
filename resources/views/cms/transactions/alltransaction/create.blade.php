<form method="post" action="{{ route('all-transaction-store') }}">
@csrf

    <div class="form-group ">
        <label for="NIS">NIS</label>
        <div class="form-group" style="margin-top:5px;">
            <select class="form-control cari" id="user_has_subscription_id" name="user_has_subscription_id" style="width:100%;">
            
            </select>
        </div>
    </div>
    <div class="subscription-list" style="margin-top:5px;"></div>

<div class="form-group" style="margin-top:15px; ">
        <label for="subscription">Name Subscriptions</label>
        <select class="form-control " id="subscription" name="subscription">
            @forelse($subscriptions as $subscription)
                <option value="{{ $subscription->id }}">{{ $subscription->name }}</option>
            @empty
            @endforelse
        </select>    
    </div>
    
   
    <div class="form_group"></div>
    <label for="expired_date">Expired Date</label>
    <input type="text" class="form-control datepicker" name="expired_date" id="expired_date" value="{{ Carbon\Carbon::now()->addMonths(1) }}">
    </div>
 
</form>

<script type="text/javascript">

$('.datepicker').daterangepicker({
        locale: {format: 'YYYY-MM'},
        singleDatePicker: true,
        timePicker: true,
        timePicker24Hour: true,
      });
    // $('.datepicker').daterangepicker({
    //       locale: {format: 'YYYY-MM-DD hh:mm:ss'},
    //       singleDatePicker: true,
    //     });

    // Timepicker
      $(".timepicker").timepicker({
        icons: {
          up: 'fas fa-chevron-up',
          down: 'fas fa-chevron-down'
        }
      });

$(document).ready(function(){
	$('.cari').select2({
		placeholder: 'NIS...',
		ajax: {
        // headers: {
        //     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        // }
        url: "{{route ('santri-load')}}",
        dataType: 'json',
		delay: 250,
		processResults: function (data) {
 
			return {
			results:  $.map(data, function (item) {
                $('#name').empty().val(item.name).attr('readonly', true);
                // $('#price').empty().val(item.price).attr('readonly', true);
				return {
                text: item.nis + ' | ' + item.name,
				id: item.id
				}
			})
			};
		},
        
		cache: true
		}
	});
}   );
	</script>
