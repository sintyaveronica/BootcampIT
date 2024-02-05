<?php
//Include file koneksi ke database
include "koneksi.php";

//menerima nilai dari kiriman form input-barang 
$nama=$_POST["name"];
$role=$_POST["role"];
$availability=$_POST["availability"];
$age=$_POST["age"];
$location=$_POST["location"];
$experience=$_POST["year"];
$email=$_POST["email"];

//Query input menginput data kedalam tabel barang
  $sql="insert into profile (nama,role,availability, age, lokasi, year_experience, email) values
		('$nama','$role','$availability', '$age', '$location', '$experience', '$email')";

//Mengeksekusi/menjalankan query diatas	
  $hasil=mysqli_query($kon,$sql);

//Kondisi apakah berhasil atau tidak
  if ($hasil) {
	header("location:challenge3.html");
    // echo "Berhasil insert data";
  }
else {
	echo "Failed";
	exit;
}  

?>