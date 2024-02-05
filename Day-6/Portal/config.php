<?php 
$host="localhost";
$user="root";
$password="";
$database="portal";

$db = new mysqli($host,$user,$password,$database);
if ($db){
	echo "Database MYSQL <b>berhasil</b> dikoneksikan<br>";
}else {
	echo"Database  MYSQL <b>gagal</b> dikoneksikan<br>";
}

$hasil=mysqli_select_db($db,$database);
if ($hasil){
	echo "Database $database berhasil dipilih";
}else {
	echo "Database $database gagal dipilih";
}

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

?>

