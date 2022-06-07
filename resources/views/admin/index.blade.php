@extends('layouts.app')
@section('content')

    <!--begin::Content-->
    <div class="content d-flex flex-column flex-column-fluid" id="tc_content">
        <!--begin::Subheader-->
        <div class="subheader py-2 py-lg-6 subheader-solid">
            <div class="container-fluid">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-white mb-0 px-0 py-2">
                        <li class="breadcrumb-item active" aria-current="page">General Dashboard</li>
                    </ol>
                </nav>
            </div>
        </div>
        <hr>
        <!--end::Subheader-->
        <!--begin::Entry-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container-fluid">
                <div class="row">
                    
                   
                        @role('Admin|Sales|Account|SuperAdmin')
                        

                            <div class="col-lg-6 col-xl-4">
                                <div class="card card-custom gutter-b bg-white border-0 ">

                                    <div class="card-body">
                                        <h3 class="text-body font-weight-bold">Daily Sales</h3>

                            <div class="mt-3">
                                <div class="d-flex align-items-center">
                                    <span class="text-dark font-weight-bold font-size-h1 mr-3">
                                        Tsh. <span
                                            class="" data-target="400">
                                        {{ number_format(  $thedaily->daily_sales) }}</span>
                                    </span>
                                </div>
                                <div class="text-black-50 mt-3">
                                    <span class="font-weight-bold text-dark">  Cash</span>
                                    <span class="btn-sm bg-secondary">
                                    <a href="{{ route('transactions','daily') }}">
                                          <span class="text-white">
                                        {{ number_format(  $thedaily->daily_cash) }} </span></a>
                                </span> &nbsp;
                                <span class="float-right">
                                    <span class="font-weight-bold text-dark">Payment</span>
                                <span class="btn-sm bg-primary text-white ">
                                    {{ number_format( $collection_daily) }}
                                </span>
                                </span>
                                <hr>
                                <span>
                                    <span class="font-weight-bold text-dark">Credit</span>
                                <span class="btn-sm bg-danger ">
                                    <a href="#">
                                    <span class="text-white">  {{ number_format($thedaily->daily_balance) }} </span>
                                </a>
                            </span>
                            </span>
                            &nbsp;
                            @role('Admin|SuperAdmin|Account')
                                <span class="float-right" >
                                    <span class="font-weight-bold text-dark">Profit</span>
                                <span class="btn-sm  bg-success">
                                    <a href="#">
                         <span class="text-white">
                             {{ number_format($daily_profits->total_selling - $daily_profits->total_buying) }}
                            </span>
                            </span>
                                </a>
                            </span>
                            @endrole

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="card card-custom gutter-b bg-white border-0 ">

                                    <div class="card-body">
                                        <h3 class="text-body font-weight-bold">Weekly Sales</h3>

                                        <div class="mt-3">
                                            <div class="d-flex align-items-center">
                                                <span class="text-dark font-weight-bold font-size-h1 mr-3">Tsh. <span
                                                        class="" data-target="6000">
                                                    {{ number_format($theweekly->weekly_sales) }}</span></span>
                                            </div>
                                            <div class="text-black-50 mt-3">
                                                <span class="font-weight-bold text-dark">Cash</span>
                                                <span class="btn-sm bg-secondary">
                                                <a href="{{ route('transactions','weekly') }}">
                                                    <span class="text-white">{{ number_format($theweekly->weekly_cash) }}  </span></a>
                                            </span> &nbsp;
                                            <span class="float-right">
                                                <span class="font-weight-bold text-dark">Payment </span>
                                            <span class="btn-sm bg-primary text-white float-right">
                                                {{ number_format( $collection_weekly) }}
                                                </span>
                                                </span>
                                                <hr>

                                            <span>
                                                <span class="font-weight-bold text-dark">Credit</span>
                                                <span class="btn-sm bg-danger ">
                                                <a href="#"> <span class="text-white"> {{ number_format($theweekly->weekly_balance) }} </span></a>
                                            </span>
                                            </span>
                                                &nbsp;
                                                @role('Admin|SuperAdmin|Account')
                                                <span class="float-right" >
                                                    <span class="font-weight-bold text-dark">Profit</span>
                                                    <span class="btn-sm  bg-success">
                                                        <a href="#">
                                             <span class="text-white">
                                                        {{ number_format($weekly_profits->total_selling - $weekly_profits->total_buying) }}
                                                       </span>
                                                           </a>
                                                       </span>
                                                       </span>
                                                       @endrole

                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-xl-12 col-md-12">
                                <div class="card card-custom gutter-b bg-white border-0">

                                    <div class="card-body">
                                        <h3 class="text-body font-weight-bold">Monthly Sales</h3>

                                        <div class="mt-3">
                                            <div class="d-flex align-items-center">
                                                <span class="text-dark font-weight-bold font-size-h1 mr-3">
                                                    <span >Tsh.
                                                    {{ number_format($themonthly->monthly_sales) }}</span></span>
                                            </div>
                                            <div class="text-black-50 mt-3">
                                                <span class="font-weight-bold text-dark">Cash</span>
                                                <span class="btn-sm bg-secondary">
                                                <a href="{{ route('transactions','monthly') }}">
                                                    <span class="text-white">
                                                    {{ number_format($themonthly->monthly_cash) }}
                                                </span></a>
                                            </span> &nbsp;
                                            <span class="float-right" >
                                              <span class="font-weight-bold text-dark">Payment</span>
                                            <span class="btn-sm bg-primary text-white float-right"> {{ number_format( $collection_monthly) }}
                                                </span>
                                                </span>
                                                <hr>

                                            <span>
                                                <span class="font-weight-bold text-dark">Credit</span>
                                                <span class="btn-sm bg-danger ">
                                                <a href="#"> <span class="text-white">{{ number_format($themonthly->monthly_balance) }}</span></a>
                                            </span>
                                            </span>

                                                &nbsp;
                                                @role('Admin|SuperAdmin|Account')
                                                <span class="float-right">
                                                    <span class="font-weight-bold text-dark">Profit</span>
                                                    <span class="btn-sm  bg-success">
                                                        <a href="#">
                                             <span class="text-white">
                                                        {{ number_format(
                                                            $monthly_profits->total_selling - $monthly_profits->total_buying) }}
                                                       </span>
                                                           </a>
                                                       </span>
                                                       </span>
                                                       @endrole
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @role('Admin|Account|SuperAdmin')
                            @isset($pending_orders )
                                        <div class="col-lg-4  col-xl-4 col-md-4">

                                            <div class="card card-custom gutter-b bg-white border-0">
                                                <div class="card-header align-items-center  border-0">
                                                    <div class="card-title mb-0">
                                                        <h3 class="card-label text-body font-weight-bold mb-0">Reminders
                                                        </h3>
                                                    </div>

                                                </div>
                                                <div class="card-body px-0">
                                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                                        <a href="/order">
                                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                                        <div class="list-left d-flex align-items-center">
                                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                                                <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-lightning-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                                    <path fill-rule="evenodd" d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z"/>
                                                                  </svg>
                                                              </span>
                                                          <div class="list-content">
                                                            <span class="list-title text-body">Pending Orders</span>
                                                            <span class="text-muted d-block text-success">
                                                                {{ $pending_orders->orders_count }}
                                                              orders</span>
                                                          </div>

                                                        </div>
                                                        <span>
                                                            <span>
                                                            {{$pending_orders->orders_count}}
                                                         </span>
                                                    </span>
                                                      </li>
                                                    </a>
                                                      <a href="/outstandings">
                                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                                        <div class="list-left d-flex align-items-center">
                                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                                <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-bar-chart-line-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                                    <path fill-rule="evenodd" d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z"/>
                                                                  </svg>
                                                              </span>
                                            <div class="list-content">
                                            <span class="list-title text-body">Outstandings</span>
                                            <span class="text-muted d-block text-success">
                                                {{ number_format($overdue->overdue_count) }} Invoices</span>
                                            </div>
                                                        </div>
                                                        <span>Tsh. {{ number_format($overdue->total_due) }}</span>
                                                      </li>
                                                    </a>
                                                    <a href="/payment">
                                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                                        <div class="list-left d-flex align-items-center">
                                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                                <svg width="20px" height="20px" viewBox="0 0 16 16" class="bi bi-credit-card-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0V4z"/>
                                                                    <path fill-rule="evenodd" d="M0 7v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7H0zm3 2a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1a1 1 0 0 0-1-1H3z"/>
                                                                  </svg>
                                                              </span>
                                                          <div class="list-content">
                                                            <span class="list-title text-body">Payable Invoices</span>
                                                            <span class="text-muted d-block text-success">
                                                                {{ number_format($payable->total_count) }} Invoices</span>
                                                          </div>
                                                        </div>
                                                        <span>Tsh. {{ number_format($payable->total_balance) }}</span>
                                                      </li>
                                                    </a>

                                                    </ul>
                                                  </div>
                                              </div>
                                        </div>

                                    

                                        <div class="col-lg-4  col-xl-4 col-md-4">
                            <div class="card card-custom gutter-b bg-white border-0">
                                <div class="card-header align-items-center  border-0">
                                    <div class="card-title mb-0">
                                        <h3 class="card-label text-body font-weight-bold mb-0">Monthly Top Leading
                                        </h3>
                                    </div>

                                </div>
                                <div class="card-body px-0">
                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-primary text-white mr-2">
                                               <i class="fa fa-home"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Shop</span>
                                            <span class="text-muted d-block text-success"> {{ $top_shop->warehouse ?? '-' }}</span>
                                          </div>

                                        </div>
                                        <span>
                                            <span>
                                                Tsh. {{ number_format($top_shop->total_selling ?? 0 )}}
                                         </span>
                                    </span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-secondary text-white mr-2">
                                                <i class="fa fa-user"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Customer</span>
                                            <span class="text-muted d-block text-success">{{ $top_customer->customer_name ?? '-'}}</span>
                                          </div>
                                        </div>
                                        <span> Tsh. {{ number_format($top_customer->total_selling ?? 0) }}</span>
                                      </li>
                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                        <div class="list-left d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px bg-success text-white mr-2">
                                                <i class="fa fa-shopping-cart"></i>
                                              </span>
                                          <div class="list-content">
                                            <span class="list-title text-body">Top Product</span>
                                            <span class="text-muted d-block text-success">{{ $top_product->item ?? '-' }}</span>
                                          </div>
                                        </div>
                                        <span>Tsh. {{ number_format($top_product->total_value ?? 0) }}</span>
                                      </li>
                                    </ul>
                                  </div>
                              </div>
                        </div>

                            <div class="col-lg-4 col-xl-4 col-md-4">
                                            <div class="card card-custom gutter-b bg-white border-0">
                                                <div class="card-header align-items-center  border-0">
                                                    <div class="card-title mb-0">
                                                        <h3 class="card-label text-body font-weight-bold mb-0">Online Staff
                                                        </h3>
                                                    </div>

                                                </div>
                                                <div class="card-body px-0">
                                                    <ul class="list-group scrollbar-1" style="height: 300px;">
                                                      @foreach ($sessions as $session)
                                                      <li class="list-group-item list-group-item-action border-0 d-flex align-items-center justify-content-between py-2">
                                                        <div class="list-left d-flex align-items-center">
                                                            <span class="d-flex align-items-center justify-content-center rounded svg-icon w-45px h-45px  text-white mr-2">
                                                                <i class="fa fa-user text-success"></i>
                                                              </span>
                                                          <div class="list-content">
                                                            <span class="list-title text-body">{{ $session->name }}</span>
                                                            <?php $dates = date("Y-m-d H:i:s", $session->last_activity) ?>
                                                            <small class="text-muted d-block">{{ \Carbon\Carbon::now()->diffForHumans($dates) }}</small>
                                                          </div>
                                                        </div>
                                                        <span>{{ date("H:i:s", $session->last_activity)}}</span>
                                                      </li>
                                                      @endforeach

                                                    </ul>
                                                  </div>
                                              </div>
                                        </div>
                            @endisset
                            @endrole

                        </div>
                        @endrole
                        @role('')
                        <div class="alert alert-info">You do not have permission, kindly contact system admin</div>
                        @endrole
               </div>
                </div>
            </div>





    @endsection


