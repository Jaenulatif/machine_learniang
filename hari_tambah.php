
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Tambah Hari</h3>
                    </div>
                     <?php if($_POST) include'aksi.php'?>
                    <form method="post" action="?m=hari_tambah">
                        <div class="card-body">

                            <div class="form-group">
                               <label>Nama Hari <span class="text-danger">*</span></label>
                               <input class="form-control" type="text" name="nama" autocomplete="off" value="<?=addslashes($_POST["nama"])?>"/>
                            </div>

                            <div class="form-group">
                                <?php if ($_SESSION['kode_level']=='1'): ?>
                                    <label>Kode Prodi </label>
                                    <select class="form-control" name="kode_prodi">
                                        <option value=""></option>
                                        <?=AG_get_prodi_option($_POST[kode_prodi])?>
                                    </select>
                                <?php else: ?>
                               <!--  <label>Kode Prodi </label> -->
                                    <input class="form-control" type="text" name="kode_prodi" hidden readonly="readonly" value="<?=$_SESSION['kode_prodi']  ?>"/>
                                <?php endif ?>
                            </div>
                            <div class="form-grup">
                            <!--       <label>Kode <span class="text-danger">*</span></label> -->
                                 <input class="form-control" type="hidden"  name="kode" value="<?=addslashes($_POST["kode"])?>"/>
                            </div>

                            <div class="card-footer">
                                 <button class="btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
                                    <a class="btn btn-danger" href="?m=hari"><i class="fa fa-arrow-left"></i> Kembali</a>
                            </div>
                        </div>                
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>