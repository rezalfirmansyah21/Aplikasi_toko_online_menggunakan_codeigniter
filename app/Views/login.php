<?= $this->extend('layout'); ?>
<?= $this->section('content'); ?>
<?php
$username = [
    'name' => 'username',
    'id' => 'username',
    'value' => null,
    'class' => 'form-control'
];

$password = [
    'name' => 'password',
    'id' => 'password',
    'class' => 'form-control'
];

?>
<div class="row">
    <div class="col-md-8">
        <h1>Login</h1>
        <?= form_open('Auth/login') ?>
        <div class="form-group mt-3">
            <?= form_label("Username", "username") ?>
            <?= form_input($username) ?>
        </div>
        <div class="form-group">
            <?= form_label("Password", "password") ?>
            <?= form_password($password) ?>
        </div>
        <div class="text-right">
            <?= form_submit('submit', 'Submit', ['class' => 'btn btn-dark']) ?>
        </div>
        <?= form_close() ?>
    </div>
    <div class="col-md-4 mt-3">
        <img class="rounded float-right" width="360px" alt="image" src="<?= base_url('img/logo.png') ?>">
    </div>
    <?= $this->endSection(); ?>
</div>