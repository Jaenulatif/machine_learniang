<section class="content">
    <div class="card">
        <div class="card-header">
            <h2><span class="card-title"><b>Dosen</b></span></h2><br>
           <div style="margin-left:0px">
           <form class="form-inline">
                <input type="hidden" name="m" value="dosen" />
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Pencarian. . ." name="q" value="<?=$_GET['q']?>" />
                </div>
                <div class="form-group">
                    <button class="btn btn-success"><i class="fa fa-sync-alt"></i> Refresh</a>
                </div>
                <div class="form-group">
                    <a class="btn btn-primary" href="?m=dosen_tambah"><i class="fa fa-plus" aria-hidden="true"></i>Tambah</a>
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
           
            <th>Kode Dosen</th>
            <th>Nama Dosen</th>
            <th>Keteragan</th>
            <th>Aksi</th>
        </tr>
    </thead>
     <?php if ($_SESSION['kode_level'] == '1'){ 
        $q = esc_field($_GET['q']);
        $matkul_prodi = $_SESSION['kode_prodi'];
        $rows = $db->get_results("SELECT D.kode_dosen, D.nama_dosen,D.keterangan,D.kode_prodi,P.nama_prodi
         FROM tb_dosen D
            INNER JOIN tb_prodi P ON D.kode_prodi = P.kode_prodi 
        WHERE D.kode_prodi = P.kode_prodi 
        ORDER BY kode_prodi");
            }else{
                $q = esc_field($_GET['q']);
                $dosen_prodi = $_SESSION['kode_prodi'];
                $rows = $db->get_results("SELECT * FROM tb_dosen 
                WHERE kode_prodi = '$dosen_prodi'
                ORDER BY kode_dosen");

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
        <td><?=$row->kode_dosen?></td>
        <td><?=$row->nama_dosen?></td>
        <td><?=$row->keterangan?></td>
        <td class="nw">
            <a class="btn btn-xs btn-warning" href="?m=dosen_ubah&ID=<?=$row->kode_dosen?>"><i class="fa fa-edit"></i></a>
            <a class="btn btn-xs btn-danger" href="aksi.php?act=dosen_hapus&ID=<?=$row->kode_dosen?>" onclick="return confirm('Hapus data?')"><i class="fa fa-trash-alt" aria-hidden="true"></i></a>
        </td>
    </tr>
    <?php endforeach;
    ?>
    </table>
        </div>
    </div>
</section>