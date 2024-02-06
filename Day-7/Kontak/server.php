<?php 
        session_start();
        $db = mysqli_connect('localhost', 'root', '', 'kontak');

        // initialize variables
        $nama = "";
        $telp = "";
        $email = "";
        $update = false;

        if (isset($_POST['save'])) {
                $nama = $_POST['nama'];
                $email = $_POST['email'];
                $telp = $_POST['nomor_telpon'];

                mysqli_query($db, "INSERT INTO info (nama, email, nomor_telp) VALUES ('$name', '$email','$telp')"); 
                $_SESSION['message'] = "is saved"; 
                header('location: display.php');
        }

        if (isset($_POST['update'])) {
                $nama = $_POST['nama'];
                $email = $_POST['email'];
                $telp = $_POST['nomor_telpon'];
        
                mysqli_query($db, "UPDATE info SET nama='$nama', email='$email', nomor_telp='$telp' WHERE id_info=$id");
                $_SESSION['message'] = "Address updated!"; 
                header('location: display.php');
        }

        if (isset($_GET['del'])) {
                $id = $_GET['del'];
                mysqli_query($db, "DELETE FROM info WHERE id_info=$id");
                $_SESSION['message'] = "Address deleted!"; 
                header('location: index.php');
        }
