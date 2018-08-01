
<?php
// Error
if(isset($error)) {
	echo '<div class="alert alert-warning">';
	echo $error;
	echo '</div>';
}

// Validasi
echo validation_errors('<div class="alert alert-success">','</div>');

// Form
echo form_open_multipart('admin/hibah/tambah');
?>
<div class="col-md-12">
    <div class="form-group form-group-lg">
        <label>Nama Hibah</label>
        <input type="text" name="hibah_judul" placeholder="nama Hibah" value="<?php echo set_value('hibah_judul') ?>" required class="form-control">
    </div>
</div>


<div class="col-md-4">

    <div class="form-group">
        <label>File hibah <span class="text-danger small">*PDF|*DOCX|*XLSX</span></label>
        <input type="file" name="hibah_file" class="form-control" accept="application/msword, application/vnd.ms-excel, application/pdf" required>
    </div>
  </div>

<div class="col-md-12">
    <div class="form-group">
        <label>Keternagan</label>
        <textarea name="hibah_keterangan" class="form-control" placeholder="Keternagan"><?php echo set_value('hibah_keterangan') ?></textarea>
    </div>

    <div class="form-group">
        <button type="submit" name="submit" class="btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
        <button type="reset" name="reset" class="btn btn-warning"><i class="fa fa-repeat"></i> Reset</button>
        <button class="btn btn-danger" onclick="window.history.go(-1); return false;"><i class="fa fa-arrow-left"></i> Kembali</button>
    </div>

</div>

<?php echo form_close() ?>