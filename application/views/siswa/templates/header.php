<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= $title; ?> | Siswa</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/dist/css/skins/_all-skins.min.css">
  <!-- Data Table -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Pace style -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/plugins/pace/pace.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/select2/dist/css/select2.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<style>
  .sidebar-menu a {
    color: white;
  }

  .sidebar-menu a:hover {
    background-color: #ffc8dd;
    color: #333;
    font-weight: bold;
  }

  .sidebar-menu li {
    color: white;
  }

  .user-panel {
    color: white;
  }

  .navbar-custom-menu {
    background-color: #023e8a;
  }

  .navbar-custom-menu:hover {
    background-color: #8ecae6;
  }

  .main-header {
    background-color: #023e8a;
  }

  .sidebar-menu .header {
    background-color: #a2d2ff;
    color: #333;
    font-weight: bolder;
  }
</style>
<!-- ADD THE CLASS fixed TO GET A FIXED HEADER AND SIDEBAR LAYOUT -->
<!-- the fixed layout is not compatible with sidebar-mini -->

<body class="hold-transition skin-<?= $this->session->userdata('skin') ?> fixed">
  <!-- Site wrapper -->
  <div class="wrapper">

    <header class="main-header">
      <!-- Logo -->
      <a style="color: white; background-color:#023e8a;" href="<?= base_url('index.php/home') ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <!-- logo for regular state and mobile devices -->
        <span>SDN CIPARIGI</span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<?= base_url('assets/profil/') . $this->session->userdata('foto') ?>" class="user-image" alt="User Image">
                <span class="hidden-xs"><?= $this->session->userdata('nama') ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <img src="<?= base_url('assets/profil/') . $this->session->userdata('foto') ?>" class="img-circle" alt="User Image">

                  <p>
                    <?= $this->session->userdata('nama') ?>
                    <small><?= $this->session->userdata('username') . ' - ' . $this->session->userdata('level') ?></small>
                  </p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="<?= base_url('index.php/siswa/profil') ?>" class="btn btn-default btn-flat">
                      <div class="fa fa-user"></div> Profile
                    </a>
                  </div>
                  <div class="pull-right">
                    <a href="<?= base_url('index.php/home/logout') ?>" class="btn btn-default btn-flat tombol-yakin" data-isidata="Ingin keluar dari sistem ini?">
                      <div class="fa fa-sign-out"></div> Sign out
                    </a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="flash-data" data-flashdata="<?= $this->session->flashdata('pesan') ?>"></div>
    <!-- =============================================== -->