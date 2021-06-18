<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header card-outline card-info">
                    <div class="row">
                        <div class="col d-flex">
                            <h3 class="card-title text-capitalize align-items-center">
                                <?= $title; ?>
                            </h3>
                        </div>
                        <div class="col text-right">
                            <a href="/users" class="btn btn-outline-info btn-sm"><i class="fas fa-arrow-left"></i> Back</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <?= form_open('users/save'); ?>
                    <?= csrf_field(); ?>
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="hidden" name="user_id" value="<?= $kode; ?>">
                            <div class="form-group">
                                <label for="nama_lengkap">Full Name</label>
                                <input type="text" name="nama_lengkap" id="nama_lengkap" class="form-control <?= $validation->hasError('nama_lengkap') ? 'is-invalid' : '' ?>" placeholder="Enter fullname...">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('nama_lengkap'); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="text" name="email" id="email" class="form-control <?= $validation->hasError('email') ? 'is-invalid' : '' ?>" placeholder="Enter email address...">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('email'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" name="username" id="username" class="form-control <?= $validation->hasError('username') ? 'is-invalid' : '' ?>" placeholder="Enter username...">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('username'); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" class="form-control <?= $validation->hasError('password') ? 'is-invalid' : '' ?>" placeholder="Enter password...">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('password'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="no_telp">Phone Number</label>
                                <input type="number" name="no_telp" id="no_telp" class="form-control <?= $validation->hasError('no_telp') ? 'is-invalid' : '' ?>" placeholder="Enter phone number...">
                                <div class="invalid-feedback">
                                    <?= $validation->getError('no_telp'); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="role">Role</label>
                                <select name="role" id="role" class="form-control <?= $validation->hasError('role') ? 'is-invalid' : '' ?>">
                                    <option value="" selected>-- Pilih Hak Akses --</option>
                                    <option value="admin"><?= set_select('role', 'Admin') ?>Admin</option>
                                    <option value="karyawan"><?= set_select('role', 'Karyawan') ?>Karyawan</option>
                                </select>
                                <div class="invalid-feedback">
                                    <?= $validation->getError('role'); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="submit" class="btn btn-info">Simpan</button>
                    </div>
                    <?= form_close(); ?>
                </div>

            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>