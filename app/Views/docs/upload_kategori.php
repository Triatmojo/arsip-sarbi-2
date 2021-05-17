<?= $this->extend('layout/karyawan'); ?>
<?= $this->section('content'); ?>
<div class="card">
    <div class="card-body">
        <table class="mb-3">
            <tr>
                <td width="100">Format file</td>
                <td>:</td>
                <td><b>pdf|docx|xlsx|jpeg|png</b></td>
            </tr>
            <tr>
                <td>Max. ukuran</td>
                <td>:</td>
                <td><b>10 Mb</b></td>
            </tr>
            <tr>
                <td>Status</td>
                <td>:</td>
                <td>
                    <b><?= count($blmupload); ?> File belum diupload</b>
                </td>
            </tr>
        </table>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>No. </th>
                    <th>Dokumen yang harus diupload</th>
                    <th class="text-center">File</th>
                    <th class="text-center">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                foreach ($jenis as $item) : ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td>
                            <?php if ($item['is_required'] != 0) : ?>
                                <sup class="text-danger">*</sup>
                            <?php endif; ?>
                            <?= $item['jenis_nama']; ?>
                        </td>
                        <?php if (!in_array($item['jenis_id'], $jnsupload)) : ?>
                            <?= form_open_multipart('docs/addFile'); ?>
                            <td class="align-middle">
                                <input type="hidden" name="folder_id" value="<?= $folder['folder_id']; ?>">
                                <input type="hidden" name="jenis_id" value="<?= $item['jenis_id']; ?>">
                                <input type="hidden" name="user_id" value="<?= userdata('user_id'); ?>">
                                <div class="custom-file">
                                    <input required type="file" name="file" class="custom-file-input form-control-sm" id="file" accept=".zip,.ZIP,.rar,.RAR,.7z,.iso,application/octet-stream,application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint, text/plain, application/pdf, image/*">
                                    <label class="custom-file-label" for="file">Choose File</label>
                                </div>
                            </td>
                            <td class="text-center align-middle">
                                <button type="submit" class="btn btn-sm btn-primary">
                                    Upload
                                </button>
                            </td>
                            <?= form_close(); ?>
                        <?php else : ?>
                            <?php foreach ($terupload as $t) : ?>
                                <?php if ($item['jenis_id'] == $t['jenis_id']) : ?>
                                    <td class="align-middle text-center text-muted small">
                                        <?= $t['nama_file']; ?>
                                    </td>
                                    <td class="text-center align-middle">
                                        <button onclick="location.href= '<?= base_url(); ?>/docs/deleteFile/<?= $t['file_id'] ?>'" type="button" class="btn btn-sm btn-danger">
                                            Hapus
                                        </button>
                                    </td>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<?= $this->endSection(); ?>