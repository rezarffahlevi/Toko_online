<?php
require_once "library/koneksi.php";
require_once "library/fungsi_standar.php";
?>
<a href='index.php?halaman=form_data_master&kode=unit_insert' class='btn btn-small btn-primary'>
   <i class="halflings-icon white plus"></i> <span>Tambah Data</span>
   </a>
   <br/>
   <br/>
   
  

<div class='row-fluid sortable'>		
				<div class='box span12'>
					<div class='box-header' data-original-title>
						<h2><i class='halflings-icon user'></i><span class='break'></span>Data Unit</h2>
						<div class='box-icon'>
							<a href='#' class='btn-setting'><i class='halflings-icon wrench'></i></a>
							<a href='#' class='btn-minimize'><i class='halflings-icon chevron-up'></i></a>
							<a href='#' class='btn-close'><i class='halflings-icon remove'></i></a>
						</div>
					</div>
					<div class='box-content'>
						<table class='table table-striped table-bordered bootstrap-datatable datatable'>
						  <thead>
							  <tr>
								  <th>No</th>
								  <th>Unit</th>
								  <th>Ketentuan Eceran</th>
								  <th><center>Actions</center></th>
							  </tr>
						  </thead>   
						  <tbody>
							
							<?php
		$qtmpil_barang="select * from unit order by unit_id asc";						
		$qp_brg=mysql_query($qtmpil_barang) or die('Gagal');
		$no=1;
		while($row1=mysql_fetch_array($qp_brg)){ ?>
		<tr><td><?php echo "$no"; ?></td>
          <td><?php echo "$row1[nama_unit]"; ?></td>
          <td><?php echo "$row1[eceran] ".$row1['keterangan']; ?></td>
          <td><center><?php echo "<a class='btn btn-mini btn-primary' href=index.php?halaman=form_ubah_data&kode=unit_update&id=$row1[unit_id]>"; ?>
          	 <i class='halflings-icon white edit'></i>
			 <?php echo "</a> ";
			 
			 echo "<a class='btn btn-mini btn-danger' href='proses.php?proses=unit_delete&id=$row1[unit_id]'>"; ?>
          	 <i class='halflings-icon white trash'></i>
			 <?php echo "</a>";

         	 
          echo"</center></td>
		
		
								
							</tr>";
							$no++;}?>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->