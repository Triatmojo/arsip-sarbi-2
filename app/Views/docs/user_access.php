<?= $this->extend('layout/karyawan'); ?>
<?= $this->section('content'); ?>

<div class="row justify-content-center">
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $folder['folder_name']; ?></h3>
                <div class="card-tools">
                    <a href="<?= base_url(); ?>/docs/<?= $folder['folder_id']; ?>" class="btn btn-xs btn-default">Kembali</a>
                </div>
            </div>
            <?= form_open('docs/save_user_access'); ?>
            <?= csrf_field(); ?>
            <div class="card-body">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fa fa-link"></i></div>
                    </div>
                    <input type="text" readonly id="link" value="<?=$link?>" class="form-control">
                </div>
                <input type="hidden" name="folder_id" value="<?= $folder['folder_id']; ?>">
                <div class="form-group mb-0">
                    <label for="user_id">Share to</label>
                    <select required multiple name="user_id[]" id="user_id[]" class="select2 form-control">
                        <?php foreach ($user as $u) : ?>
                            <option value="<?= $u['user_id']; ?>" <?= in_array($u['user_id'], $shared) ? "selected":""; ?>><?= $u['nama_lengkap']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Share</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>