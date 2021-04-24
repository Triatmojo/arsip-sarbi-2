<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="card">
        <div class="card-header">
            <a href="#" class="btn btn-primary tambahFolder" data-toggle="modal" data-target="#formModal">
                <i class="fas fa-plus fa-fw"></i> Folder Baru
            </a>
            <a href="#" class="btn btn-secondary" data-toggle="modal" data-target="#fileModal">
                <i class="fas fa-upload fa-fw"></i> Upload File
            </a>
            <div class="card-tools">
                <button class="btn btn tool" data-card-widget="collapse">
                    <i class="fa fa-minus"></i>
                </button>
            </div>
        </div>
        <div class="card-body card-outline-left p-0">
            <table id="browse" class="table table-hover table-hover table-sm">
                <thead class="text-secondary">
                    <tr>
                        <th class="text-center" width="20">
                            <i class="fa fa-fw fa-file text-secondary"></i>
                        </th>
                        <th>Nama</th>
                        <th>Updated</th>
                        <th>Size</th>
                        <th>Opsi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if ($folder_parent != 0) : ?>
                    <tr>
                        <td>
                            <i class="fa fa-arrow-left text-secondary"></i>
                        </td>
                        <td>
                            <a href="<?= base_url('docs').'/'.$prev_folder; ?>">
                                Kembali ...
                            </a>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <?php endif;?>
                    <?php if ($folder) : ?>
                    <?php foreach ($folder as $row) : ?>
                    <tr>
                        <td class="text-center">
                            <i class="fas fa-fw fa-folder text-secondary"></i>
                        </td>
                        <td>
                            <a class="list-item" href="<?= base_url('docs/'.$row['folder_id']); ?>">
                                <?= $row['folder_name']; ?>
                            </a>
                        </td>
                        <td>
                            <?= time_ago($row['updated_at']); ?>
                        </td>
                        <td>-</td>
                        <td>
                            <div class="btn-group dropdown text-center">
                                <button type="button" class="btn btn-sm btn-link text-center" data-toggle="dropdown">
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <button data-id="<?= $row['folder_id'] ?>" data-nama="<?= $row['folder_name']; ?>" type="button" class="dropdown-item btnEditFolder">Rename</button>
                                    <a href="<?= base_url() ?>/docs/deleteFolder/<?= $row['folder_id'] ?>" class="dropdown-item">Hapus</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    <?php endif; ?>

                    <?php if ($files) : ?>
                    <?php foreach ($files as $file) : ?>
                    <tr>
                        <td class="text-center">
                            <i class="fas fa-fw fa-file text-secondary"></i>
                        </td>
                        <td>
                            <a href="<?= base_url() ?>/files/<?= $file['file']; ?>" target="_blank">
                                <?= $file['nama_file']; ?>
                            </a>
                        </td>
                        <td>
                            <?= time_ago($file['updated_at']); ?>
                        </td>
                        <td>
                            <?php
                            if (is_file(FCPATH.'files/'.$file['file'])) {
                                echo smarty_filesize(filesize(FCPATH.'files/'.$file['file']));
                            } else {
                                echo "unknown";
                            }
                            ?>
                        </td>
                        <td>
                            <div class="btn-group dropdown">
                                <button type="button" class="btn btn-sm btn-link" data-toggle="dropdown">
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <button type="button" class="dropdown-item btn-rename-file" data-id="<?= $file['file_id'] ?>" data-nama="<?= $file['nama_file'] ?>" data-folder="<?= $file['folder_id'] ?>">Rename</button>
                                    <a href="<?= base_url() ?>/docs/deleteFile/<?= $file['file_id'] ?>" class="dropdown-item" onclick="return confirm('Yakin dihapus?')">Hapus</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    <?php endif; ?>

                    <?php if (!$folder && !$files): ?>
                    <tr>
                        <td colspan="5" class="text-center">Tidak ada item</td>
                    </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="formModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="formModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="formModalLabel">Tambah Folder</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="folder_form" action="<?= base_url() ?>/docs/save" method="post">
                <input type="hidden" name="folder_id" id="folder_id" val="">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="folder_name">Nama Folder</label>
                        <input type="text" id="folder_name" name="folder_name" class="form-control <?= $validation->hasError('folder_name') ? 'is-invalid' : '' ?>" placeholder="Masukan Nama Folder...">
                        <div class="invalid-feedback">
                            <?= $validation->getError('folder_name'); ?>
                        </div>
                    </div>
                    <input type="hidden" name="folder_parent" value="<?= $folder_parent ?>">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?= $this->include('docs/fileModal'); ?>

<?= $this->endSection(); ?>

<?= $this->section('addons'); ?>
<script type="text/javascript">
function editFolder(id, name) {
    let modal = $('#formModal'),
        base_url = "<?= base_url() ?>";

    let folder_id = $('#folder_id');
    let folder_name = $('#folder_name');

    modal.modal('show');

    // Edit Modal
    modal.find('.modal-title').text('Rename');
    modal.find('.modal-footer [type=submit]').text('Rename');

    folder_id.val(id);
    folder_name.val(name);

    // Tambah Modal
    modal.on('hidden.bs.modal', function() {
        modal.find('.modal-title').text('Buat Folder');

        folder_id.val('');
        folder_name.val('');
    });
}

function renameFile(id, name, folder) {
    let modal = $('#renameFile'),
        base_url = "<?= base_url() ?>";

    let file_id = $('#renameFile #file_id');
    let file_name = $('#renameFile #nama_file');
    let folder_id = $('#renameFile #folder_id');

    modal.modal('show');

    file_id.val(id);
    file_name.val(name);
    folder_id.val(folder);

    // Tambah Modal
    modal.on('hidden.bs.modal', function() {
        file_id.val('');
        file_name.val('');
        file_id.val('');
    });
}

$(function() {
    $('.dropdown-toggle').dropdown();

    <?php if ($validation->hasError('folder_name')) : ?>
    $('#formModal').modal('show');
    <?php endif; ?>

    $(document).ready(function() {
        $('#browse').DataTable({
            "paging": false,
            "ordering": false,
            "info": false,
            "dom": "<'row px-2 px-md-4 pt-2'<'col-md'f>>" +
                "<'row'<'col-md-12'tr>>"
        });
    });

    $('.tambahFolder').on('click', function() {
        $('#formModalLabel').html('Tambah Folder');
        $('.modal-footer button[type=submit]').html('Tambah');
    });

    $('body .btnEditFolder').on('click', function() {
        let id = $(this).data('id');
        let name = $(this).data('nama');
        editFolder(id, name);
    });

    $('body .btn-rename-file').on('click', function() {
        let id = $(this).data('id');
        let name = $(this).data('nama');
        let folder = $(this).data('folder');
        renameFile(id, name, folder);
    });
});
</script>
<?= $this->endSection();