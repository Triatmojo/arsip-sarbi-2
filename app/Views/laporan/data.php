<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>

<div class="row">
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?> Karyawan</h3>
            </div>
            <div class="card-body card-outline-info">
                <?= form_open('laporan/search'); ?>
                <?= csrf_field(); ?>
                <div class="form-group">
                    <label for="tanggal">Tanggal</label>
                    <div class="input-group mb-3">
                        <input value="<?= set_value('tanggal', date('Y-m-d')) ?>" name="tanggal" id="tanggal" type="text" class="form-control">
                        <div class="input-group-append">
                            <button class="btn btn-info" type="submit">Filter</button>
                        </div>
                    </div>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-body card-outline-info">
                <table class="table table-hover table-striped table-light" id="datatable">
                    <thead class="text-secondary">
                        <tr>
                            <th>No.</th>
                            <th>Perusahaan</th>
                            <th>PHP/VLK</th>
                            <th>Dokumen</th>
                            <th>User</th>
                            <th>Tanggal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($periode) : ?>
                            <?php
                            $no = 1;
                            foreach ($periode as $p) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= getFolderName($p['folder_parent']); ?></td>
                                    <td><?= $p['kategori_nama'];  ?></td>
                                    <td><?= substr($p['jenis_nama'], 0, 40);  ?>...</td>
                                    <td><?= $p['nama_lengkap'] ?></td>
                                    <td><?= date('Y-m-d', strtotime($p['created_at'])); ?></td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>

<?= $this->endSection(); ?>

<?php $this->section('addons'); ?>
<script>
    $(document).ready(function() {
        $('#browse').DataTable({
            "scrollCollapse": true,
            "scrollY": "50vh",
            "pagging": false
        })
    });
</script>
<?php $this->endSection(); ?>