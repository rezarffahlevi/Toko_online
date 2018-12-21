<?php  
// cek level user apakah admin atau bukan
if ($_SESSION['level'] == "admin")
{ 
	?>
<div id="sidebar-left" class="span2">
<div class="nav-collapse sidebar-nav">
<ul class="nav nav-tabs nav-stacked main-menu">

<li><a href="index.php?halaman=home"><i class="icon-home"></i><span class="hidden-tablet"> Home</span></a></li>
<li><a href="index.php?halaman=form_ubah_data&kode=identitas_update"><i class="icon-user"></i><span class="hidden-tablet"> Identitas</span></a></li>

<li><a class="dropmenu" href="#"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Data Master</span><span class="label label-important"> 6 </span></a>
 <ul>
	<li><a class="submenu" href="index.php?halaman=data_barang"><i class="icon-file-alt"></i><span class="hidden-tablet"> Barang </span></a></li>
	<li><a class="submenu" href="index.php?halaman=data_supplier"><i class="icon-file-alt"></i><span class="hidden-tablet"> Supplier </span></a></li>
	<li><a class="submenu" href="index.php?halaman=data_pelanggan"><i class="icon-file-alt"></i><span class="hidden-tablet"> Pelanggan </span></a></li>
	<li><a class="submenu" href="index.php?halaman=data_lokasi"><i class="icon-file-alt"></i><span class="hidden-tablet"> Lokasi </span></a></li>
	<li><a class="submenu" href="index.php?halaman=data_kategori"><i class="icon-file-alt"></i><span class="hidden-tablet"> Kategori </span></a></li>
	<li><a class="submenu" href="index.php?halaman=data_unit"><i class="icon-file-alt"></i><span class="hidden-tablet"> Unit </span></a></li>
 </ul>	
</li>

<li><a href="index.php?halaman=barang_masuk"><i class="icon-calendar"></i><span class="hidden-tablet"> Barang masuk</span></a></li>
<li><a href="index.php?halaman=move_barang"><i class="icon-shopping-cart"></i><span class="hidden-tablet"> Ecerin</span></a></li>

<li><a href="index.php?halaman=penjualan"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Penjualan</span></a></li>

<li><a href="index.php?halaman=stok"><i class="icon-tasks"></i><span class="hidden-tablet"> Data Stok</span></a></li>

<li><a class='dropmenu' href='#'><i class='icon-bar-chart'></i><span class='hidden-tablet'> Laporan</span><span class='label label-important'> 2 </span></a>
 <ul>
	<li><a class='submenu' href='index.php?halaman=laptrans_beli'><i class='icon-file-alt'></i><span class='hidden-tablet'> Pembelian </span></a></li>
	<li><a class='submenu' href='index.php?halaman=laptrans_jual'><i class='icon-file-alt'></i><span class='hidden-tablet'> Penjualan </span></a></li>
 </ul>	
</li>
<li><a href="#"><i class="icon-tasks"></i><span class="hidden-tablet">Cetak Barcode</span></a></li>
<li><a href="index.php?halaman=data_akun"><i class="icon-user"></i><span class="hidden-tablet"> Data Akun</span></a></li>
<li><a href="logout.php"><i class="icon-off"></i><span class="hidden-tablet"> Logout</span></a></li>

					
</ul>
</div>
</div>

<?php
}
else if($_SESSION['level'] == "user")
{
?>
<div id="sidebar-left" class="span2">
<div class="nav-collapse sidebar-nav">
<ul class="nav nav-tabs nav-stacked main-menu">

<li><a href="index.php?halaman=home"><i class="icon-home"></i><span class="hidden-tablet"> Home</span></a></li>
<li><a href="index.php?halaman=barang_masuk"><i class="icon-calendar"></i><span class="hidden-tablet"> Barang masuk</span></a></li>

<li><a href="index.php?halaman=penjualan"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Penjualan</span></a></li>

<li><a href="index.php?halaman=stok"><i class="icon-tasks"></i><span class="hidden-tablet"> Data Stok</span></a></li>
<li><a href="logout.php"><i class="icon-off"></i><span class="hidden-tablet"> Logout</span></a></li>


	 
     				
						
</ul>
</div>
</div>
<?php
}
?>