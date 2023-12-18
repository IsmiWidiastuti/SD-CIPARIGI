<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= $title; ?></title>
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
  <!-- iCheck -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/plugins/iCheck/square/blue.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<style>
  body {
    background-color: #023e8a;
  }

  .login-box {
    width: 400px;
    margin: auto;
    margin-top: 5%;
  }

  .login-logo img {
    width: 50%;
    display: block;
    margin: 0 auto;
  }

  .login-logo a {
    color: #fff;
    font-size: 20px;
    text-align: center;
    display: block;
    margin-top: 10px;
  }

  .login-box-body {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  .login-box-msg {
    text-align: center;
    font-size: 18px;
  }

  .form-group {
    margin-bottom: 20px;
  }

  .form-control {
    border-radius: 3px;
    box-shadow: none;
    border-color: #d2d6de;
  }

  .form-control-feedback {
    color: #777;
  }

  hr {
    margin-top: 20px;
    margin-bottom: 20px;
  }

  .btn-primary {
    background-color: #337ab7;
    border-color: #2e6da4;
  }

  .btn-primary:hover {
    background-color: #286090;
    border-color: #204d74;
  }

  .checkbox {
    margin-top: 10px;
  }
</style>


<body style="background-color:#023e8a;" class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <?php foreach ($aplikasi->result_array() as $row) { ?>
        <center><img src="<?= base_url('assets/logo/') . $row['logo'] ?>" alt="" class="img-responsive" width="50%"></center>
        <a href="<?= base_url('index.php/home') ?>"><b><?= $row['nama'] ?></b></a>
      <?php } ?>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
      <div class="flash-data" data-flashdata="<?php echo $this->session->flashdata('pesan') ?>"></div>
      <p class="login-box-msg">Masukkan username dan password</p>

      <form action="<?= base_url('index.php/home/auth') ?>" method="POST">
        <div class="form-group has-feedback">
          <input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
          <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
          <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <hr>
        <?= $captcha; ?>
        <div class="form-group">
          <input type="text" class="form-control" name="jawaban" placeholder="Hitung angka diatas">
        </div>
        <div class="row">
          <div class="col-xs-8">
            <input type="checkbox" id="checkbox"> Show Password
          </div>
          <!-- /.col -->
          <div class="col-xs-4">
            <button type="submit" class="btn btn-primary btn-block btn-flat">
              <div class="fa fa-sign-in"></div> Sign In
            </button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <!-- <a href="<?= base_url('index.php/home/register') ?>" class="text-center">Register a new membership</a> -->
    </div>
    <!-- /.login-box-body -->
  </div>
  <!-- /.login-box -->

  <!-- Sweet Alert -->
  <script src="<?= base_url('assets') ?>/bower_components/sweetalert/sweetalert.min.js"></script>
  <!-- jQuery 3 -->
  <script src="<?= base_url('assets') ?>/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?= base_url('assets') ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="<?= base_url('assets') ?>/plugins/iCheck/icheck.min.js"></script>
  <script>
    // Notifikasi
    const flashData = $('.flash-data').data('flashdata');
    if (flashData) {
      swal({
        title: "Failed!",
        text: flashData,
        icon: "error",
      });
    }

    // Sow Password
    $(document).ready(function() {
      $('#checkbox').click(function() {
        if ($(this).is(':checked')) {
          $('#password').attr('type', 'text');
        } else {
          $('#password').attr('type', 'password');
        }
      });
    });
  </script>
</body>

</html>