<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header card-outline card-lightblue">
                    <div class="row">
                        <div class="col d-flex">
                            <h3 class="card-title text-capitalize align-items-center">
                                <?= $title; ?>
                            </h3>
                        </div>
                        <div class="col text-right">
                            <a href="/jenis" class="btn btn-outline-info btn-sm"><i class="fas fa-arrow-left"></i> Back</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <?= form_open('jenis/save'); ?>
                    <?= csrf_field(); ?>
                    <div class="form-group">
                        <label for="jenis_nama">Nama Jenis</label>
                        <input type="text" name="jenis_nama" id="jenis_nama" class="form-control <?= $validation->hasError('jenis_nama') ? 'is-invalid' : '' ?>" placeholder="Enter jenis file...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('jenis_nama'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="kategori_id">Kategori</label>
                        <select name="kategori_id" id="kategori_id" class="form-control <?= $validation->hasError('kategori_id') ? 'is-invalid' : '' ?>">
                            <option value="" selected>-- Pilih Kategori --</option>
                            <?php foreach ($kategori as $k) : ?>
                                <option value="<?= $k['kategori_id'] ?>" <?= set_select('kategori_id', $k['kategori_id']) ?>><?= $k['kategori_nama']; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('kategori_id'); ?>
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