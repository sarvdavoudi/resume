<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>@yield('title')</title>
    <!-- jQuery -->
    <script src="{{URL::to('/').'/plugins/jquery/jquery.min.js'}}"></script>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{URL::to('/')}}/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="{{URL::to('/')}}/plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- Bootstrap 4 RTL -->
    <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.2.1/css/bootstrap.min.css">
    <!-- Custom style for RTL -->
    <link rel="stylesheet" href="{{URL::to('/')}}/dist/css/custom.css">
    <style>
        @font-face {
            font-family: IranYekan;
            src: url(/fonts/ttf/iranyekanwebboldfanum.ttf);
        }
    </style>
    <!-- CkEditor -->
    <script src="https://cdn.ckeditor.com/4.15.0/full/ckeditor.js"></script>
    <!-- Include this in your blade layout -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Select2 JS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <!-- Suggest tag -->
    <link rel="stylesheet" href="{{url('suggesttag/css/amsify.suggestags.css')}}">
    <!-- Charting library -->
    <script src="https://unpkg.com/echarts/dist/echarts.min.js"></script>
    <!-- Chartisan -->
    <script src="https://unpkg.com/@chartisan/echarts/dist/chartisan_echarts.js"></script>
</head>
<body style="font-family: IranYekan" class="hold-transition sidebar-mini layout-fixed">
@include('sweet::alert')
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
{{--            <li class="nav-item">--}}
{{--                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>--}}
{{--            </li>--}}
{{--            <li class="nav-item d-none d-sm-inline-block">--}}
{{--                <a href="index3.html" class="nav-link">Home</a>--}}
{{--            </li>--}}
{{--            <li class="nav-item d-none d-sm-inline-block">--}}
{{--                <a href="#" class="nav-link">Contact</a>--}}
{{--            </li>--}}
        </ul>

        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
{{--            <div class="input-group input-group-sm">--}}
{{--                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">--}}
{{--                <div class="input-group-append">--}}
{{--                    <button class="btn btn-navbar" type="submit">--}}
{{--                        <i class="fas fa-search"></i>--}}
{{--                    </button>--}}
{{--                </div>--}}
{{--            </div>--}}
        </form>

        <!-- Right navbar links -->
        <ul class="navbar-nav mr-auto-navbav">
            <!-- Messages Dropdown Menu -->
            <li class="nav-item dropdown">
{{--                <a class="nav-link" data-toggle="dropdown" href="#">--}}
{{--                    <i class="far fa-comments"></i>--}}
{{--                    <span class="badge badge-danger navbar-badge">3</span>--}}
{{--                </a>--}}
{{--                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">--}}
{{--                    <a href="#" class="dropdown-item">--}}
{{--                        <!-- Message Start -->--}}
{{--                        <div class="media">--}}
{{--                            <img src="{{URL::to('/')}}/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">--}}
{{--                            <div class="media-body">--}}
{{--                                <h3 class="dropdown-item-title">--}}
{{--                                    Brad Diesel--}}
{{--                                    <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>--}}
{{--                                </h3>--}}
{{--                                <p class="text-sm">Call me whenever you can...</p>--}}
{{--                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <!-- Message End -->--}}
{{--                    </a>--}}
{{--                    <div class="dropdown-divider"></div>--}}
{{--                    <a href="#" class="dropdown-item">--}}
{{--                        <!-- Message Start -->--}}
{{--                        <div class="media">--}}
{{--                            <img src="{{URL::to('/')}}/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">--}}
{{--                            <div class="media-body">--}}
{{--                                <h3 class="dropdown-item-title">--}}
{{--                                    John Pierce--}}
{{--                                    <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>--}}
{{--                                </h3>--}}
{{--                                <p class="text-sm">I got your message bro</p>--}}
{{--                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <!-- Message End -->--}}
{{--                    </a>--}}
{{--                    <div class="dropdown-divider"></div>--}}
{{--                    <a href="#" class="dropdown-item">--}}
{{--                        <!-- Message Start -->--}}
{{--                        <div class="media">--}}
{{--                            <img src="{{URL::to('/')}}/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">--}}
{{--                            <div class="media-body">--}}
{{--                                <h3 class="dropdown-item-title">--}}
{{--                                    Nora Silvester--}}
{{--                                    <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>--}}
{{--                                </h3>--}}
{{--                                <p class="text-sm">The subject goes here</p>--}}
{{--                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <!-- Message End -->--}}
{{--                    </a>--}}
{{--                    <div class="dropdown-divider"></div>--}}
{{--                    <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>--}}
{{--                </div>--}}
            </li>
            <!-- Notifications Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
{{--                    <i class="far fa-bell"></i>--}}
{{--                    <span class="badge badge-warning navbar-badge">15</span>--}}
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">15 Notifications</span>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-envelope mr-2"></i> 4 new messages
                        <span class="float-right text-muted text-sm">3 mins</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-users mr-2"></i> 8 friend requests
                        <span class="float-right text-muted text-sm">12 hours</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-file mr-2"></i> 3 new reports
                        <span class="float-right text-muted text-sm">2 days</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                </div>
            </li>
            <li class="nav-item">
{{--                <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">--}}
{{--                    <i class="fas fa-th-large"></i>--}}
{{--                </a>--}}
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="{{URL::to('/').Auth::user()->profile()}}" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{Auth::user()->name}}</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                                        <li class="nav-item">
                                            <a href="{{route('home')}}" class="nav-link @yield('home')">

                                                <i class="fas fa-home"></i>
                                                <p>
                                                    ????????
                                                </p>
                                            </a>
                                        </li>
                                        @if ((Auth::user()->isAdmin() && Auth::user()->can('Admin')) || Auth::user()->isSuperAdmin() )
                                        <li class="nav-item has-treeview ">
                                            <a href="#" class="nav-link @yield('admins')">
                                                <i class="fas fa-user-shield"></i>
                                                <p>
                                                    ????????????
                                                    <i class="right fas fa-angle-left"></i>
                                                </p>
                                            </a>
                                            <ul class="nav nav-treeview">
                                                <li class="nav-item">
                                                    <a href="{{route('admin.index')}}" class="nav-link @yield('admins_list')">
                                                        <p>???????? ????</p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="{{route('roles.index')}}" class="nav-link @yield('roles')">
                                                        <p>?????? ????</p>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        @endif
{{--                                        @if ((Auth::user()->isAdmin() && Auth::user()->can('Documents')) || Auth::user()->isSuperAdmin() )--}}
{{--                                            <li class="nav-item has-treeview ">--}}
{{--                                                <a href="#" class="nav-link @yield('Documents')">--}}
{{--                                                    <i class="fas fa-clipboard-list"></i>--}}
{{--                                                    <p>--}}
{{--                                                        ???????? ???????? ????--}}
{{--                                                        <i class="right fas fa-angle-left"></i>--}}
{{--                                                    </p>--}}
{{--                                                </a>--}}
{{--                                                <ul class="nav nav-treeview">--}}
{{--                                                        <li class="nav-item">--}}
{{--                                                            <a href="{{route('categories.index')}}" class="nav-link @yield('Document')">--}}
{{--                                                                <p>???????? ????????</p>--}}
{{--                                                            </a>--}}
{{--                                                        </li>--}}
{{--                                                </ul>--}}
{{--                                            </li>--}}
{{--                                        @endif--}}
                                        @if ((Auth::user()->isAdmin() && Auth::user()->can('User')) || Auth::user()->isSuperAdmin() )
                                            <li class="nav-item has-treeview ">
                                                <a href="#" class="nav-link @yield('User')">
                                                    <i class="fas fa-users"></i>
                                                    <p>
                                                        ???????????? ??????????????
                                                        <i class="right fas fa-angle-left"></i>
                                                    </p>
                                                </a>
                                                <ul class="nav nav-treeview">
                                                    <li class="nav-item">
                                                        <a href="{{route('users.index')}}" class="nav-link @yield('Users')">
                                                            <p>??????????????</p>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="{{route('userRoles.index')}}" class="nav-link @yield('userRoles??')">
                                                            <p>?????? ??????????????</p>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        @endif
                    @if ((Auth::user()->isAdmin() && Auth::user()->can('College')) || Auth::user()->isSuperAdmin() )
                        <li class="nav-item has-treeview ">
                            <a href="#" class="nav-link @yield('College')">
                                <i class="fas fa-school"></i>
                                <p>
                                    ???????????? ?????????????? ????
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{route('colleges.index')}}" class="nav-link @yield('Colleges')">
                                        <p>?????????????? ????</p>
                                    </a>
                                </li>
                                @foreach(\App\Models\College::all() as $college)
                                    <li class="nav-item">
                                        <a href="{{route('colleges.show',$college->id)}}" class="nav-link @yield("xr ")">
                                            <p>{{$college->name}}</p>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                        </li>
                    @endif
                    @if ((Auth::user()->isAdmin() && Auth::user()->can('Lesson')) || Auth::user()->isSuperAdmin() )
                        <li class="nav-item has-treeview ">
                            <a href="#" class="nav-link @yield('Lesson')">
                                <i class="fas fa-book-open"></i>
                                <p>
                                    ???????????? ????????
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{route('lessons.index')}}" class="nav-link @yield('Lessons')">
                                        <p>???????? ???????? ?????????? ??????</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{route('studentLessons.index')}}" class="nav-link @yield('StudentLessons')">
                                        <p>???????? ?????????????????? ???? ??????</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    @endif
                    @if ((Auth::user()->isAdmin() && Auth::user()->can('Form')) || Auth::user()->isSuperAdmin() )
                        <li class="nav-item has-treeview ">
                            <a href="#" class="nav-link @yield('Form')">
                                <i class="fas fa-clipboard-list"></i>
                                <p>
                                    ???????????? ?????? ????
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{route('forms.index')}}" class="nav-link @yield('Forms')">
                                        <p>?????? ?????? ??????????????</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{route('answers.index')}}" class="nav-link @yield('Answers')">
                                        <p>?????????? ???????? ????</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    @endif
{{--                    @if ((Auth::user()->isAdmin() && Auth::user()->can('Setting')) || Auth::user()->isSuperAdmin() )--}}
{{--                                            <li class="nav-item has-treeview ">--}}
{{--                                                <a href="#" class="nav-link @yield('Setting')">--}}
{{--                                                    <i class="fas fa-cogs"></i>--}}
{{--                                                    <p>--}}
{{--                                                        ??????????????--}}
{{--                                                        <i class="right fas fa-angle-left"></i>--}}
{{--                                                    </p>--}}
{{--                                                </a>--}}
{{--                                                <ul class="nav nav-treeview">--}}
{{--                                                    @foreach($setting_groups as $group)--}}
{{--                                                        <li class="nav-item">--}}
{{--                                                            <a href="{{route('settings.show',$group->id)}}" class="nav-link @yield($group->name)">--}}
{{--                                                                <p>{{$group->name}}</p>--}}
{{--                                                            </a>--}}
{{--                                                        </li>--}}
{{--                                                    @endforeach--}}
{{--                                                </ul>--}}
{{--                                            </li>--}}
{{--                                        @endif--}}
                                        <li >
                                            <a class="nav-link btn btn-danger" href="{{ route('logout') }}"
                                               onclick="event.preventDefault();
                                               document.getElementById('logout-form').submit();">
                                                <i class="fas fa-sign-out-alt"></i>
                                                <p>????????</p>
                                            </a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>

                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
        @yield('content')
    <!-- /.content-wrapper -->
    <footer class="main-footer" >
        <!-- To the right -->
        <!-- Default to the left -->
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="{{URL::to('/').'/plugins/jquery/jquery.min.js'}}"></script>

