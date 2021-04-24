<!-- Modal -->
<div class="modal fade" id="fileModal" data-backdrop="static" data-keyboard="false" tabindex="-1"
    aria-labelledby="fileModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="fileModalLabel">Tambah File</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url() ?>/docs/addFile"
                method="POST" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="modal-body">
                    <div class="custom-file">
                        <input type="file" name="file" class="custom-file-input" id="file" accept=".zip,.ZIP,.rar,.RAR,.7z,.iso,application/octet-stream,application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint,
text/plain, application/pdf, image/*">
                        <label class="custom-file-label" for="file">Pilih File</label>
                    </div>
                    <input type="hidden" name="folder_id"
                        value="<?= $folder_parent; ?>">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="renameFile" data-backdrop="static" data-keyboard="false" tabindex="-1"
    aria-labelledby="renameFileLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="renameFileLabel">Ganti Nama File</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('docs/renameFile'); ?>
            <?= csrf_field(); ?>
            <input type="hidden" name="file_id" id="file_id">
            <input type="hidden" name="folderId" id="folderId">
            <div class="modal-body">
                <div class="form-group">
                    <label for="nama_file">Nama File</label>
                    <input type="text" name="nama_file" id="nama_file" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Rename</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>