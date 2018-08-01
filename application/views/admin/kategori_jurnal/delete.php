<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#Delete<?php echo $kategori_jurnal->id_kategori_jurnal ?>">
  <i class="fa fa-trash-o"></i>
</button>
<div class="modal fade" id="Delete<?php echo $kategori_jurnal->id_kategori_jurnal ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Hapus Kategori Jurnal</h4>
            </div>
            <div class="modal-body">

			<p class="alert alert-success">Yakin ingin menghapus kategori jurnal ini?</p>

            </div>
            <div class="modal-footer">
            	
                <a href="<?php echo base_url('admin/kategori_jurnal/delete/'.$kategori_jurnal->id_kategori_jurnal) ?>" class="btn btn-danger"><i class="fa fa-trash-o"></i> Ya, Hapus</a>
                
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
