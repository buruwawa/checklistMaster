<?php

namespace App\Http\Controllers;

use App\Models\myCompany;
use App\Models\myPayment;
use App\Models\department;
use App\Models\userRole;
use App\Models\userSite;
use App\Models\site;

use Illuminate\Http\Request;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Traits\HasRoles;

class usersPermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
         $users= User::get();
         $departments= department::get();
    
        $user = User::join('user_roles','users.id','user_roles.sys_user_id')
        ->join('roles','user_roles.role_id','roles.id')
        ->where('user_roles.status','Active')
        ->select('roles.name as role_name','user_roles.sys_user_id as sys_user_id','user_roles.id as arole_id','users.*')
        ->get();


        // $permissions = User::join('model_has_permissions','users.id','model_has_permissions.model_id')
        // ->join('permissions','model_has_permissions.permission_id','permissions.id')
        // ->select('permissions.name as permission_name','model_has_permissions.model_id as model_id','users.*')
        // ->get();

  $permissions = userSite::join('sites','user_sites.site_id','sites.id')
       ->where('user_sites.status','Active')
        ->select('sites.id as id','user_sites.sys_user_id as model_id','sites.site_name as permission_name')
        ->get();

 //$usersites = userSite::get();
//dd($permissions);

        $permit = site::get();
        $roles = Role::get();
        $limitation = myPayment::latest()->first();

        return view('admin.settings.users.users',compact('users','user','permissions','permit','roles','limitation','departments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = User::where('id',request('users_id'))->first();
        $user_id->assignRole(request('roles'));
        return redirect()->back()->with('success','Role added successfly');
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
        $datas = User::where('id',$id)->first();
        $roles= Role::get();
        // $myroles = $datas->getRoleNames();
        return view('admin.settings.users.edit',compact('datas','id','roles'));
    }
/**
 * Remove roles to the user
 */

        public function roleremove($id,$role)
        {
            $user = User::where('id',$id)->first();
            $user->removeRole($role);
            return redirect()->back()->with('success','Role removed successfly');
        }


          public function recoveryUpdate(user $department,$id)
    {
          $user = user::where('id',$id)
               ->update([
                'department_id'=>"",
                 'user_id'=>auth()->id()

              ]);
       return redirect()->back()->with('success','Department recovered successfly');
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        if(request('role')){
            //dd($id);
            // $user = User::findorfail($id);
            // if($user->removeuserRole(request('role'))){
            //     return redirect()->back()->with('success','role has been revoked successefuly');
            // }
            // else{
            //     return redirect()->back()->with('error','role can not be revoked');
            // }
            $user = userRole::where('id',$id)
               ->update([
                'status'=>"Inactive",
                 'user_id'=>auth()->id()
              ]);
      return redirect()->back()->with('success','role has been revoked successefuly');
        }

         if(request('permission')){
           // dd(request('siteid'));
            $userSite = userSite::where('sys_user_id',$id)
            ->where('site_id',request('siteid'))
            ->first();

//dd($userSite->id);
        if($userSite){
                 $userSite->update([
            'status'=>'Inactive',
             'user_id'=>auth()->id()
           ]);

                return redirect()->back()->with('success','role has been revoked successefuly');
            }
            else{
                return redirect()->back()->with('error','role can not be revoked');
            }
        }

        if(request('users')){
       $delete_user = User::findorfail($id);
       if($delete_user->delete()){
           return redirect()->back()->with('success','User Deleted Successfuly');
       }
    }

 }
}
