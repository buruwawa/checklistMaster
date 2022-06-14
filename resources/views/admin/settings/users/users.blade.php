@extends('layouts.app')
@section('content')
               
                <div class="content d-flex flex-column flex-column-fluid" id="tc_content">
                    <!--begin::Subheader-->
                        <div class="subheader py-2 py-lg-6 subheader-solid">
                        <div class="container-fluid">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                                    <li class="breadcrumb-item active" aria-current="page">General Settings</li>
                                    <li class="breadcrumb-item active" aria-current="page">Users</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <!--end::Subheader-->
                    <!--begin::Entry-->
                    <div class="d-flex flex-column-fluid">
                        <!--begin::Container-->
                        <div class="container-fluid">

                             <div class="row">                                
                                        <div class="col-lg-12 col-xl-12">
                                            <div class="card card-custom bg-transparent shadow-none border-0" >
                                            <div class="card-header align-items-center  border-bottom-dark px-0">
                                                    <div class="card-title mb-0">
                                                        <h6 class="card-label mb-0 font-weight-bold text-body">Users
                                                        </h6>
                                                    </div>

                                                    <div class="d-flex">
   <button  class="btn ml-2 p-0 kt_notes_panel_toggle"
                                                          data-toggle="tooltip" title="" data-placement="right"
                                                                            data-original-title="Check out more demos" >
                                                            <span class="bg-secondary h-30px font-size-h5 w-30px d-flex align-items-center justify-content-center  rounded-circle shadow-sm ">
                                                                <i class="fa fa-print"></i>
                                                            </span>

                                                        </button>

                                                        @if(count($user) <= $limitation->limit_users)
                                                        <button  class="btn ml-2 p-0 kt_notes_panel_toggle"
                                                          data-toggle="tooltip" title="" data-placement="right"
                                                                            data-original-title="Check out more demos" >
                                                            <span class="bg-secondary h-30px font-size-h5 w-30px d-flex align-items-center justify-content-center  rounded-circle shadow-sm ">
                                                                <i class="fa fa-plus"></i>
                                                            </span>

                                                        </button>
                                                        @endif
                                                        @role('SuperAdmin')
                                                        <a href="{{ route('roles.index') }}" class="btn btn-primary ripple my-2 btn-icon-text">
                                                          Roles & Permission
                                                        </a>
                                                        @endrole
                                                    </div>


                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    @if($user !="[]")
                                    <div class="row">

                                        <div class="col-12">
                                            <div class="card card-custom gutter-b bg-white border-0" >
                                                <div class="card-body" >
                                                    <div >
                                                        <div class=" table-responsive" id="printableTable">
                                                            {{-- <table id="orderTable" class="display" style="width:100%"> --}}
                                                                <table id="orderTable" class="display" style="width:100%">

                                                                    <thead>
                                                                        <tr>
                                                                            <th>User</th>
                                                                            <th>E-mail</th>
                                                                            <th>Role</th>
                                                                            @role('Admin|SuperAdmin')
                                                                             <th>Permission</th> 
                                                                              <th>Department</th> 
                                                                             @endrole
                                                                            <th>Created</th>
                                                                            @role('Admin') <th>Action</th> @endrole
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>

                                                                @foreach($users as $value)
                                                                @if($value->email != "admin@moxa.co.tz")
                                                                <tr class="border-bottom @if(auth()->id()== $value->id)text-primary @endif" >
                                                                    <th scope="row">{{ $value->name }}</a></th>
                                                                    <td>{{ $value->email }}</a></td>
                                                                    <td>

                                                                        @forelse($user as $role)
                                                                        @if($role->sys_user_id == $value->id)
                                                                        <form action="{{ route('users.destroy', $role->arole_id) }}" method="POST" >
                                                                            @method('PUT')
                                                                            <input type="hidden" name="_method" value="delete">
                                                                            <input type="hidden" name="users" value="users">
                                                                            <input type="hidden" name="revoke" value="revoke">
                                                                                    {{ csrf_field() }}
                                                                            <button type="submit"  name="role" title="Remove this role" class="btn btn-outline-primary btn-sm" value="{{$role->role_name}}" onclick="return confirm(id='Are you sure you want to revoke this permission to this role?')" style="margin-bottom:3px;">
                                                                                <span class="text-white btn-sm bg-danger">-</span>
                                                                                {{$role->role_name}}
                                                                            </button>

                                                                        </form>
                                                                        @endif

                                                                    @empty
                                                                    <span class="alert alert-danger">No Role</span>
                                                                    @endforelse

                                                                    <button type="button" class="btn btn-success btn-sm ripple my-2 btn-icon-text text-right" data-target="#role{{ $value->id }}" data-toggle="modal"> <i class="fa fa-plus"></i></button>


                                                    {{-- start of role modal --}}
                                                    <div class="modal" id="role{{ $value->id }}" style="display: none;" aria-hidden="true">
                                                        <div class="modal-dialog modal-md" role="document">
                                                            <div class="modal-content modal-content-demo">
                                                                <div class="modal-header">
                                                                    <h6 class="modal-title">Assign role to {{ $value->name }} </h6>
                                                                    <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                                                                        <span aria-hidden="true">×</span></button>
                                                                    </div>
                                                                    <form method="POST" action="{{ route('roles.store') }}" method="POST">
                                                                        @csrf
                                                                    <div class="modal-body">

                                                                            {{-- form start here --}}


                                                            <div class="container">
                                                            <div class="row">
                                                                    <div class="col-md-12 col-lg-12">
                                                                        <div class="form-group row">
                                                                            <label for="name" class="col-form-label ">{{ __('Roles') }}</label>
                                                                            <select name="role_name" id="" class="form-control" required>
                                                                                <option value="" selected>--Assign role --</option>
                                                                                @foreach ($roles as $role)
                                                                                <option value="{{$role->id}}">{{ $role->name }}</option>
                                                                                @endforeach
                                                                            </select>

                                                                            <input type="hidden" name="addrole" value="addrole">
                                                                            <input type="hidden" name="user_id" value="{{ $value->id}}">
                                                                    </div>
                                                                </div>
                                                                </div>

                                                                            {{-- form Ends here --}}

                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button class="btn ripple btn-primary" type="submit">Save changes</button>
                                                                        </form>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                    {{-- End of role Modal  --}}

                                                            </td>
                                                            @role('Admin|SuperAdmin')  <td>
                                                                        @forelse($permissions as $permission)
                                                                        @if($permission->model_id == $value->id)
                                                                        <form action="{{ route('users.destroy', $value->id) }}" method="POST" >
                                                                            @method('PUT')
                                                                            <input type="hidden" name="_method" value="delete">
                                                                            <input type="hidden" name="users" value="users">
                                                                            <input type="hidden" name="revoke" value="revoke">
                                                                            <input type="hidden" name="siteid" value="{{$permission->id}}">

                                                                                    {{ csrf_field() }}
                                                                            <button type="submit"  name="permission" class="btn btn-sm  btn-outline-primary" value="{{$permission->permission_name}}" onclick="return confirm(id='Are you sure you want to revoke this permission to this role?')" style="margin-bottom:3px;"><span class="text-white btn-sm bg-danger">-</span> {{$permission->permission_name}}</button>

                                                                        </form>
                                                                        @endif
                                                                    @empty
                                                                        <span class="alert alert-danger">No separate permission</span>
                                                                    @endforelse

                                                                    <button type="button" class="btn btn-success btn-sm ripple my-2 btn-icon-text text-right" data-target="#permission{{ $value->id }}" data-toggle="modal"> <i class="fa fa-plus"></i></button>


                                                    {{-- start of role modal --}}
                                                    <div class="modal" id="permission{{ $value->id }}" style="display: none;" aria-hidden="true">
                                                        <div class="modal-dialog modal-md" role="document">
                                                            <div class="modal-content modal-content-demo">
                                                                <div class="modal-header">
                                                                    <h6 class="modal-title">Assign permission to {{ $value->name }} </h6>
                                                                    <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                                                                        <span aria-hidden="true">×</span></button>
                                                                    </div>
                                                                    <form method="POST" action="{{ route('roles.store') }}">
                                                                        @csrf
                                                                    <div class="modal-body">

                                                                            {{-- form start here --}}


                                                            <div class="container">
                                                            <div class="row">
                                                                    <div class="col-md-12 col-lg-12">
                                                                        <div class="form-group row">
                                                                            <label for="name" class="col-form-label ">{{ __('Permission Level') }}</label>
                                                        <select name="permission_to_assign" id="" class="form-control" required>
                                                        <option value="" selected>--Accessing level permission --</option>
                                                        @foreach ($permit as $permitted)
                                                    <option value="{{ $permitted->id }}">{{ $permitted->site_name }}</option>
                                                                                @endforeach

                                                                            </select>
                                                                            <input type="hidden" name="user_id" value="{{ $value->id}}">
                                                                    </div>
                                                                </div>
                                                                </div>

                                                                            {{-- form Ends here --}}

                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button class="btn ripple btn-primary" type="submit">Save changes</button>
                                                                        </form>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                    {{-- End of role Modal  --}}
                                                                    </td>
                                                                    @endrole
  {{-- DEPARTMENT  --}}

   @role('Admin|SuperAdmin') 
    <td>
                                                                        @forelse($departments as $department)
                                                                        @if($department->id == $value->department_id)
                                                                      
                                                                        {{$department->unit_name}}
                                                                        @endif
                                                                    @empty
                                                                        <span class="alert alert-danger">No separate Department</span>
                                                                    @endforelse
                                                            </div>
                                                            </div>
                                                    {{-- End of role Modal  --}}
                                                                    </td>
                                                                    @endrole

                                                                    <td>{{ date('d/m/y',strtotime($value->created_at)) }}</td>
                                                               @role('Admin')     <td>
                                                                        <div class="button-list">

                                                                            <form action="{{ route('users.destroy', $value->id) }}" method="POST" >
                                                                            @method('PUT')
                                                                            @if(auth()->id()== $value->id)  @else
                                                                            <input type="hidden" name="_method" value="delete">
                                                                            <input type="hidden" name="users" value="users">
                                                                                    {{ csrf_field() }}
                                                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm(id='Are you sure you want to delete this user?')"><i class="fa fa-trash"></i></button>
                                                                            @endif
                                                                        </form>
                                                                        </div>
                                                                    </td>
                                                                    @endrole
                                                                </tr>

                                                                {{-- District End here --}}
                                                                @endif
                                                        @endforeach
                                                    </tbody>
                                                </table>

                                                        </div>
                                                    </div>


                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>

                        {{--    --}}

    <div  class="offcanvas offcanvas-right kt-color-panel p-1 kt_notes_panel">
        <div class="offcanvas-header d-flex align-items-center justify-content-between pb-3">            
            <a href="#" class="btn btn-sm btn-icon btn-light btn-hover-primary kt_notes_panel_close" >
                <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-x" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
                </svg>
            </a>
        </div>
  

            
  <div class="card-body"  style="background-color:#b2ca5d !important">
        <div class="card col-xl-12 col-md-12"> 
        <form id="myform" action="{{ route('print.show',1) }}" method="PUT" enctype="multipart/form-data">
         @csrf

            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="form-group">
                        <label class="text-dark" >User ID </label>
                        <input class="form-control block mt-1 w-full" type="text" name="userid" :value="old('id')" autofocus autocomplete="id" >
                        <small  class="form-text text-muted">Please Enter User ID to Print specific Data or leave Empty to Print all Data</small>
                    </div>                 
                </div>
            </div>
            <div class="flex items-center justify-end mt-4">
             <x-jet-button class="btn-sm btn btn-dark float-right">
                    {{ __('Print') }}
                </x-jet-button>
            </div>
                <!-- <button  class="btn-sm btn btn-dark float-right" type="submit">Print</button> -->
          </form>
      
      </div>
  </div>
    </div>

                    </div>
                </div>
@endsection
