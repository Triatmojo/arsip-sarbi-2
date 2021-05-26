<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row justify-content-lg-center">
        <div class="col-lg-6 col-md-6">
            <div class="card ">
                <div class="card-header card-outline card-info">
                    <div class="row">
                        <div class="col d-flex">
                            <h3 class="card-title text-capitalize align-items-center">
                                <?= $title; ?>
                            </h3>
                        </div>
                        <div class="col text-right">
                            <a href="/home" class="btn btn-outline-info btn-sm"><i class="fas fa-arrow-left"></i> Back</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <?= form_open('auth/changePassword'); ?>
                    <?= csrf_field(); ?>
                    <div class="form-group">
                        <label for="old_password">Enter Old Password</label>
                        <input type="password" name="old_password" id="old_password" class="form-control <?= $validation->hasError('old_password') ? 'is-invalid' : '' ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('old_password'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Enter New Password</label>
                        <input type="password" name="password" id="password" class="form-control <?= $validation->hasError('password') ? 'is-invalid' : '' ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('password'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password2">Confirm New Password</label>
                        <input type="password" name="password2" id="password2" class="form-control <?= $validation->hasError('password2') ? 'is-invalid' : '' ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('password2'); ?>
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="reset" class="btn btn-default">Reset</button>
                        <button type="submit" class="btn btn-info">Change Password</button>
                    </div>
                    <?= form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>