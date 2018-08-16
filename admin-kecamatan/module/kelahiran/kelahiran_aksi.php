<?php
include '../../koneksi.php';

$module=$_GET['module'];
$aksi=$_GET['aksi'];

$id_kelahiran = $_POST['id_kelahiran'];
$no_kk = $_POST['no_kk'];
$nik = $_POST['nik'];
$nama = $_POST['nama'];
$jk = $_POST['jk'];
$tempat_dilahirkan = $_POST['tempat_dilahirkan'];
$agama = $_POST['agama'];
$tempat_lahir = $_POST['tempat_lahir'];
$tanggal_lahir = $_POST['tanggal_lahir'];
$pukul_lahir = $_POST['pukul_lahir'];
$jenis_kelahiran = $_POST['jenis_kelahiran'];
$kelahiran_ke = $_POST['kelahiran_ke'];
$penolong = $_POST['penolong'];
$nama_penolong = $_POST['nama_penolong'];
$berat_bayi = $_POST['berat_bayi'];
$panjang_bayi = $_POST['panjang_bayi'];
$ayah = $_POST['ayah'];
$ibu = $_POST['ibu'];
$alamat = $_POST['alamat'];

// HAPUS
if($module=='kelahiran' AND $aksi=='hapus' ){ 
$mySql = "DELETE FROM kelahiran WHERE id_kelahiran='".$_GET['id_kelahiran']."'";
$myQry = mysql_query($mySql);
header('location:../../index.php?module='.$module);
}
// EDIT
else if($module=='kelahiran' AND $aksi=='edit' ){ 
$query = mysql_query("UPDATE kelahiran SET				  
				  id_kelahiran = '$id_kelahiran',
				  no_kk = '$no_kk',
				  nik = '$nik',
				  nama = '$nama',
				  jk = '$jk',
				  tempat_dilahirkan = '$tempat_dilahirkan',
				  agama = '$agama',
				  tempat_lahir = '$tempat_lahir',
				  tanggal_lahir = '$tanggal_lahir',
				  pukul_lahir = '$pukul_lahir',
				  jenis_kelahiran = '$jenis_kelahiran',
				  kelahiran_ke = '$kelahiran_ke',
				  penolong = '$penolong',
				  nama_penolong = '$nama_penolong',
				  berat_bayi = '$berat_bayi',
				  panjang_bayi  = '$panjang_bayi',
				  ayah = '$ayah',
				  ibu = '$ibu',
				  alamat = '$alamat'
				  WHERE id_kelahiran = '$id_kelahiran'");
header('location:../../index.php?module='.$module);
}

//Tambah
else if($module=='kelahiran' AND $aksi=='tambah' ){ 
	header('location:../../index.php?module='.$module);
$sql = "INSERT INTO kelahiran (id_kelahiran, no_kk, nik, nama, jk, tempat_dilahirkan, agama, tempat_lahir, tanggal_lahir, pukul_lahir, jenis_kelahiran, kelahiran_ke, penolong, nama_penolong, berat_bayi, panjang_bayi, ayah, ibu, alamat ) VALUES ('$id_kelahiran', '$no_kk', '$nik', '$nama', '$jk', 'tempat_dilahirkan', '$agama', '$tempat_lahir', '$tanggal_lahir', '$pukul_lahir', '$jenis_kelahiran', '$kelahiran_ke', '$penolong', '$nama_penolong', '$berat_bayi', '$panjang_bayi', '$ayah', '$ibu', '$alamat')";
$simpan = mysql_query($sql);
}
?>