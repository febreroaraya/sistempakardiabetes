<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h5 style="margin-left: 45%; margin-top: 20px; margin-bottom: 30px;">Laporan Hasil Diagnosa</h5>
        </div>
        <a href="<?= base_url('admin/laporan_diagnosa') ?>" style="margin-bottom: 30px;" class="btn btn-primary hidden-back"><i class="fa fa-chevron-circle-left"></i> Kembali</a>
        <button id="btnPrint" style="margin-left: 10px; margin-bottom: 30px;" class="btn btn-info hidden-print"><i class="fa fa-print"></i> Cetak</button>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">Nama</th>
                    <th scope="col">Jenis Kelamin</th>
                    <th scope="col">Usia</th>
                    <th scope="col">Alamat</th>
                    <th scope="col">Penyakit</th>
                    <th scope="col">Tanggal Diagnosa</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($laporan as $l) { ?>
                    <tr>
                        <td><?= $l->nama ?></td>
                        <td><?= $l->jenis_kelamin ?></td>
                        <td><?= $l->usia ?></td>
                        <td><?= $l->alamat ?></td>
                        <td><?= $l->nm_penyakit ?></td>
                        <td><?= $l->tgl_diagnosa ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>
<style>
    @media print {

        .hidden-print,
        .hidden-print * {
            display: none !important;
        }

        .hidden-back,
        .hidden-back * {
            display: none !important;
        }
    }
</style>
<script>
 const $btnPrint = document.querySelector("#btnPrint");
    $btnPrint.addEventListener("click", () => {
        window.print();
    }); 
</script>
</html>