@extends('backend.layouts.master')

@section('main-content')
 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="row">
         <div class="col-md-12">
            @include('backend.layouts.notification')
         </div>
     </div>
    <div class="card-header py-3">

        <h6 class="m-0 font-weight-bold text-primary float-left">Product Lists</h6>
        @if(Auth::user()->role=='admin')
        <a href="{{route('product.create')}}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip" data-placement="bottom" title="Add User"><i class="fas fa-plus"></i> Add Product</a>
        @endif
        @if(Auth::user()->role == 'vendor')
        <a href="{{route('vendor_product.create')}}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip" data-placement="bottom" title="Add User"><i class="fas fa-plus"></i> Add Product</a>
    @endif
    </div>
    <div class="card-body">
      <div class="table-responsive">
        @if(count($products)>0)

        <table class="table table-bordered" id="product-dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
{{--              <th>Category</th>--}}
{{--              <th>Is Featured</th>--}}
              <th>Price</th>
{{--              <th>Discount</th>--}}
{{--              <th>Size</th>--}}
{{--              <th>Condition</th>--}}
              <th>Brand</th>
{{--              <th>Stock</th>--}}
              <th>Photo</th>
            <th>Product<br>Owner</th>
                <th>Approval<br>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
{{--              <th>Category</th>--}}
{{--              <th>Is Featured</th>--}}
              <th>Price</th>
{{--              <th>Discount</th>--}}
{{--              <th>Size</th>--}}
{{--              <th>Condition</th>--}}
              <th>Brand</th>
{{--              <th>Stock</th>--}}
              <th>Photo</th>
                <th>Product<br>Owner</th>
                <th>Approval<br>Status</th>
              <th>Action</th>
            </tr>
          </tfoot>
          <tbody>

            @foreach($products as $product)
              @php
              $sub_cat_info=DB::table('categories')->select('title')->where('id',$product->child_cat_id)->get();
              $brands=DB::table('brands')->select('title')->where('id',$product->brand_id)->get();
              @endphp
                <tr>
                    <td>{{$product->id}}</td>
                    <td>
                        @if($product->title)
                            {{$product->title}}
                        @else
                            No Product Title
                        @endif
                    </td>

{{--                    <td>{{(($product->is_featured==1)? 'Yes': 'No')}}</td>--}}
                    <td>
                        @if($product->price)
                            $. {{$product->price}} /-
                        @else
                        No Price
                        @endif

                    </td>
{{--                    <td>  {{$product->discount}}% OFF</td>--}}
{{--                    <td>{{$product->size}}</td>--}}
{{--                    <td>{{$product->condition}}</td>--}}
                    <td>
                        {{-- {{$brands}} --}}
                        @if($product->brand_id)
                            @foreach($brands as $brand)
                                @if($brand->title)
                                    {{$brand->title}}
                                    @else
                                    No Data
                                @endif
                            @endforeach
                        @else
                            No Brand
                        @endif
                    </td>
{{--                    <td>--}}
{{--                      @if($product->stock>0)--}}
{{--                      <span class="badge badge-primary">{{$product->stock}}</span>--}}
{{--                      @else--}}
{{--                      <span class="badge badge-danger">{{$product->stock}}</span>--}}
{{--                      @endif--}}
{{--                    </td>--}}

                    <td>

                        @if($product->photo)

