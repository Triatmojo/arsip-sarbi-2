<?= $this->extend('layout/admin'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <h3 class=""><?= $title; ?></h3>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
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
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($folderAkses as $fa) : ?>
                                <tr>
                                    <td><?= $no++; ?></td>
                                    <td><?= $fa['nama_lengkap'] ?></td>
                                    <td><?= $fa['folder_name']; ?></td>
                                    <td>
                                        <form action="/dokumen/deleteUser/<?= $fa['id']; ?>" method="POST">
                                            <?= csrf_field(); ?>
                                            <input type="hidden" name="_method" value="DELETE">
                                            <button type="submit" class="btn btn-outline-danger btn-sm">
                                                <i class="fas fa-fw fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endsection(); ?>