<!-- Bootstrap 4 -->
<script src="{{URL::to('/').'/plugins/bootstrap/js/bootstrap.bundle.min.js'}}"></script>

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<!-- AdminLTE App -->
<script src="{{URL::to('/').'/dist/js/adminlte.min.js'}}"></script>

<!-- jQuery -->
<script src="{{URL::to('/').'/plugins/datatables/jquery.dataTables.min.js'}}"></script>
<script src="{{URL::to('/').'/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'}}"></script>
<script src="{{URL::to('/').'/plugins/datatables-responsive/js/dataTables.responsive.min.js'}}"></script>
<script src="{{URL::to('/').'/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'}}"></script>
<script>
    $(function () {
      $("#table").DataTable({
        "responsive": true,
        "autoWidth": false,
          "rtl" : true,
          "language": {
              "paginate": {
                  "previous": "????????",
                  "next" : "????????"
              },
              "sLengthMenu": "?????????? ?????????? ???? ???????? _MENU_ ",
              "sSearch" : "??????????:",
              "emptyTable":     "?????? ???????? ???? ???????? ?????????? ?????????? ????????",
              "info":           "?????????? _START_ ???? _END_ ???? _TOTAL_ ??????????",
              "infoEmpty":      "?????????? 0 ???? 0 ???? 0 ??????????",

              "infoFiltered":   "(?????????? ?????????? ?????? _MAX_ ??????????)",
              "zeroRecords":    "???????????????? ???????? ???? ?????????? ?????? ?????????? ????????...",
          },



      });
    });
    $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })

    $(document).ready(function() {
        $('.js-example-basic-single').select2();
    });
  </script>

<script src="{{URL::to('/')}}/dist/js/demo.js"></script>
<!-- image uploader -->
<script type="text/javascript" src="{{URL::to('/')}}/image_uploader/image_uploader.min.js"></script>
<!-- Tags input -->
<script src="{{URL::to('/')}}/tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script src="{{URL::to('/')}}/tagsinput/dist/bootstrap-tagsinput/bootstrap-tagsinput-angular.min.js"></script>
<!-- CK Editor for all textarea -->
<script>
    $("textarea").each(function(){
        CKEDITOR.replace( this );
    });
</script>
<!-- Page script -->
<script src="{{url('suggesttag/js/jquery.amsify.suggestags.js')}}"></script>
@yield('js')

</body>
</html>
