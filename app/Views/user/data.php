<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row">
    <div class="col-lg-12">
        <?= form_open('users/multi_delete', ['user_id' => 'form-deleteAll']) ?>
        <div class="card">
            <div class="card-header">
                <a href="/users/add" class="btn btn-info btn-sm "><i class="fa fa-plus"></i> Add</a>
                <button type="button" onclick="delete_all()" class="btn btn-danger btn-sm "><i class="fa fa-trash"></i> Delete</button>
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
                            <th><input type="checkbox" id="select_all" class="text-center"></th>
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
                                <td><input type="checkbox" name="checked[]" class="check" value="<?= $u['user_id'] ?>"></td>
                                <td><?= $no++; ?></td>
                                <td><?= $u['nama_lengkap'] ?></td>
                                <td><?= $u['username'] ?></td>
                                <td><?= $u['email'] ?></td>
                                <td><?= $u['no_telp'] ?></td>
                                <td>
                                    <span class=" badge badge-<?= $u['role'] == 'admin' ? 'success' : 'info' ?>">
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
<?= form_close(); ?>
<?= $this->endsection(); ?>

<?= $this->section('addons'); ?>
<script>
    $(function() {
        $('#select_all').on('click', function() {
            if (this.checked) {
                $('.check').each(function() {
                    this.checked = true;
                    $('#select_all').prop('checked', true);
                })
            } else {
                $('.check').each(function() {
                    this.checked = false;
                    $('#select_all').prop('checked', false);
                });
            }
        })
    })
</script>
<?= $this->endSection(); ?>