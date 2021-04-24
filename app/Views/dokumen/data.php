<?= $this->extend('layout/admin'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <h3 class=""><?= $title; ?></h3>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <a href="/dokumen/add" class="btn btn-info btn-sm "><i class="fa fa-plus"></i> Add</a>
                    <div class="card-tools">
                        <button class="btn btn tool" data-card-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body card-outline-left p-0">
                    <table class="table table-hover table-striped" id="datatable">
                        <thead class="text-secondary">
                            <tr>
                                <th>No.</th>
                                <th>Nama</th>
                                <th>Tipe</th>
                                <th>Akses Folder</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($dokumen as $d) : ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $d['folder_name']; ?></td>
                                    <td><?= $d['folder_parent'] != $d['folder_id'] ? 'folder' : ''; ?></td>
                                    <td><?= $d['type_folder']; ?></td>
                                    <td>
                                        <div class="btn-group dropdown">
                                            <button type="button" class="btn btn-white" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="/dokumen/akses/<?= $d['folder_id']; ?>" class="dropdown-item">
                                                    <i class="fas fa-fw fa-user-check text-secondary"></i> Hak Akses
                                                </a>
                                                <a href="/dokumen/edit/<?= $d['folder_id']; ?>" class="dropdown-item">
                                                    <i class="fas fa-fw fa-edit text-warning"></i> Update
                                                </a>
                                                <form action="/dokumen/delete/<?= $d['folder_id']; ?>" method="POST">
                                                    <?= csrf_field(); ?>
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <button type="submit" class="dropdown-item">
                                                        <i class="fas fa-fw fa-trash text-danger"></i> Delete
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endsection(); ?>