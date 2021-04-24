<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
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
                    <table class="table table-hover table-striped">
                        <thead class="text-secondary">
                            <tr>
                                <th><i class="fa fa-file"></i></th>
                                <th>Nama</th>
                                <th>Tanggal</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <i class="fas fa-folder"></i>
                                </td>
                                <td>PHPL</td>
                                <td>2021-07-17</td>
                                <td>
                                    <div class="btn-group dropdown">
                                        <button type="button" class="btn btn-white" data-toggle="dropdown">
                                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="" class="dropdown-item btnEdit" data-toggle="modal" data-target="#fileModal">Rename</a>
                                            <a href="" class="dropdown-item" onclick="return confirm('Yakin dihapus?')">Hapus</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection();