<?php

include("config.php");

// cek apakah tombol daftar sudah diklik atau blum?
if(isset($_POST['posting'])){

    // ambil data dari formulir
    $judul = $_POST['judul'];
    $gambar = $_POST['gambar'];
    $kategori = $_POST['id_kategori'];
    $artikel = $_POST['artikel'];

    // buat query
    $sql = "INSERT INTO konten (judul, gambar, id_kategori, artikel) VALUE ('$judul', '$gambar', '$kategori', '$artikel')";
    $query = mysqli_query($db, $sql);

    // apakah query simpan berhasil?
    if( $query ) {
        // kalau berhasil alihkan ke halaman index.php dengan status=sukses
        header('Location: portal.php?status=sukses');
    } else {
        // kalau gagal alihkan ke halaman indek.php dengan status=gagal
        header('Location: portal.php?status=gagal');
    }


} else {
    die("Akses dilarang...");
}

?>