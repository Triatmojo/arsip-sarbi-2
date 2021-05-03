<?= $this->extend('layout/karyawan'); ?>
<?= $this->section('content'); ?>

<div class="card">
    <div class="card-header">
        <h3 class="card-title">
            Dibagikan ke saya
        </h3>
    </div>
    <div class="card-body">
        <?php d($shared); ?>
        <table class="table w-100 table-sm">
            <thead>
                <tr>
                    <th>Nama Folder</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($shared as $row): ?>
                    <tr>
                        <td><?= $row['parent'] == null ? $row['folder'] : $row['parent']; ?></td>
                        <td>
                            <?php
                                $link = '';
                                if ($row['parent'] == null) {
                                    $link = 'folder/'.urlencode($row['folder']).'/'.$row['folder_id'];
                                } else {
                                    $link = 'parent/'.$row['folder_parent'];
                                }
                            ?>
                            <a href="<?= base_url('myfolder'); ?>/<?= $link; ?>" class="btn btn-sm btn-primary">Open</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>    
    </div>
</div>

<?= $this->endSection(); ?>