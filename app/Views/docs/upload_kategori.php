<?= $this->extend('layout/karyawan'); ?>
<?= $this->section('content'); ?>
<div class="card">
    <div class="card-body">
        <p>
            Max. ukuran : <b>10Mb</b>
            <br>
            Format file : <b>pdf|docx|xlsx|jpeg|png</b>
        </p>
        <table class="table table-sm table-striped">
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
                foreach ($jenis as $item): ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $item['jenis_nama']; ?></td>
                    <?php if (!in_array($item['jenis_id'], $jnsupload)) : ?>
                        <?= form_open_multipart('docs/addFile'); ?>
                            <td>
                                <input type="hidden" name="folder_id" value="<?= $folder['folder_id']; ?>">
                                <input type="hidden" name="jenis_id" value="<?= $item['jenis_id']; ?>">
                                <input type="hidden" name="user_id" value="<?= userdata('user_id'); ?>">
                                <div class="custom-file">
                                    <input type="file" name="file" class="custom-file-input" id="file" accept=".zip,.ZIP,.rar,.RAR,.7z,.iso,application/octet-stream,application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint, text/plain, application/pdf, image/*">
                                    <label class="custom-file-label" for="file">Pilih File</label>
                                </div>
                            </td>
                            <td class="text-center">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-upload"></i>
                                </button>
                            </td>
                        <?= form_close(); ?>
                        <?php else: ?>
                        <?php foreach ($terupload as $t) : ?>
                            <?php if ($item['jenis_id'] == $t['jenis_id']): ?>
                                <td class="align-middle text-center">
                                    <?= $t['nama_file']; ?>
                                </td>
                                <td class="text-center">
                                    <button onclick="location.href= '<?= base_url(); ?>/docs/deleteFile/<?=$t['file_id']?>'" type="button" class="btn btn-danger">
                                        <i class="fa fa-times"></i>
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