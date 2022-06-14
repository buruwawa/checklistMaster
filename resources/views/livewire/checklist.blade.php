<div>
  @if($message)
                            <div class="alert alert-danger">
                              <h5   class="text-center">{{ $message }}</h5>
                            </div>
                            @endif
<div class="content d-flex flex-column flex-column-fluid" id="tc_content">
<div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                  <li class="breadcrumb-item active" aria-current="page">Checklist Master</li>
                  <li class="breadcrumb-item active" aria-current="page">Checklist</li>
                </ol>
              </nav>
            </div>
          </div>
          <hr/>
<div class="row container">               
            <div class="col-xl-12 col-md-12">                       
            @isset($metadatas)
                                  <div class="card card-custom gutter-b bg-white border-0">
                                    <div class="card-body">                                                      

    <form  method="post"  action="{{ route('checklist.store') }}" enctype="multipart/form-data">
                             @csrf                           
    <input type="hidden" name="_method" value="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <input type="hidden" name="pd" id="pd">
          
<div class="row">
 <div class="card-body"  style="background-color:#b2ca5d !important">
<label class="text-dark" ><b>Indicator Questions</b></label>

  <div class="panel panel-default" style="background-color:#fff !important">
  @foreach ($pp as $p )
 
    
      <div class="panel-heading">
        <h4 class="panel-title">
         <div class="card">   
         <a data-toggle="collapse" href="#collapse{{$p->id}}" id="pid{{$p->id}}" class="panel-group btn-sm" onclick="myFunction({{$p->id}})" onkeyup ="myFunction({{$p->id}})" style="background-color:#b3782a !important">{{ $p->property_name  }}</a>
        <!-- <input type="text" name="prop[]" value="{{$p->id}}"> -->

       </div>
      </div>
      <div id="collapse{{$p->id}}" class="panel-collapse collapse">
               
 
<div class="row">
  <div class="col-lg-1 col-md-1 col-sm-1"></div>
    <div class="col-lg-10 col-md-10 col-sm-10">
      @foreach ($qns as $qn )    
       @if($p->metaname_id ==$qn->metaname_id) 
       <div class="panel-group btn-sm" style="background-color:#6d802b !important">{{ $qn->qns  }}</div>
            <div class="form-group">
              <div class="row">   
       @foreach ($metadatas as $metadata)                                         
                                                                                                                                                                  
           @if($metadata->indicator_id ==$qn->id) 
          
          <div class="col-xl-4 col-md-4 col-sm-4">
          <label>{{$metadata->answer}}</label>
          <input type="{{$metadata->datatype}}" name="ids[]" value="{{$metadata->id}}">
         </div> 
                    
           @endif          
    @endforeach 
     </div> 
              </div>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"> <div class="card"><a data-toggle="collapse" href="#collaps{{ $qn->id }}{{$p->id}}">Description if any</a>
       </div>
      </div>
      <div id="collaps{{ $qn->id}}{{$p->id}}" class="panel-collapse collapse">
        <textarea id="desc" name="desc{{$p->id}}[]" placeholder="---enter description if any---" class="form-control"></textarea>
              </div>
    </div>
  </div>

 <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title"> <div class="card">    <a data-toggle="collapse" href="#collap{{ $qn->id  }}{{$p->id}}">Photo if any</a>
       </div>
      </div>
      <div id="collap{{ $qn->id }}{{$p->id}}" class="panel-collapse collapse">
        
<div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                    <input type="file" name="attachment{{$p->id}}[]" onChange="displayImage(this)" id="attachment" accept="image/*" class="" style="display:block;"> 
                                   
                                </div>
                                </div>
        <div class="col-lg-8 col-md-6 col-sm-12">

            <span class="img-div">
              <div class="text-center img-placeholder"  onClick="triggerClick()">
              </div>
              <img src="images/no.png" onClick="triggerClick()" id="profileDisplay">
            </span>
            </div>
      </div>

      </div>
    </div>
  </div>
  <hr style="background-color:#fd7e14 !important">
   @endif
   <!-- <button  class="btn-sm btn btn-primary float-right" type="submit">Savex <i class="fas fa-save"></i></button>  -->
               @endforeach
  <div class="row">
 <div class="col-md-12 col-sm-12">
 <div class="wawa-bgcolor">
                                    <button  class="btn-sm btn btn-secondary float-right" type="submit">Save</button>
                                 </div> 
</div>
<hr><hr>
</div>
   </div>  
   </div>




<div class="col-lg-1 col-md-1 col-sm-1"></div>
</div>
   @endforeach
             </div>   
<hr/>
             <button  class="btn-sm btn btn-dark float-right" type="submit">Finish</button>
           </div>

               
           </div>                       
                                


<!-- 
                                </div>
                                 </div> -->
         
   <div class="row">
     <div class="col-md-6 col-sm-6">
     </div>

</div>
                                  @endisset 
  </form>

               </div>                  
                                 </div>
                                 </div>

  
<script type="text/javascript">
  $(document).ready(function() {
$('.qnNo').materialSelect();
});
</script>

<script>
const ages = [3, 10, 18,42, 20];

document.getElementById("demo").innerHTML = ages.findIndex(checkAge);

function checkAge(age) {
  return age >18;
}
</script>


<script>
     function numberWithCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }

function myFunction(id) {
  //  alert(id);
    var pid="pd"+(id);
    $('#pd').val(id);


// const ages = [3, 10, 18, 20];
// ages.findIndex(checkAge);
// function checkAge(age) {
//   return age > 18;
// }
 //$('#index').val(id);
//alert(pid);
    // var upv="up_"+(id);
    // var anQty="qty"+(id);
    //   var antQty="tqty"+(id);
    // var aprice="price_"+(id);
    //   var asubtotal="subtotal_"+(id);
 //$('#'+pid+'').val(id);

    var descs=document.getElementById(desc).value;
     // var up=document.getElementById(upv).value;
     // var unitPrice=document.getElementById(aprice).value;      
     //    var StoreQty=document.getElementById(antQty).value;
      alert(descs);

 
//  var soldQty=numberWithCommas((ur*up).toFixed(2));
// if(ur>=0 && up>=0)
// { 
// //var soldQty=numberWithCommas((ur*up));
// //var subtotal=(unitPrice*soldQty).toFixed(2);   
//    //totalCost +=subtotal;

// //  if(Number(soldQty)<=Number(StoreQty))
// //  {
// //   $('#'+anQty+'').val(soldQty);
// //   $('#'+asubtotal+'').val(subtotal);
 //alert('kk');
const arr = [{id: 'a'}, {id: 'b'}, {id: 'c'}];
const index = arr.map(object => object.id).indexOf('c');
// alert(desc);
}


const fruits = ["apple", "banana", "cantaloupe", "blueberries", "grapefruit"];

const index = fruits.findIndex(fruit => fruit === "grapefruit");
 //alert(index);
// function numberWithCommas(n) {
//     return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
//      }

 //     function sum()
 //     {
 //        $('.amount').each(function(){
 //            alert('df');
 //    //if statement here 
 //    // use $(this) to reference the current div in the loop
 //    //you can try something like...
 //    // if(condition){
 //    // }
 // });
 //     }
</script>

<script type="text/javascript">
  $(function() {
  $('.selectpicker').selectpicker();
});
</script>
</div>
