<?php
    $row = $db->get_row("SELECT * FROM tb_dosen WHERE kode_dosen='$_GET[ID]'"); 
?>

<section class="content">
  <div class="row">
    <div class="col-md-6">
     <?php if($_POST) include'aksi.php'?>
      <form method="post" action="?m=dosen_ubah&ID=<?=$row->kode_dosen?>">
         <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title"><b>Ubah Mata Dosen</b></h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            <div class="card-body">
                  <div class="form-group">
                    <label>Kode Dosen <span class="text-danger">*</span></label>
                    <input class="form-control" type="text" name="kode" readonly="readonly" value="<?=$row->kode_dosen?>"/>
                  </div>
                <div class="form-group">
                    <label>Nama Dosen <span class="text-danger">*</span></label>
                    <input class="form-control" type="text" name="nama" autocomplete="off" value="<?=$row->nama_dosen?>"/>
                </div>
                <div class="form-group">
                    <label>Keterangan</label>
                    <input class="form-control" type="text" name="keterangan" autocomplete="off" value="<?=$row->keterangan?>" />
                </div>  
                  
          <div class="card-footers">
              <button class="btn btn-primary"><i class="fa fa-save"></i> Simpan Perubahan</button>
              <a href="?m=dosen" class="btn btn-danger"><i class="fa fa-arrow-left"></i> Batal</a>        
          </div>
           </div>
        </div>
         </div>
     </form>
  </div>
</section>

