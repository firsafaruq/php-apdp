<?php
include '../../koneksi.php';

$module=$_GET['module'];
$aksi=$_GET['aksi'];

$id_pendatang = $_POST['id_pendatang'];
$tanggal_datang = $_POST['tanggal_datang'];
$alamat_datang = $_POST['alamat_datang'];

$nik = $_POST['nik'];
$nama = $_POST['nama'];
$jk = $_POST['jk'];
$tempat_lhr = $_POST['tempat_lhr'];
$tanggal_lhr = $_POST['tanggal_lhr'];
$gol_dar = $_POST['gol_dar'];
$kewarganegaraan = $_POST['kewarganegaraan'];
$agama = $_POST['agama'];
$status_keluarga = $_POST['status_keluarga'];
$ayah = $_POST['ayah'];
$ibu = $_POST['ibu'];
$alamat = $_POST['alamat'];
$desa = $_POST['desa'];
$rt = $_POST['rt'];
$rw = $_POST['rw'];

// HAPUS
if($module=='pendatang' AND $aksi=='hapus' ){ 
$mySql = "DELETE FROM pendatang WHERE id_pendatang='".$_GET['id_pendatang']."'";
$mySql1 = mysql_query("DELETE FROM data_warga WHERE id='".$_GET['id']."'");
$myQry = mysql_query($mySql);
header('location:../../index.php?module='.$module);
}
// EDIT
else if($module=='pendatang' AND $aksi=='edit' ){ 
$query = mysql_query("UPDATE pendatang SET				  
				  nik = '$nik',
				  no_kk = '$no_kk',
				  nama = '$nama',
				  tanggal_datang = '$tanggal_datang',
				  alamat_datang  = '$alamat_datang'
				  WHERE id_pendatang = '$id_pendatang'");
header('location:../../index.php?module='.$module);
}
//Tambah
else if($module=='pendatang' AND $aksi=='tambah' ){ 
	header('location:../../index.php?module='.$module);
$sql = "INSERT INTO pendatang (id_pendatang, nik, no_kk, nama, tanggal_datang, alamat_datang ) VALUES ('$id_pendatang', '$nik', '$no_kk', '$nama', '$tanggal_datang', '$alamat_datang')";
$sql1= "INSERT INTO data_warga (id, nik, no_kk, nama, jk, tempat_lhr, tanggal_lhr, gol_dar, kewarganegaraan, agama, status_keluarga, nama_ayah, nama_ibu, alamat, rt, rw) VALUES ('$id_kelahiran', '$nik', '$no_kk', '$nama', '$jk', '$tempat_lhr', '$tanggal_lhr', '$gol_dar', '$kewarganegaraan', '$agama', '$status_keluarga', '$nama_ayah', '$nama_ibu', '$alamat', '$desa', '$rt', '$rw')";
$simpan = mysql_query($sql);
}
?>