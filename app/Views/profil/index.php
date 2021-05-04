<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1 class="text-center">Welcome
    <?php
    echo session()->get('username');
    ?>
</h1>
<img class="rounded mx-auto d-block mt-3" width="500px" alt="image" src="<?= base_url('img/logo.png') ?>">
<?= $this->endSection() ?>