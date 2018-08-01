<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
<ul class="nav" id="main-menu">
    <img src="<?php echo base_url('assets/upload/image/'.$site['logo']); ?>" class="user-image img-responsive"/>

    <?php if ($this->session->userdata('akses_level') == 'Admin') { ?>
    <!-- Dasbor --> 
    <li><a href="<?php echo base_url('admin/dasbor') ?>" <?php if($this->uri->segment(2) == 'dasbor'){echo 'class="active-menu"';} ?>><i class="fa fa-dashboard"></i> Dasbor</a></li> 
    <?php } ?>  

    
    <?php if ($this->session->userdata('akses_level') == 'Dosen') { ?>
    <!-- jika akses Dosen -->
    <!-- Hibah per pemberi-->    
   <li>
    <a href="#" <?php if($this->uri->segment(2) == 'hibah'){echo 'class="active-menu"';} ?>><i class="fa fa-book"></i> Hibah<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/hibah/detailall/')?>">Data Hibah</a></li>
            <li><a href="<?php echo base_url('admin/hibah/tambah')?>">Tambah Hibah</a></li>
        </ul>
    </li> 
    <?php } ?>  


    <?php if ($this->session->userdata('akses_level') == 'Admin') { ?>
    <!-- Jika Akses admin -->
    <!-- Hibah -->    
   <li>
    <a href="#" <?php if($this->uri->segment(2) == 'hibah'){echo 'class="active-menu"';} ?>><i class="fa fa-book"></i> Hibah<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/hibah')?>">Data Hibah</a></li>
            <li><a href="<?php echo base_url('admin/hibah/tambah')?>">Tambah Hibah</a></li>
        </ul>
    </li> 

    <!-- Berita -->           
   <li>
    <a href="#" <?php if($this->uri->segment(2) == 'berita'){echo 'class="active-menu"';} ?>><i class="fa fa-newspaper-o"></i> Berita<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/berita')?>">Data Berita</a></li>
            <li><a href="<?php echo base_url('admin/berita/tambah')?>">Tambah Berita</a></li>
            <li><a href="<?php echo base_url('admin/kategori_berita')?>">Kategori Berita</a></li>
        </ul>
    </li>
    

    <!-- Modul Video -->
    <li>
        <a href="#" <?php if($this->uri->segment(2) == 'video'){echo 'class="active-menu"';} ?>><i class="fa fa-film"></i> Video<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/video')?>">Data Video</a></li>
            <li><a href="<?php echo base_url('admin/video/tambah')?>">Tambah Video</a></li>
        </ul>
    </li> 
    
    <!-- Modul User -->
    <li>
        <a href="#" <?php if($this->uri->segment(2) == 'user'){echo 'class="active-menu"';} ?>><i class="fa fa-users"></i> User/Administrator<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/user')?>">Data User/Administrator</a></li>
            <li><a href="<?php echo base_url('admin/user/tambah')?>">Tambah User/Admin</a></li>
        </ul>
    </li> 
    
    <!-- Modul Konfigurasi -->
    <li>
        <a href="#" <?php if($this->uri->segment(3) == 'konfigurasi' | $this->uri->segment(3) == 'logo'| $this->uri->segment(3) == 'icon' | $this->uri->segment(3) == 'quote'){echo 'class="active-menu"';} ?>><i class="fa fa-wrench"></i> Konfigurasi Website<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/dasbor/konfigurasi')?>">Konfigurasi Umum</a></li>
            <li><a href="<?php echo base_url('admin/dasbor/logo')?>">Ganti Logo</a></li>
            <li><a href="<?php echo base_url('admin/dasbor/icon')?>">Ganti Icon</a></li>
            <li><a href="<?php echo base_url('admin/dasbor/quote')?>">Quote</a></li>
        </ul>
    </li>
    <?php } ?>  
 
</ul>

</div>

</nav>  
<!-- /. NAV SIDE  -->
<div id="page-wrapper" >
<div id="page-inner">
<div class="row">
    <div class="col-md-12">
     <h2><?php echo $title?></h2>         
    </div>
</div>
 <!-- /. ROW  -->
 <hr />

<div class="row">
<div class="col-md-12">
    <!-- Advanced Tables -->
    <div class="panel panel-default">
            <div class="panel-body">
            <div class="table-responsive">
