<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row justify-content-center">
    <div class="col-lg-4">
        <div class="card card-outline card-lightblue">
            <div class="card-body">
                <div class="text-center">
                    <img class="profile-user-img img-fluid img-circle" src="<?= base_url() ?>/img/<?= userdata('image') ?>" alt="User-profile">
                </div>
                <h3 class="profile-username text-center"><?= userdata('username') ?></h3>
                <p class="text-muted text-center"><?= userdata('role'); ?></p>

                <ul class="list-group list-group-unbordered mb-3">
                    <li class="list-group-item">
                        <b><i class="fa fa-envelope"></i></b> Email
                        <a class="float-right text-muted"><?= userdata('email'); ?></a>
                    </li>
                    <li class="list-group-item">
                        <b><i class="fas fa-phone"></i></b> Phone
                        <a class="float-right text-muted"><?= userdata('no_telp'); ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header card-outline card-lightblue">
                <div class="row">
                    <div class="col d-flex">
                        <h3 class="card-title text-capitalize align-items-center">
                            Edit <?= $title; ?>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="/profile/update" method="POST" enctype="multipart/form-data">
                    <?= csrf_field(); ?>
                    <input type="hidden" name="user_id" value="<?= userdata('user_id'); ?>">
                    <div class="form-group">
                        <label for="nama_lengkap">Nama Lengkap</label>
                        <input type="text" value="<?= userdata('nama_lengkap') ?>" name="nama_lengkap" id="nama_lengkap" class="form-control <?= $validation->hasError('nama_lengkap') ? 'is-invalid' : ''; ?>" placeholder="Enter nama lengkap...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('nama_lengkap'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" value="<?= userdata('email'); ?>" name="email" id="email" class="form-control <?= $validation->hasError('email') ? 'is-invalid' : '' ?>" placeholder="Enter email...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('email'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="no_telp">No Handphone</label>
                        <input type="number" value="<?= userdata('no_telp'); ?>" name="no_telp" id="no_telp" class="form-control <?= $validation->hasError('no_telp') ? 'is-invalid' : '' ?>" placeholder="Enter nama lengkap...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('no_telp'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="image">Foto</label>
                        <input type="file" value="<?= userdata('image'); ?>" name="image" id="image" class="form-control <?= $validation->hasError('image') ? 'is-invalid' : '' ?>" placeholder="Enter nama lengkap...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('image'); ?>
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="submit" class="btn btn-info">Simpan</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<?= $this->endSection(); ?>