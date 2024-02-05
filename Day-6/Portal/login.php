<?php
session_start();
include 'config.php';

// Ambil data dari formulir
$username = mysqli_real_escape_string($kon, $_POST['username']);
$password = mysqli_real_escape_string($kon, $_POST['password']);

// Query untuk memeriksa login
$query = "SELECT * FROM user WHERE username = '$username' AND password = '$password'";
$result = $kon->query($query);

// Jika login berhasil, atur sesi
if ($result->num_rows == 1) {
    $_SESSION['username'] = $username;
    header("Location: dashboard.php");
} else {
    echo "Login gagal. Cek kembali username dan password.";
}

// Tutup koneksi
$kon->close();
?>
 