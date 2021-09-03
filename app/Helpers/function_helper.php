<?php

function setMsg($type, $msg)
{
    $alert = "";
    $alert .= "<div class='alert alert-{$type} alert-dismissible fade show' role='alert'>";
    $alert .= $msg;
    $alert .= "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>";
    $alert .= "<span aria-hidden='true'>&times;</span>";
    $alert .= "</button>";
    $alert .= "</div>";

    session()->setFlashdata('pesan', $alert);
}

function setToast($tipe = 'success', $pesan = '')
{
    $toast  = "Toast.fire({";
    $toast .=   "icon: '{$tipe}',";
    $toast .=   "title: '{$pesan}'";
    $toast .= "});";

    return session()->setFlashdata('toast', $toast);
}

function activeMenu($menu = '')
{
    $uri = service('uri')->getSegment(1);

    if ($uri  == '') {
        $uri = 'docs';
    }
    return $menu == $uri ? 'active' : '';
}

function selected($data1, $data2, $result = "selected")
{
    return $data1 == $data2 ? $result : "";
}

function userdata($data = null)
{
    $user = new \App\Models\UserModel();
    $id = session()->get('sarbi-sic');
    $getUser = $user->getUser($id);

    if (!$data) {
        return $getUser;
    }

    return $getUser[$data];
}

function is_admin()
{
    return userdata('role') == 'admin' ? 1 : 0;
}

function smarty_filesize($size)
{
    $size = max(0, (int)$size);
    $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB');
    $power = $size > 0 ? floor(log($size, 1024)) : 0;
    return number_format($size / pow(1024, $power), 2, '.', ',') . ' ' . $units[$power];
}

if (!function_exists('time_ago')) {
    function time_ago($time)
    {
        $periods = array("second", "minute", "hour", "day", "week", "month", "year", "decade");
        $lengths = array("60", "60", "24", "7", "4.35", "12", "10");

        $now = time();
        $time = strtotime($time);

        $difference     = $now - $time;
        $tense         = "ago";

        for ($j = 0; $difference > $lengths[$j] && $j < count($lengths) - 1; $j++) {
            $difference /= $lengths[$j];
        }

        $difference = round($difference);

        if ($difference != 1) {
            $periods[$j] .= "s";
        }

        return "$difference $periods[$j] ago ";
    }

    function notifikasiFolder()
    {
        $thisFolder = new \App\Models\DocsModel();
        $thisJenis = new \App\Models\JenisModel();
        $thisFile = new \App\Models\FileModel();
        $thisAkses = new \App\Models\FolderaksesModel();

        $fileNotif = $thisAkses->getFolderNotif(userdata('user_id'));

        $notifName = [];
        foreach ($fileNotif as $notif) {
            $folder = $thisFolder->where(['folder_id' => $notif['folder_id']])->first();
            $parent = $thisFolder->where(['folder_id' => $folder['folder_parent']])->first();

            $jenis = $thisJenis->where(['kategori_id' => $folder['kategori_id']])->findAll();

            // Cek File yang sudah terupload
            $terupload = $thisFile->where(['folder_id' => $folder['folder_id']])->findAll();
            $jnsupload = [];
            foreach ($terupload as $gt) {
                $jnsupload[] = $gt['jenis_id'];
            }

            // Cek file belum diupload
            $blmupload = [];
            foreach ($jenis as $jns) {
                // cek file yg harus diupload dan tidak
                if ($jns['is_required'] == 1) {
                    // cekfile yg telah diupload
                    if (!in_array($jns['jenis_id'], $jnsupload)) {
                        $blmupload[] = $jns;
                    }
                }
            }

            if (count($blmupload) != 0) {
                $notifName[] = [
                    'folderId' => $notif['folder_id'],
                    'namaFolder'  => $notif['nama'],
                    'namaPt'  => $notif['parent']
                ];
            }
        }


        return $notifName;
    }
}

function getFolderName($folder_id)
{
    $db = \Config\Database::connect();
    $folder = $db->table('folder')->where(['folder_id' => $folder_id])->get()->getRow();

    return $folder->folder_name;
}
