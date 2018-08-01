<p>
<a href="<?php echo base_url('admin/hibah/tambah') ?>" class="btn btn-primary">
<i class="fa fa-plus"></i> Tambah</a>
</p>

<?php
// Notifikasi
if($this->session->flashdata('sukses')) {
    echo '<div class="alert alert-success">';
    echo $this->session->flashdata('sukses');
    echo '</div>';
}

// Error
echo validation_errors('<div class="alert alert-success">','</div>');
?>

<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
    <tr>
        <th>#</th>
        <th>Judul</th>
        <th>File</th>
        <th>Pemberi</th>
        <th>Tanggal Kirim</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
<?php $i=1; foreach($hibah as $hibah) { ?>
    <tr class="odd gradeX">
        <td><?php echo $i ?></td>
        <td><?php echo $hibah->hibah_judul ?></td>
        <td>
        <a href="<?php echo base_url('uploads/hibah/'.$hibah->hibah_file) ?>" target="_blank"><?php echo $hibah->hibah_file; ?></a>
        </td>
        <td><?php echo $hibah->nama ?></td>
        <td><?php echo $hibah->tanggal ?></td>
        <td>
        <a href="<?php echo base_url('admin/hibah/edit/'.$hibah->hibah_id) ?>"class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></a>
        
        <?php include('delete.php') ?>
        
        </td>
    </tr>
<?php $i++; } ?>
</tbody>
</table>