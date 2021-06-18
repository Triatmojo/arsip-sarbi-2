<?= $this->extend('layout/karyawan'); ?>
<?= $this->section('content'); ?>
<div class="card">
    <div class="card-header">
        <h3 class="card-title">
            Dibagikan ke saya
        </h3>
    </div>
    <div class="card-body">
        <table class="table w-100 table-hover table-sm" id="browse">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Folder</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                foreach ($shared as $row) : ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><?= $row['parent'] == null ? $row['folder'] : $row['parent']; ?></td>
                        <td>
                            <?php
                            $link = '';
                            if ($row['parent'] == null) {
                                $link = 'folder/' . urlencode($row['folder']) . '/' . $row['folder_id'];
                            } else {
                                $link = 'parent/' . $row['folder_parent'];
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

<?= $this->section('addons'); ?>
<script>
    $(document).ready(function() {
        $('#browse').DataTable({
            "scrollY": '50vh',
            "scrollCollapse": true,
            "paging": false,
        });
    })
</script>
<?= $this->endSection(); ?>