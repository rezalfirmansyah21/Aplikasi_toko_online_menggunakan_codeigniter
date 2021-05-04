<html>

<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #000000;
            text-align: center;
        }
    </style>
</head>

<body>
    <div style="font-size:64px; color:'#dddddd' "><i>Invoice</i></div>
    <p>
        <i>Refir Online Shop</i><br>
        Jakarta, Indonesia <br>
        02198765677
    </p>
    <p>
        Pembeli &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <?= $pembeli->username ?><br>
        Alamat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <?= $transaksi->alamat ?><br>
        Transaksi No : <?= $transaksi->id ?><br>
        Tanggal &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; : <?= date('d-m-Y', strtotime($transaksi->created_date)) ?>
    </p>
    <table cellpadding="10">
        <tr>
            <th><strong>Barang</strong></th>
            <th><strong>Harga satuan</strong></th>
            <th><strong>Jumlah</strong></th>
            <th><strong>Ongkir</strong></th>
            <th><strong>Total harga</strong></th>
        </tr>
        <tr>
            <td><?= $barang->nama ?></td>
            <td><?= "Rp " . number_format($barang->harga, 2, ',', '.') ?></td>
            <td><?= $transaksi->jumlah ?></td>
            <td><?= "Rp " . number_format($transaksi->ongkir, 2, ',', '.') ?></td>
            <td><?= "Rp " . number_format($transaksi->total_harga, 2, ',', '.') ?></td>
        </tr>
    </table>
</body>

</html>