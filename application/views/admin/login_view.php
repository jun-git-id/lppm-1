<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?php echo $title ?></title>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- FONTAWESOME STYLES-->
  <link href="<?php echo base_url() ?>assets/admin/assets/css/font-awesome.css" rel="stylesheet" />
  <!-- GOOGLE FONTS-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <style>
  body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
  .w3-bar,h1,button {font-family: "Open Sans", sans-serif}
  .fa-anchor,.fa-coffee {font-size:200px}
</style>

</head>
<body class="w3-light-grey">

  <div class="w3-container" style="max-width: 400px; margin: auto; margin-top:35px" >
    <div class="w3-card w3-white w3-round-large">
      <div class="w3-padding w3-center">
        <h2> <?php echo $title ?></h2>
        <strong>Masukkan Username Password </strong>  
      </div>
     <hr>

      <?php
      if($this->session->flashdata('sukses')) {
       echo '<div class="w3-padding w3-green">';
       echo $this->session->flashdata('sukses');
       echo '</div>';
     }

      // Cetak validasi error
     echo validation_errors('<div class="w3-padding w3-red">','</div>');
     ?>
       <form role="form" method="post" action="<?php echo base_url('login') ?>">
     <div class="w3-padding">
         <br />
         <label><b>Username</b></label>
         <input type="text" name="username" class="w3-input w3-border" placeholder="Your Username " />
         <br />
         <label><b>Password</b></label>
         <input type="password" name="password" class="w3-input w3-border"  placeholder="Your Password" />
         <br />
       </div>
       <div class="w3-padding">
         <button type="submit" name="submit" class="w3-btn w3-green"><i class="fa fa-lock"></i> Masuk</button>
         <button class="w3-btn w3-red w3-right" onclick="window.history.go(-1); return false;"><i class="fa fa-home"></i> Kembali</button>
       </form>
     </div>
   </div>

 </div>
</div>


</div>
</div>


<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="<?php echo base_url() ?>assets/admin/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="<?php echo base_url() ?>assets/admin/assets/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="<?php echo base_url() ?>assets/admin/assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="<?php echo base_url() ?>assets/admin/assets/js/custom.js"></script>

</body>
</html>
