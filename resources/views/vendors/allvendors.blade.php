@extends('backend.layouts.master')

@section('main-content')
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="row">
            <div class="col-md-12">
                @include('backend.layouts.notification')
            </div>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="user-dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>S.N.</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Photo</th>
                        <th>Join Date</th>
                        <th>Role</th>
                        <th>Current Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>S.N.</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Photo</th>
                        <th>Join Date</th>
                        <th>Role</th>
                        <th>Current Status</th>
                        <th>Action</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    @foreach($users as $user)
                        <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>
                                @if($user->photo)
                                    <img src="{{$user->photo}}" class="img-fluid rounded-circle" style="max-width:50px" alt="{{$user->photo}}">
                                @else
                                    <img src="{{asset('backend/img/avatar.png')}}" class="img-fluid rounded-circle" style="max-width:50px" alt="avatar.png">
                                @endif
                            </td>
                            <td>{{(($user->created_at)? $user->created_at->diffForHumans() : '')}}</td>
                            <td>{{$user->role}}</td>
                            <td>
                                @if($user->is_vendor==2)
                                    <span class="badge badge-success">Active Vendor</span>
                                @elseif($user->is_vendor==3)
                                    <span class="badge badge-warning">Dective Vendor</span>
                                @endif
                            </td>
                            <td>
                                @if($user->is_vendor==2)
                                @elseif($user->is_vendor==3)
                                    <a href="{{route('vendor-deactivate',$user->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Deactivate" data-placement="bottom"><i class="fas fa-ban"></i></a>
                                    <a href="{{route('user-request-approve',$user->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="Activate" data-placement="bottom"><i class="fas fa-check"></i></a>
                                @endif
                                <form method="GET" action="{{route('vendor.destroy',$user->id)}}">
                                    @csrf
                                    <button class="btn btn-danger btn-sm dltBtn" data-id={{$user->id}} style="height:30px;width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
{{--                                    @method('delete')--}}
{{--                                    <button class="btn btn-danger btn-sm "  style="height:30px;width:30px;border-radius:50%" ><i class="fas fa-trash-alt"></i></button>--}}
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <span style="float:right">{{$users->links()}}</span>
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

        $('#user-dataTable').DataTable( {
            "columnDefs":[
                {
                    "orderable":false,
                    "targets":[6,7]
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
