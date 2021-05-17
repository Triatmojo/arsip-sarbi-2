<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <h3 style="color:#303030; font-size:32px">Welcome <?= userdata('nama_lengkap'); ?></h3>
                        <p class="font-weight-light" style="color: #535f6b"> You have 32 new notifications</p>
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
<?= $this->endSection(); ?>