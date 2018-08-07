
  <!-- Blog entry -->
  <div class="w3-white" style="max-width: 1000px; margin: auto; margin-top: 35px">
  	<div class="w3-margin w3-card-4 ">
	    <img src="<?php echo base_url('assets/upload/image/'.$read->gambar) ?>" alt="Nature" style="width:100%">
	    <div class="w3-container">
	      <h3><b><?php echo $title ?></b></h3>
	      <h5><i class="fa fa-calendar"></i> <span class="w3-opacity"><?php echo date('d M Y',strtotime($read->tanggal)) ?></span></h5>
	    </div>
	    <div class="w3-container">
	      <p><?php echo $read->keterangan ?></p>
	    </div>
	    <br>
	</div>
  </div>
  <hr>
