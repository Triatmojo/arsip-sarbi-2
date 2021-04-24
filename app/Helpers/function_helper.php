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
    $toast .= "icon: '{$tipe}',";
    $toast .= "title: '{$pesan}'";
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

        for ($j = 0; $difference >= $lengths[$j] && $j < count($lengths) - 1; $j++) {
            $difference /= $lengths[$j];
        }

        $difference = round($difference);

        if ($difference != 1) {
            $periods[$j] .= "s";
        }

        return "$difference $periods[$j] ago ";
    }
}
