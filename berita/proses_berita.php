<?php
include "koneksi.php";
include "fungsi_gambar.php";

$lokasi_file = $_FILES['fupload']['tmp_name'];
$nama_file   = $_FILES['fupload']['name'];


$kategori		= $_POST['kategori'];
$judul_berita	= $_POST['judul_berita'];
$isi_berita		= $_POST['isi_berita'];


if (empty ($kategori) or empty ($judul_berita) or empty($isi_berita) )
{
// echo "<script>alert('data tidak boleh kosong');document.location.href='input_berita.php'; </script>\n"; exit ;
echo "<script>alert('data tidak boleh kosonng');document.location.href='../berita.php'; </script>\n"; exit ;
}


if (!empty($lokasi_file))
   {
    UploadFile($nama_file);

// $query = mysql_query ('insert into berita (kategori,judul_berita,isi_berita,tgl_input,gambar)values("'.$kategori.'","'.$judul_berita.'","'.$isi_berita.'","'.date('Y-m-d').'","'.$nama_file.'")');

$query = mysql_query ("insert into berita (kategori,judul_berita,isi_berita,tgl_input,gambar)values('".$kategori."','".$judul_berita."','".$isi_berita."','".date('Y-m-d')."','".$nama_file."')");

} else {
$query = mysql_query ("insert into berita (kategori,judul_berita,isi_berita,tgl_input)values('".$kategori."','".$judul_berita."','".$isi_berita."','".date('Y-m-d')."')");
// $query=mysql_query('insert into berita (kategori,judul_berita,isi_berita,tgl_input) values("'.$kategori.'","'.$judul_berita.'","'.$isi_berita.'","'.date('Y-m-d').'")');
}

$sql='insert into berita (kategori,judul_berita,isi_berita,tgl_input,gambar)values("'.$kategori.'","'.$judul_berita.'","'.$isi_berita.'","'.date('Y-m-d').'","'.$nama_file.'")';

if($query) {
  // echo "berhasil";
echo "<script>alert('data berhasil disimpan');document.location.href='../berita_arsip.php'; </script>\n";
}else{
	$error=mysql_error();
	echo mysql_error();
	echo "<br>";
	echo print_r($sql);
// echo "<script>alert('data gagal disimpan :  ');document.location.href='../berita.php'; </script>\n";
}
?>