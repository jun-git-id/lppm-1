<!DOCTYPE html>
<html>
<title>LPPM Nusa Putra University</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/custom.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>

  <!-- Navbar -->
  <div class="w3-top">
    <div class="w3-bar w3-npu w3-card w3-left-align w3-large">
      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-npu" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
      <!-- <a href="#" class="w3-padding-large w3-bar-item w3-button w3-hover-white w3-hide-small"><strong>LPPM Nusa Putra University</strong></a> -->
      <a href="#" class="w3-padding-large w3-bar-item w3-button w3-hover-white w3-hide-large"><strong>LPPM Nusa Putra</strong></a>
      <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Tentang</a>
      <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Penelitian</a>
      <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Pengabdian Masyarakat</a>
      <div class="w3-dropdown-hover w3-hide-small w3-hover-white">
        <button class="w3-padding-large w3-button" title="More">Hibah <i class="fa fa-caret-down"></i></button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
         <a href="<?php echo base_url('login') ?>" class="w3-bar-item w3-button">Hibah Internal</a>
         <a href="#" class="w3-bar-item w3-button">Hibah External</a>
       </div>
     </div>
     <div class="w3-dropdown-hover w3-hide-small w3-hover-white">
        <button class="w3-padding-large w3-button" title="More">Event <i class="fa fa-caret-down"></i></button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
         <a href="https://goo.gl/forms/GCUidioTMsmq3ZZ03" target="_blank" class="w3-bar-item w3-button">Registrasi Event</a>
       </div>
     </div>
   </div>

   <!-- Navbar on small screens -->
   <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Tentang</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Penelitian</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Pengabdian Masyarakat</a>
    <div class="w3-dropdown-hover w3-hover-white">
        <button class="w3-padding-large w3-button" title="More">Hibah <i class="fa fa-caret-down"></i></button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
         <a href="<?php echo base_url('login') ?>" class="w3-bar-item w3-button">Hibah Internal</a>
         <a href="#" class="w3-bar-item w3-button">Hibah External</a>
       </div>
     </div>
    <div class="w3-dropdown-hover w3-hover-white">
        <button class="w3-padding-large w3-button" title="More">Event <i class="fa fa-caret-down"></i></button>     
        <div class="w3-dropdown-content w3-bar-block w3-card-4">
         <a href="https://goo.gl/forms/GCUidioTMsmq3ZZ03" target="_blank" class="w3-bar-item w3-button">Registrasi Event</a>
       </div>
     </div>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-npu w3-center" style="padding:128px 16px">
  <img src="<?php echo base_url() ?>/assets/logo/lppm.png" class="w3-image">
  <!-- <p class="w3-xlarge">Nusa Putra University</p> -->
  <p class="w3-xlarge"> Email: <a href="mailto:lppm@nusaputra.ac.id" target="_blank">lppm@nusaputra.ac.id</a></p>
  <!-- <a href="<?php echo base_url('login') ?>" class="w3-button w3-white w3-padding-large w3-large w3-margin-top"><i class="fa fa-lock"></i> LOGIN</a> -->
</header>

<?php include 'berita.php'; ?>

  <!-- Footer -->
  <footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey">  
    <div class="w3-xlarge w3-padding-32">
      <i class="fa fa-facebook-official w3-hover-opacity"></i>
      <i class="fa fa-instagram w3-hover-opacity"></i>
      <i class="fa fa-snapchat w3-hover-opacity"></i>
      <i class="fa fa-pinterest-p w3-hover-opacity"></i>
      <i class="fa fa-twitter w3-hover-opacity"></i>
      <i class="fa fa-linkedin w3-hover-opacity"></i>
    </div>
    <p> Copyright <a href="http://:lppm.nusaputra.ac.id" target="_blank">lppm.nusaputra.ac.id</a></p>
  </footer>

  <script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>
