<?php
//this function created by utamasolution
//More information visit www.utamasolution.com / 085773518857
// definisikan koneksi ke database
$server = "localhost:3306";
$username = "root";
$password = "";
$database = "dbtoko";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");

?>
