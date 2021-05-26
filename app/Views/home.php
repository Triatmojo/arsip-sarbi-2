<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <h3 style="color:#303030; font-size:32px">Welcome <?= userdata('nama_lengkap'); ?></h3>
                        <p class="font-weight-light" style="color: #535f6b"> You have <strong><?= count($count); ?></strong> new notifications</p>
                    </div>
                    <div class="col-lg-6">
                        <div class="text-right">
                            <img src="<?= base_url() ?>/ilustrator_2.png" class="icon w-50" alt="ilustrator.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php if (is_admin()) : ?>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box">
                <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-folder text-white"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Folders</span>
                    <span class="info-box-number">
                        <?= $folder ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box">
                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-file text-white"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Files</span>
                    <span class="info-box-number">
                        <?= $file; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box">
                <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Employes</span>
                    <span class="info-box-number">
                        <?= $user; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
        </div>
    </div>
<?php endif; ?>
<?= $this->endSection(); ?>