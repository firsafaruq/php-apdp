<?php
include "include/koneksi.php";

if ($_GET['module'] == "home") {
	include "module/home.php";
}
else if ($_GET['module'] == "warga") {
	include "module/warga/warga.php";	
}
else if ($_GET['module'] == "kk") {
	include "module/kk/kk.php";	
}
else if ($_GET['module'] == "kematian") {
	include "module/kematian/kematian.php";	
}
else if ($_GET['module'] == "pindah") {
	include "module/pindah/pindah.php";
}
else if ($_GET['module'] == "pendatang") {
	include "module/pendatang/pendatang.php";
}
else if ($_GET['module'] == "kelahiran") {
	include "module/kelahiran/kelahiran.php";
}
else if ($_GET['module'] == "user") {
	include "module/user/user.php";	
}
else if ($_GET['module'] == "edit_user") {
	include "module/user/user.php";	
}
?>