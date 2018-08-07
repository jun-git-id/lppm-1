<br>
<div class="w3-container w3-center">
    <h1><b>Berita Terbaru</b></h1>
</div>
<div class="w3-container" style="max-width: 400px; margin: auto; margin-top: 35px">
<?php foreach($berita as $berita) { ?>
    <div class="w3-card">
        <a href="<?php echo base_url('berita/read/'.$berita->slug_berita) ?>">
            <img class="w3-image" src="<?php echo base_url('assets/upload/image/'.$berita->gambar) ?>" / >
        </a>
        <div class="w3-container">
            <a href="<?php echo base_url('berita/read/'.$berita->slug_berita) ?>" style="text-decoration: none;"><h3><?php echo $berita->nama_berita ?></h3></a>
            <span class="w3-opacity"><i class="fa fa-calendar"></i> <?php echo date('d M Y',strtotime($berita->tanggal)) ?></span>
        </div>
        <div class="w3-container">
            <?php echo character_limiter($berita->keterangan,150) ?>
        </div>
    </div>
<?php } ?>
</div>
<br>