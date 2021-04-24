<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <a href="/users/add" class="btn btn-info btn-sm "><i class="fa fa-plus"></i> Add</a>
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
                            <th>Username</th>
                            <th>Email</th>
                            <th>No Handphone</th>
                            <th>role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($user as $u) : ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $u['nama_lengkap'] ?></td>
                                <td><?= $u['username'] ?></td>
                                <td><?= $u['email'] ?></td>
                                <td><?= $u['no_telp'] ?></td>
                                <td>
                                    <span class="badge badge-<?= $u['role'] == 'admin' ? 'success' : 'info' ?>">
                                        <?= $u['role']; ?>
                                    </span>
                                </td>
                                <td>
                                    <div class="btn-group dropdown">
                                        <button type="button" class="btn btn-white" data-toggle="dropdown">
                                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="/users/edit/<?= $u['user_id']; ?>" class="dropdown-item btnEditFolder">
                                                <i class="fas fa-fw fa-edit text-warning"></i> Update
                                            </a>
                                            <form action="/users/delete/<?= $u['user_id'] ?>" method="POST">
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
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<?= $this->endsection(); ?>