<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sarbi-arsip | <?= $title; ?>
    </title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="<?= base_url() ?>/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url() ?>/dist/css/adminlte.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="<?= base_url(); ?>/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">

    <link rel="stylesheet" href="<?= base_url(); ?>/dist/css/adminlte.min.css">

</head>
</head>

<body class="hold-transition layout-top-nav">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="<?= base_url(); ?>/img/logo_besar.png" alt="AdminLTELogo" height="60" width="60">
        </div>

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand-md navbar-dark bg-lightblue navbar-white">
            <div class="container">
                <a href="<?= base_url() ?>/home" class="navbar-brand">
                    <img src="<?= base_url() ?>/img/logo_navbar.png" alt="SIC Logo" class="brand-image" style="opacity: .8">
                    <!-- <span class="brand-text font-weight-light">Sarbi-sic</span> -->
                </a>
                <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse order-3 justify-content-end" id="navbarCollapse">
                    <!-- Left navbar links -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="<?= base_url('home'); ?>" class="nav-link <?= activeMenu('home'); ?>">Home</a>
                        </li>
                        <?php if (is_admin()) : ?>
                            <li class="nav-item">
                                <a href="<?= base_url() ?>/docs" class="nav-link <?= activeMenu('docs'); ?>">Files</a>
                            </li>
                        <?php endif; ?>
                        <?php if (is_admin()) : ?>
                            <li class="nav-item dropdown">
                                <a id="dropdownSubMenu2" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Settings</a>
                                <ul aria-labelledby="dropdownSubMenu2" class="dropdown-menu border-0 shadow">
                                    <li>
                                        <a href="<?= base_url() ?>/kategori" class="dropdown-item">
                                            Kategori
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>/jenis" class="dropdown-item">
                                            Jenis
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>/users" class="dropdown-item">
                                            User Management
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <?php else : ?>
                            <li class="nav-item">
                                <a href="<?= base_url('myfolder'); ?>" class="nav-link">Folder Saya</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="far fa-bell"></i>
                                    <span class="badge badge-warning navbar-badge"><?= count(notifikasiFolder()) ?></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="left: inherit; right: 0px;">
                                    <?php if (notifikasiFolder()) : ?>
                                        <p class="text-center p-2">Notifikasi</p>
                                    <?php elseif (!notifikasiFolder()) : ?>
                                        <p class="text-center p-2">Belum ada folder</p>
                                    <?php endif ?>
                                    <div class="dropdown-divider"></div>
                                    <?php foreach (notifikasiFolder() as $notif) : ?>
                                        <a href="<?= base_url() ?>/home/upload_file/<?= $notif['folderId']; ?>" class="dropdown-item">
                                            <i class="fas fa-file mr-2"></i>File belum lengkap <strong class="text-info"><?= $notif['namaFolder']; ?></strong> <br> <span class="text-center"><?= $notif['namaPt']; ?></span>
                                        </a>
                                    <?php endforeach; ?>
                                </div>
                            </li>
                        <?php endif; ?>
                        <?php if (is_admin()) :  ?>
                            <li class="nav-item">
                                <a href="<?= base_url('laporan'); ?>" class="nav-link <?= activeMenu('laporan'); ?>">Laporan</a>
                            </li>
                        <?php endif; ?>
                        <li class="nav-item dropdown">
                            <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">
                                <svg xmlns="http://www.w3.org/2000/svg" class="nav-icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M7 6a7.75 7.75 0 1 0 10 0" />
                                    <line x1="12" y1="4" x2="12" y2="12" />
                                </svg>
                            </a>
                            <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                                <li>
                                    <a href="/profile" class="dropdown-item">
                                        <i class="fa fa-user fa-stack"></i> Profile
                                    </a>
                                    <a href="/auth/updatePassword" class="dropdown-item">
                                        <i class="fa fa-exchange-alt fa-stack"></i> Change Password
                                    </a>
                                    <a href="/auth/logout" class="dropdown-item">
                                        <i class="fa fa-sign-out-alt fa-stack"></i>Sign-out
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /.navbar -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0"><?= $title; ?>
                            </h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb font-weight-light float-sm-right">
                                <li class="breadcrumb-item">
                                    <a href="<?= base_url() ?>/home" class="text-dark">
                                        <i class="fas fa-home"></i> Home
                                    </a>
                                </li>
                                <?php
                                $menu = service('uri')->getSegment(1);
                                if ($menu != 'home') :
                                    if ($menu) : ?>
                                        <li class="breadcrumb-item">
                                            <a href="<?= base_url() ?>/<?= $menu ?>"><?= $menu; ?></a>
                                        </li>
                                    <?php endif; ?>
                                    <li class="breadcrumb-item">
                                        <?= $title ?>
                                    </li>
                                <?php endif; ?>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container">
                    <?= $this->renderSection('content'); ?>
                </div>
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="text-center">
                <strong>Copyright &copy; 2010-<?= date('Y'); ?> <a href="http://sic.sarbi.co.id/">Sarbi
                        Arsip</a>.</strong> All rights reserved.
            </div>
            <!-- Default to the left -->

        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->
    <!-- jQuery -->
    <script src="<?= base_url() ?>/plugins/jquery/jquery.min.js"></script>
    <script src="<?= base_url(); ?>/plugins/moment/moment.min.js"></script>
    <script src="<?= base_url(); ?>/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url() ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url() ?>/dist/js/adminlte.min.js"></script>
    <!-- Datatables -->
    <script src="<?= base_url(); ?>/plugins/datatables/jquery.dataTables.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-buttons/js/dataTables.buttons.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-buttons/js/buttons.bootstrap4.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-buttons/js/buttons.html5.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-buttons/js/buttons.print.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-buttons/js/buttons.colVis.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/jszip/jszip.min.js"></script>
    <script src="<?= base_url(); ?>/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="<?= base_url(); ?>/plugins/pdfmake/vfs_fonts.js"></script>
    <script src="<?= base_url(); ?>/plugins/datatables-responsive/js/dataTables.responsive.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js">
    </script>
    <script src="<?= base_url(); ?>/plugins/select2/js/select2.full.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="<?= base_url(); ?>/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script scr="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.2/js/toastr.min.js"></script>

    <script src="<?= base_url(); ?>/dist/js/adminlte.min.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
            var table = $('#datatable').DataTable({
                processing: true,
                severSide: true,
                buttons: ['copy', 'pdf', 'excel'],
                dom: "<'row px-2 px-md-4 pt-2'<'col-md-3'l><'col-md-5 text-center'B><'col-md-4'f>>" +
                    "<'row'<'col-md-12'tr>>" +
                    "<'row px-2 px-md-4 py-3'<'col-md-5'i><'col-md-7'p>>",
                columnDefs: [{
                    targets: -1,
                    orderable: false,
                    searchable: false
                }]
            });

            table.buttons().container().appendTo('#dataTable_wrapper .col-md-5:eq(0)');

            var start = moment().subtract(29, 'days');
            var end = moment();

            function cb(start, end) {
                $('#tangal').val(start.format('YYYY-MM-DD') + ' - ' + end.format('YYYY-MM-DD'));
            }

            $('.select2').select2({
                theme: 'bootstrap4'
            });

            $('#tanggal').daterangepicker({
                startDate: start,
                endDate: end,
                ranges: {
                    'Hari ini': [moment(), moment()],
                    'Kemarin': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 hari terakhir': [moment().subtract(6, 'days'), moment()],
                    '30 hari terakhir': [moment().subtract(29, 'days'), moment()],
                    'Bulan ini': [moment().startOf('month'), moment().endOf('month')],
                    'Bulan lalu': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1,
                        'month').endOf('month')],
                    'Tahun ini': [moment().startOf('year'), moment().endOf('year')],
                    'Tahun lalu': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1,
                        'year').endOf('year')]
                }
            }, cb);

            cb(start, end);

            $('[data-toggle="tooltip"]').tooltip();

            var table = $('.datatable').DataTable({
                buttons: ['copy', 'csv', 'print', 'excel'],
                dom: "<'row px-2 px-md-4 pt-2'<'col-md-3'l><'col-md-5 text-center'B><'col-md-4'f>>" +
                    "<'row'<'col-md-12'tr>>" +
                    "<'row px-2 px-md-4 py-3'<'col-md-5'i><'col-md-7'p>>",
                lengthMenu: [
                    [5, 10, 25, 50, 100, -1],
                    [5, 10, 25, 50, 100, "All"]
                ],
                columnDefs: [{
                    targets: -1,
                    orderable: false,
                    searchable: false
                }]
            });

            table.buttons().container().appendTo('#dataTable_wrapper .col-md-5:eq(0)');

            $('body .custom-file-input').on('change', function() {
                let fileName = $(this).val().split('\\').pop();
                $(this).next('.custom-file-label').addClass("selected").html(fileName);
            });

        });

        $(function() {
            // Swal toast 
            var Toast = Swal.mixin({
                toast: true,
                position: 'top',
                showConfirmButton: false,
                timer: 5000
            });

            <?= session()->getFlashdata('toast'); ?>
        });
    </script>

    <?= $this->renderSection('addons'); ?>

</body>

</html>