{{--                            <img src="{{asset(''.$product->photo)}}" class="img-fluid" style="max-width:80px" alt="avatar.png">--}}
                            <img src="{{url('/americansook/public/../storage/app/'.$product->photo)}}" class="img-fluid"  style="max-width:80px" alt="User Avatar">
                            {{--                            @php--}}
{{--                              $photo=explode(',',$product->photo);--}}
{{--                              // dd($photo);--}}
{{--                            @endphp--}}
{{--                            <img src="{{$photo[0]}}" class="img-fluid zoom" style="max-width:80px" alt="{{$product->photo}}">--}}
{{--                            <img src="{{asset('storage/backend/img/1.jpg')}}" class="img-fluid" style="max-width:80px" alt="avatar.png">--}}

                        @else
                            <img src="{{asset('')}}$product->photo" alt="not found">
{{--                            <img src="{{asset('storage/backend/img/1.jpg')}}" class="img-fluid" style="max-width:80px" alt="avatar.png">--}}
                        @endif
                    </td>

                    <td>
                        @if($product->admin_vendor_id==1)
                            <span class="">ADMIN</span>
                        @else
                            <span class="">VENDOR</span>
                        @endif
                    </td>

                    <td>
                        @if($product->status=='active')
                            @if($product->is_approved==0)
                                <span class="badge badge-warning">Pending</span>
                            @elseif($product->is_approved==1)
                                    <span class="badge badge-success">Approved</span>
                            @elseif($product->is_approved==2)
                            <span class="badge badge-danger">Rejected</span>
                            @endif
                        @endif
                    </td>
                    <td>
                        @if(Auth::user()->role == 'admin')
                            @if($product->is_approved==0)
                                <a href="{{route('reject_product',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Reject" data-placement="bottom"><i class="fas fa-times"></i></a>
                                <a href="{{route('approve_product',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Approve" data-placement="bottom"><i class="fas fa-check"></i></a>
                            @elseif($product->is_approved==1)
                                <a href="{{route('reject_product',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Reject" data-placement="bottom"><i class="fas fa-times"></i></a>
                            @elseif($product->is_approved==0)
                                <a href="{{route('approve_product',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Approve" data-placement="bottom"><i class="fas fa-check"></i></a>
                            @endif
                                @if($product->admin_vendor_id == Auth::user()->id)
                                    @if($product->type == 1)
                                        {{-- <a href="{{route('feature.show',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Features" data-placement="bottom"><i class="fas fa-key"></i></a> --}}
                                    @elseif($product->type == 2 || $product->type == 3 || $product->type == 4)
                                        {{-- <a href="{{route('partsfeature.show',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Features" data-placement="bottom"><i class="fas fa-key"></i></a> --}}
                                        <a href="{{route('product.edit',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                                    @endif
                                @endif
                          @endif
                            @if(Auth::user()->role == 'vendor')
                                <a href="{{route('vendorfeature.show',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Features" data-placement="bottom"><i class="fas fa-key"></i></a>

                                <a href="{{route('vendor_product.edit',$product->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                            @endif
                            @if(Auth::user()->role == 'admin')
                                @if($product->admin_vendor_id == Auth::user()->id)
                                    <form method="POST" action="{{route('product.destroy',[$product->id])}}">
                                        @csrf
                                        @method('delete')
                                        <button class="btn btn-danger btn-sm dltBtn" data-id="{{$product->id}}" style="height:30px;width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Admin, Delete Your Product"><i class="fas fa-trash-alt"></i></button>
                                    </form>
                                @endif
                            @endif
                            @if(Auth::user()->role == 'vendor')
                                @if($product->admin_vendor_id == Auth::user()->id)
                                    <form method="POST" action="{{route('vendor_product.destroy',[$product->id])}}">
                                        @csrf
                                      @method('delete')
                                      <button class="btn btn-danger btn-sm dltBtn" data-id="{{$product->id}}" style="height:30px;width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Vendor, Delete Your Product"><i class="fas fa-trash-alt"></i></button>
                                    </form>
                                @endif
                            @endif
                    </td>

                    {{-- Delete Modal --}}
                    {{-- <div class="modal fade" id="delModal{{$user->id}}" tabindex="-1" role="dialog" aria-labelledby="#delModal{{$user->id}}Label" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="#delModal{{$user->id}}Label">Delete user</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <form method="post" action="{{ route('categorys.destroy',$user->id) }}">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn btn-danger" style="margin:auto; text-align:center">Parmanent delete user</button>
                              </form>
                            </div>
                          </div>
                        </div>
                    </div> --}}
                </tr>
            @endforeach
          </tbody>
        </table>
        <span style="float:right">{{$products->links()}}</span>
        @else
          <h6 class="text-center">No Products found!!! Please create Product</h6>
        @endif
      </div>
    </div>
</div>
@endsection

@push('styles')
  <link href="{{asset('backend/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
  <style>
      div.dataTables_wrapper div.dataTables_paginate{
          display: none;
      }
      .zoom {
        transition: transform .2s; /* Animation */
      }

      .zoom:hover {
        transform: scale(5);
      }
  </style>
@endpush

@push('scripts')

  <!-- Page level plugins -->
  <script src="{{asset('backend/vendor/datatables/jquery.dataTables.min.js')}}"></script>
  <script src="{{asset('backend/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="{{asset('backend/js/demo/datatables-demo.js')}}"></script>
  <script>

      $('#product-dataTable').DataTable( {
        "scrollX": false
            "columnDefs":[
                {
                    "orderable":false,
                    "targets":[10,11,12]
                }
            ]
        } );

        // Sweet alert

        function deleteData(id){

        }
  </script>
  <script>
      $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
          $('.dltBtn').click(function(e){
            var form=$(this).closest('form');
              var dataID=$(this).data('id');
              // alert(dataID);
              e.preventDefault();
              swal({
                    title: "Are you sure?",
                    text: "Once deleted, you will not be able to recover this data!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                       form.submit();
                    } else {
                        swal("Your data is safe!");
                    }
                });
          })
      })
  </script>
@endpush
