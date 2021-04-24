<?= $this->extend('layout/admin'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header card-outline card-teal">
                    <div class="row">
                        <div class="col d-flex">
                            <h3 class="card-title text-capitalize align-items-center">
                                <?= $title; ?>
                            </h3>
                        </div>
                        <div class="col text-right">
                            <a href="/dokumen" class="btn btn-outline-info btn-sm"><i class="fas fa-arrow-left"></i> Back</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <?= form_open('dokumen/save'); ?>
                    <?= csrf_field(); ?>
                    <div class="form-group">
                        <label for="folder_name">Nama Folder</label>
                        <input type="text" name="folder_name" id="folder_name" class="form-control <?= $validation->hasError('folder_name') ? 'is-invalid' : '' ?>" placeholder="Enter folder name...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('folder_name'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="type_folder">Akses Folder</label>
                        <select name="type_folder" id="type_folder" class="form-control <?= $validation->hasError('type_folder') ? 'is-invalid' : '' ?>">
                            <option value="" selected>-- Pilih Hak Akses --</option>
                            <option value="public"><?= set_select('type_folder', 'public') ?>public</option>
                            <option value="private"><?= set_select('type_folder', 'private') ?>private</option>
                            <option value="user"><?= set_select('type_folder', 'user') ?>user</option>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('type_folder'); ?>
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