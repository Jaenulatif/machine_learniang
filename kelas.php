<section class="content">
    <div class="card">
        <div class="card-header">
            <h2><span class="card-title"><b>Kelas</b></span></h2><br>
            <div style="margin-left:0px">
            <form class="form-inline">
                <input type="hidden" name="m" value="kelas" />
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Pencarian. . ." name="q" value="<?=$_GET['q']?>" />
                </div>
                <div class="form-group">
                    <button class="btn btn-success"><i class="fa fa-sync-alt"></i> Refresh</a>
                </div>
                <div class="form-group">
                    <a class="btn btn-primary" href="?m=kelas_tambah"><i class="fa fa-plus" aria-hidden="true"></i>Tambah</a>
                </div>
            </form>
           </div>
        </div>
        
       
        
    <div class="card-body">
    <table class="table table-sm table-bordered table-hover table-striped">
    <thead>
        <tr>
            <th>No</th>
           <?php if ($_SESSION['kode_level']=='1'): ?>
            <th>Prodi</th>
            <?php endif ?>
           
            <th>Nama Kelas  </th>
            <th>Keterangan</th>
            <th>Aksi</th>
        </tr>
    </thead>
     <?php if ($_SESSION['kode_level'] == '1'){ 
        $q = esc_field($_GET['q']);
        $ruang_prodi = $_SESSION['kode_prodi'];
        $rows = $db->get_results("SELECT K.kode_kelas, K.nama_kelas,K.kode_prodi,K.keterangan, P.nama_prodi
         FROM tb_kelas K 
            INNER JOIN tb_prodi P ON K.kode_prodi = P.kode_prodi 
        WHERE K.kode_prodi = P.kode_prodi 
        ORDER BY kode_prodi");
            }else{
                $q = esc_field($_GET['q']);
                $ruang_prodi = $_SESSION['kode_prodi'];
                $rows = $db->get_results("SELECT * FROM tb_kelas
                WHERE kode_prodi = '$ruang_prodi'
                ORDER BY kode_kelas");

            }
        ?>
    <?php


    
    $no=0;
    foreach($rows as $row):?>
    <tr>
        <td><?=++$no ?></td>
   <?php if ($_SESSION['kode_level']=='1'): ?>
         <td><?=$row->nama_prodi?></td>
    <?php endif ?>
        <td><?=$row->nama_kelas?></td>
        <td><?=$row->keterangan?></td>
        <td class="nw">
            <a class="btn btn-xs btn-warning" href="?m=kelas_ubah&ID=<?=$row->kode_kelas?>"><i class="fa fa-edit"></i></a>
            <a class="btn btn-xs btn-danger" href="aksi.php?act=kelas_hapus&ID=<?=$row->kode_kelas?>" onclick="return confirm('Hapus data?')"><i class="fa fa-trash-alt" aria-hidden="true"></i></a>
        </td>
    </tr>
    <?php endforeach;
    ?>
    </table>
        </div>
    </div>
</section>