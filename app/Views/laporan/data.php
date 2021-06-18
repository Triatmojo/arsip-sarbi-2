<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>

<div class="row">
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?> Karyawan</h3>
            </div>
            <div class="card-body card-outline-info">
                <?php form_open(); ?>
                <div class="form-group">
                    <label for="tanggal">Tanggal</label>
                    <div class="input-group mb-3">
                        <input value="<?= set_value('tanggal', date('Y-m-d')) ?>" name="tanggal" id="tanggal" type="text" class="form-control">
                        <div class="input-group-append">
                            <button class="btn btn-info" type="button" id="button-addon2">Filter</button>
                        </div>
                    </div>
                </div>
                <?php form_close(); ?>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-body card-outline-info">
                <table class="table table-hover table-striped" id="browse">
                    <thead class="text-secondary">
                        <tr>
                            <th>No.</th>
                            <th>Nama Dokumen</th>
                            <th>PT</th>
                            <th>Folder</th>
                            <th>Karyawan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
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