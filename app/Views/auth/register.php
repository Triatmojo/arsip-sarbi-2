<?= $this->extend('layout/auth'); ?>

<?= $this->section('content'); ?>
<!-- /.login-logo -->
<div class="card card-outline card-info">
    <div class="card-header text-center">
        <img src="http://localhost:8080/img/logo_besar.png" alt="Logo SIC" class="mw-100" style="height:50px">
        <div class="small text-center mt-2">
            Jl. Raya Taman Pagelaran No.2 Lt.2
            <br>
            Ciomas, Bogor - Jawa Barat
        </div>
    </div>
    <div class="card-body pb-2">
        <p class="login-box-msg small">Register Account</p>

        <?= form_open('auth/save', ['autocomplete' => "off"]); ?>
        <?= csrf_field(); ?>
        <input type="hidden" name="user_id" value="<?= $kode; ?>">
        <div class="form-group">
            <div class="input-group">
                <input value="<?= old('nama_lengkap') ?>" autofocus onfocus="this.select()" name="nama_lengkap" type="text" class="form-control <?= $validation->hasError('nama_lengkap') ? 'is-invalid' : '' ?>" placeholder="Nama Lengkap...">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-id-card"></span>
                    </div>
                </div>
                <div class="invalid-feedback">
                    <?= $validation->getError('nama_lengkap'); ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <input value="<?= old('email'); ?>" name="email" type="text" class="form-control <?= $validation->hasError('email') ? 'is-invalid' : '' ?>" placeholder="Email address...">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                    </div>
                </div>
                <div class="invalid-feedback">
                    <?= $validation->getError('email'); ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <input value="<?= old('no_telp'); ?>" name="no_telp" type="number" class="form-control <?= $validation->hasError('no_telp') ? 'is-invalid' : '' ?>" placeholder="Nomor Handphone...">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-phone"></span>
                    </div>
                </div>
                <div class="invalid-feedback">
                    <?= $validation->getError('no_telp'); ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <input value="<?= old('username'); ?>" name="username" type="text" class="form-control <?= $validation->hasError('username') ? 'is-invalid' : '' ?>" placeholder="Username...">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-user"></span>
                    </div>
                </div>
                <div class="invalid-feedback">
                    <?= $validation->getError('username'); ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <input type="password" name="password" class="form-control <?= $validation->hasError('password') ? 'is-invalid' : '' ?>" placeholder="Password...">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                    </div>
                </div>
                <div class="invalid-feedback">
                    <?= $validation->getError('password'); ?>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-info btn-block">Register</button>
        <?= form_close(); ?>
        <p class="small text-center text-muted pt-2">
            Already have an account? <br>
            <a href="<?= base_url(); ?>/auth">Sign In</a>
        </p>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->
<?= $this->endSection(); ?>