﻿<?php
include('session.php');
?>
<?php
include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
	<style>
	.images-container h3 { text-align:center;font-family:Arial, Helvetica, sans-serif;font-size:20px;color:#999999}
	.images {float:left;width:190px; padding:5px; border: dotted 1px #eeeeee; margin:0;}
	.images h3 {text-align:center;font-family:Arial, Helvetica, sans-serif;font-size:14px;color:#333333; margin:0px; padding:4px;}
	.images img { width:100%;height:170px;}

	.edit{float:left; text-align:center;font-size:14px; color:#fff; font-family:Arial, Helvetica, sans-serif; background:#0066FF; padding:4px; display:block}
	.hapus {float:right;text-align:center;font-size:14px; color:#ffffff; font-family:Arial, Helvetica, sans-serif; background:#FF0000; padding:4px; display:block; width:80px;}
	a{text-decoration:none;}
	</style>
    <title>Rumah Zakat Al-Ikhlas | Admin Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="image/favicon.ico" type="image/x-icon" />
    <meta name="robots" content="index, follow" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="en" />
    <meta name="keywords" content="mz,mzcreatives,creatives,template,website,onepage,webdesign,portfolio,build website,themeforest" />
    <meta name="description" content="Now you can buy or use template from themeforest design by mzcreatives" />
    <meta property="og:title" content="One page website template for multipurpose website" />

    <!--css-->
		<link href="client/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link href="css/theme1024.css" rel="stylesheet" type="text/css" />
    <link href="css/theme990.css" rel="stylesheet" type="text/css" />
    <link href="css/theme768.css" rel="stylesheet" type="text/css" />
    <link href="css/theme480.css" rel="stylesheet" type="text/css" />
    <link href="css/theme320.css" rel="stylesheet" type="text/css" />
    <link href="css/theme319.css" rel="stylesheet" type="text/css" />
    <link href="css/quickweb.css" rel="stylesheet" type="text/css" />
    <link href="fonts/style.css" rel="stylesheet" type="text/css" />
    <link href="css/slider_css.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,700,900' rel='stylesheet' type='text/css'/>

    <!--js-->
    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/plugin.js"></script>
</head>
<body>
    <div class="main">
        <header class="header">
            <div class="container">
                <div class="col-12">
                    <div class="col-4 mb-11 logo-set">
                        <div class="logo"><img src="image/blacklogo.png" /></div>
                    </div>
                        <nav class="mob-menu-icon mb-1">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </nav>

                        <nav class="col-8 menu mob-menu pull-right">
                            <nav class="mob-menu-icon" style="padding: 26px 26px;width: 100%;box-sizing: border-box;border-bottom:2px solid #1565C0; ">
                                <span class="icon-bar slide-icon-menu-color"></span>
                                <span class="icon-bar slide-icon-menu-color"></span>
                                <span class="icon-bar slide-icon-menu-color"></span>
                            </nav>
                        <div class="menu-item-box center ">---------------------------------------------</div>
                        <div class="menu-item-box center ">Selamat Datang : <?php echo $login_session; ?></div>
						<div class="menu-item-box center "><a href="adminlogout.php">Log Out</a></div>
                        </nav>
                        <hr>
                </div>
            </div>
        </header>


<section class="call-action section-padding color-white">
    <div class="container">



		<section class="call-action section-padding color-white">
        <div class="container">
		<div class="button-2" style="text-align:center;">Data Donatur</div>
		<br><br><br>
		<div class="row content-wrapper welcome-service-row plr0">
		<div class="columns large-12 plr0">
		<div class="row content-wrapper-inner">
		<div class="columns content welcome-box large-12">
		<?php $sql=mysql_query("select * from donasi
		join kategori on kategori.id_kategori=donasi.id_kategori
		join bank on bank.id_bank=donasi.id_bank
		join donatur on donatur.id_donatur=donasi.id_donatur order by id_donasi desc");$no=0;?>
			<table class="table table-hover">
				<thead>
					<tr>
						<td>Nama</td>
						<td>email</td>
						<td>No Telepon</td>
						<td>Tgl Donasi</td>
						<td>Tujuan Donasi</td>
						<td>Jumlah Donasi</td>
						<td>Bank Donasi</td>
						<td>Konfirmasi</td>
						<td>a.n Pengirim</td>
					</tr>
				</thead>
				<tbody>
					<?php while($datapost=mysql_fetch_array($sql)){$no++?>
					<tr>
						<td><?= $datapost['sapaan'].' '.$datapost['nama_lengkap']; ?></td>
						<td><?= $datapost['email']; ?></td>
						<td><?= $datapost['no_telp']; ?></td>
						<td><?= $datapost['tgl_proses']; ?></td>
						<td><?= $datapost['nama_kategori']; ?></td>
						<td>Rp <?= number_format($datapost['jumlah'],'0','.','.'); ?></td>
						<td><?= $datapost['nama_bank']; ?></td>
						<td>
							<?php if ($datapost['bukti_konfirmasi']==''): ?>
								<div class="label label-warning">belum</div>
							<?php else: ?>
								<a target="_blank" href="bukti_konfirmasi/<?= $datapost['bukti_konfirmasi']; ?>">
									<div class="label label-success">sudah</div>
								</a>
							<?php endif; ?>
						</td>
						<td><?= $datapost['an_rekening']?></td>
					</tr>
					<?php }?>
				</tbody>
			</table>

		<br><br><br>
		</div>
		</div>
		</div>
		</div>
		</div>
		<br><br>
		<ul>
			<li><div class="call-action-but" style="text-align:center;"><a href="adminpage.php">Back to Admin</a></div></li>
		</ul>
        </section>


    	<div class="clear"></div>
    </div>
</section>

    <!--footer-->
    <section class="footer">
        <div class="bottom-footer">
            <div class="container">
                <div class="col-12">
                    <div class="col-6 mb-6 social"><div class="col-3"><i class="quickweb-icon-facebook"></i></div><div class="col-3"><i class="quickweb-icon-twitter"></i></div><div class="col-3"><i class="quickweb-icon-youtube"></i></div><div class="col-3"><i class="quickweb-icon-gplus-1"></i></div></div>
                </div>
                <div class="col-12 creator" style="padding-top:25px;">
                    <div class="col-6 copyright">© 2016 All Rights Reserved by Rumah Zakat Al-Ikhlas </div>
                </div>
            </div>
        </div>
    </section>

    </div>

    <script type="text/javascript">
        thumb_slider({

            thumbs_to_show: 1,
            thumbs_to_move: 1,
            thumbs_width: 0,
            thumbs_count: 0,
            timeout: 10000,
            parent_id: "main_slider",
            container_class: "thumb_slider",
            thumb_class: "thumbs",
            spacing: 0,
            processing: false,
            hover: false,
            next_class: "next",
            prev_class: "prev",
            timer: setTimeout(function () { })
        });
    </script>

</body>
</html>
