 <?= $this->extend('layout/auth'); ?>
 <?= $this->section('content'); ?>
 <!-- /.login-logo -->
 <div class="card card-outline card-info">
     <div class="card-header text-center">
         <img src="http://localhost:8080/img/logo_besar.png" alt="Logo SIC" class="mw-100" style="height:50px">
         <div class="small text-center mt-2">
             Jl. Raya Taman Pagelaran No.2 Lt.2
             <br>
             Ciomas, Bogor - Jawa Barat
         </div>
     </div>
     <div class="card-body pb-2">
         <p class="login-box-msg small">Login to stay connected</p>
         <?= session()->getFlashdata('pesan'); ?>
         <?= form_open('auth/proses', ['autocomplete' => 'off'], ['captcha_code' => $captcha]) ?>
         <div class="form-group">
             <div class="input-group">
                 <input value="<?= old('username'); ?>" autofocus onfocus="this.select()" name="username" type="text" class="form-control <?= $validation->hasError('username') ? 'is-invalid' : '' ?>" placeholder="Please enter username...">
                 <div class="input-group-append">
                     <div class="input-group-text">
                         <span class="fas fa-user"></span>
                     </div>
                 </div>
                 <div class="invalid-feedback">
                     <?= $validation->getError('username'); ?>
                 </div>
             </div>
         </div>
         <div class="form-group">
             <div class="input-group">
                 <input type="password" name="password" class="form-control <?= $validation->hasError('password') ? 'is-invalid' : '' ?>" placeholder="Please enter password...">
                 <div class="input-group-append">
                     <div class="input-group-text">
                         <span class="fas fa-lock"></span>
                     </div>
                 </div>
                 <div class="invalid-feedback">
                     <?= $validation->getError('password'); ?>
                 </div>
             </div>
         </div>
         <div id="captcha-form" class="bg-light mb-3 p-2 border rounded user-select-none">
             <div class="row mb-0">
                 <div class="col-5 d-flex justify-content-center">
                     <span id="captcha-text" class="text-primary font-weight-bold align-self-center">
                         <?= $captcha; ?>
                     </span>
                 </div>
                 <div class="col-7">
                     <input name="captcha" type="text" class="form-control form-control-sm <?= $validation->hasError('captcha') ? 'is-invalid' : ''; ?>" placeholder="Ketik kata disamping">
                 </div>
             </div>
         </div>
         <button type="submit" class="btn btn-info btn-block">Login</button>
         <?= form_close(); ?>
         <p class="small text-center text-muted pt-2">
             Register Account? <br>
             <a href="http://localhost:8080/auth/register">Register</a>
         </p>
     </div>
     <!-- /.card-body -->
 </div>
 <!-- /.card -->
 <?= $this->endSection(); ?>