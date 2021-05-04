<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<h4>Transaksi ID <?= $transaksi->id ?></h4>
<table class="table">
    <tr>
        <td>Barang</td>
        <td><?= $transaksi->nama ?></td>
    </tr>
    <tr>
        <td>Pembeli</td>
        <td><?= $transaksi->username ?></td>
    </tr>
    <tr>
        <td>Alamat</td>
        <td><?= $transaksi->alamat ?></td>
    </tr>
    <tr>
        <td>Jumlah</td>
        <td><?= $transaksi->jumlah ?></td>
    </tr>
    <tr>
        <td>Total harga</td>
        <td><?= "Rp " . number_format($transaksi->total_harga, 2, ',', '.') ?></td>
    </tr>
</table>
<a href="<?= site_url('transaksi/index') ?>" class="btn btn-dark mt-3">Kembali</a>
<?= $this->endSection() ?>