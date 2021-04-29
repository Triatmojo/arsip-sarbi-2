<?= $this->extend('layout/karyawan'); ?>

<?= $this->section('content'); ?>
<div class="row">
    <div class="col-lg-12">
        <?= form_open('kategori/multi_delete', ['id' => 'form-deleteAll']); ?>
        <div class="card">
            <div class="card-header">
                <a href="/kategori/add" class="btn btn-info btn-sm "><i class="fa fa-plus"></i> Add</a>
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
                            <th>Nama Kategori</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($kategori as $k) : ?>
                            <tr>
                                <td><input type="checkbox" name="checked[]" class="check" value="<?= $k['kategori_id'] ?>"></td>
                                <td><?= $no++; ?></td>
                                <td><?= $k['kategori_nama'] ?></td>
                                <td>
                                    <div class="btn-group dropdown">
                                        <button type="button" class="btn btn-white" data-toggle="dropdown">
                                            <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="/kategori/edit/<?= $k['kategori_id']; ?>" class="dropdown-item btnEditFolder">
                                                <i class="fas fa-fw fa-edit text-warning"></i> Update
                                            </a>
                                            <form action="/kategori/delete/<?= $k['kategori_id'] ?>" method="POST">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button onclick="confirm('yakin dihapus?')" type="submit" class="dropdown-item">
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
        <?= form_close(); ?>
    </div>
</div>
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

    });

    function delete_all() {
        if ($('#datatable tbody tr .check:checked').length == 0) {
            alert('Tidak ada yang dipilih');
        } else {
            if (confirm('Confirm delete?')) {
                $('#form-deleteAll').submit();
            }
        }
    }
</script>
<?= $this->endSection(); ?>