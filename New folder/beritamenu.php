<?php
include "koneksi.php";
$ambil_recent = mysql_query("select id_berita,judul,tanggal from berita order by rand() limit 20",$koneksi);

?>
<div class="well sidebar-nav">
    <ul class="nav nav-list">
        <li><a href="beritatambah.php">&rarr; Tambah Berita</a></li>
        <ul type="square">
        	<?php
				while($hasil_recent= mysql_fetch_array($ambil_recent)){
        			echo "<li><a href='beritadetail.php?link=beritalihatdetail.php&id=$hasil_recent[id_berita]'>".$hasil_recent['judul']."</a></li>";
				}
			?>
        </ul>
    </ul>
</div><!--/.well ko-->