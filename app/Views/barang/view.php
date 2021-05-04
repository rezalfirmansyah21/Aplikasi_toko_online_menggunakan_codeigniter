<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<div class="container">
    <h1>View Barang</h1>
    <div class="row">
        <div class="col-6">
            <div class="card">
                <div class="card-body">
                    <img class="rounded mx-auto d-block" width="400px" alt="image" src="<?= base_url('uploads/' . $barang->gambar) ?>">
                </div>
            </div>
        </div>
        <div class="col-6">
            <h1 class="text-dark"><?= $barang->nama ?></h1>
            <h4>Harga &nbsp;: <?= "Rp " . number_format($barang->harga, 2, ',', '.') ?></h4>
            <h4>Stok &nbsp; &nbsp; : <?= $barang->stok ?></h4>
        </div>
    </div>
    <a href="<?= site_url('barang/index') ?>" class="btn btn-dark mt-3">Kembali</a>
    <br><br>
</div>
<?= $this->endSection() ?>