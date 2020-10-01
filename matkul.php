<section class="content">
    <div class="card">
        <div class="card-header">
            <h2><span class="card-title"><b>Mata Kuliah</b></span></h2><br>
           <div style="margin-left:0px">
           <form class="form-inline">
                <input type="hidden" name="m" value="matkul" />
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Pencarian. . ." name="q" value="<?=$_GET['q']?>" />
                </div>
                <div class="form-group">
                    <button class="btn btn-success"><i class="fa fa-sync-alt"></i> Refresh</a>
                </div>
                <div class="form-group">
                    <a class="btn btn-primary" href="?m=matkul_tambah"><i class="fa fa-plus" aria-hidden="true"></i>Tambah</a>
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
           
            <th>Kode Kuliah</th>
            <th>Mata Kuliah</th>
            <th>SKS</th>
            <th>Semester</th>
            <th>Aksi</th>
        </tr>
    </thead>
     <?php if ($_SESSION['kode_level'] == '1'){ 
        $q = esc_field($_GET['q']);
        $matkul_prodi = $_SESSION['kode_prodi'];
        $rows = $db->get_results("SELECT M.kode_matkul, M.nama_matkul,M.sks,M.kode_semester,M.kode_prodi,P.nama_prodi, S.nama_semester
         FROM tb_matkul M
            INNER JOIN tb_prodi P ON M.kode_prodi = P.kode_prodi 
            INNER JOIN tb_semester S ON M.kode_semester = S.kode_semester 
        WHERE M.kode_prodi = P.kode_prodi and S.kode_semester = M.kode_semester 
        ORDER BY kode_prodi");
            }else{
                $q = esc_field($_GET['q']);
                $matkul_prodi = $_SESSION['kode_prodi'];
                $rows = $db->get_results("SELECT * FROM tb_matkul 
                WHERE kode_prodi = '$matkul_prodi'
                ORDER BY kode_matkul");

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
        <td><?=$row->kode_matkul?></td>
        <td><?=$row->nama_matkul?></td>
        <td><?=$row->sks?></td>
        <td><?=$row->nama_semester?></td>
        <td class="nw">
            <a class="btn btn-xs btn-warning" href="?m=matkul_ubah&ID=<?=$row->kode_matkul?>"><i class="fa fa-edit"></i></a>
            <a class="btn btn-xs btn-danger" href="aksi.php?act=matkul_hapus&ID=<?=$row->kode_matkul?>" onclick="return confirm('Hapus data?')"><i class="fa fa-trash-alt" aria-hidden="true"></i></a>
        </td>
    </tr>
    <?php endforeach;
    ?>
    </table>
        </div>
    </div>
</section>