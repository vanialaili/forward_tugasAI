<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="SISTEM PAKAR DIAGNOSA PENYAKIT COVID 19">
    <link rel="icon" href="">

    <title>SISTEM PAKAR DIAGNOSA PENYAKIT COVID 19</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/justified-nav.css" rel="stylesheet">
  </head>

  <body>

<?php include "header2.php"; ?>

      <main role="main">
      
<?php include 'koneksi.php';?>      
<center style="background-color: powderblue;">
<img src="hd1.jpg" width="1350" height="250" style="margin-top: 0px; margin-left: 0px; margin-bottom: 10px;" />
<div class="card-body">
  <form class="col-6" method="POST" action="proses.php">
      <div style="overflow: scroll; height: 500px;">
          <?php
            $qry="select * from tb_gejala";
            $data=mysqli_query($kon,$qry);
            while ($d=mysqli_fetch_array($data)) 
            {
          ?>
            <div class="input-group mb-3">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <input type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>" name="<?=$d['id']?>">
              </div>
            </div>
            <input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>">
          </div>
        <?php
            }
        ?>
      </div>
    <input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="submit">
  </form>
  </div>
</center>
