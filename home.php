<?php
error_reporting(0);
session_start();
include_once 'include/voting-class.php';

$db = new Database();
$db->connectMySQL();

$user = new User();
$iduser = $_SESSION['id'];
if (!$user->get_sesi()){
  header("location:index.php");
}
if ($_GET['mod'] == 'logout'){
$user->logout();
  header("location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Pemilu OSIS SMA IT NH</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="asset/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="asset/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="datatables/jquery.dataTables.css">

    <script src="asset/js/jquery-latest.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="">KPU </a>
          <div class="nav-collapse collapse">
            <?php include 'menu.php'; ?>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container">
    <?php include 'isi.php'; ?>
    <footer class="well">
      <p>Pemilihan Calon Presiden dan Wakil Presiden OSIS SMAIT Nur Hidayah Masa Jihad 2017/2018 <?php echo substr($_SESSION['username'], 0, 1); ?><br/>
      </p>
    </footer>

    </div> <!-- /container -->
<script src="datatables/jquery-1.10.2.min.js"></script> <!-- Memasukkan plugin jQuery -->
<script src="datatables/jquery.dataTables.js"></script> <!-- Memasukkan file jquery.dataTables.js -->
<script>
$(document).ready(function() {
    $('#datatable').dataTable( {
        "pagingType": "full_numbers"
    } ); // Menjalankan plugin DataTables pada id contoh. id contoh merupakan tabel yang kita gunakan untuk menampilkan data
} );
</script>
  </body>
</html>
