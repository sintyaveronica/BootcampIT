<?php include('server.php'); ?>
<?php 
        if (isset($_GET['edit'])) {
        $id = $_GET['edit'];
        $update = true;
        $record = mysqli_query($db, "SELECT * FROM info WHERE id_info=$id");

        if (count($record) == 1 ) {
                $n = mysqli_fetch_array($record);
                $nama = $n['nama'];
                $email = $n['email'];
                $telp = $n['no_telpon'];
                }
        }
?>

<!DOCTYPE html>
<html>
        <head>
        <title>Kontak</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        </head>
<body>
<body>

        <!-- update  -->
        
        <!-- <input type="hidden" name="id_konten" value="<?php echo $id; ?>"> -->

        <!-- modified form fields -->      

        <form method="post" action="server.php" >
                <div class="input-group">
                        <label>Nama Kontak</label>
                        <input type="text" name="nama" value="<?php echo $nama; ?>">
                </div>
                <div class="input-group">
                        <label>Email Kontak</label>
                        <input type="text" name="email" value="<?php echo $email; ?>">
                </div>
                <div class="input-group">
                        <label>No Telepon</label>
                        <input type="text" name="no_telp" value="<?php echo $telp; ?>">
                </div>

                <div class="input-group">
                <?php if ($update == true): ?>
                        <button class="btn" type="submit" name="update" style="background: #556B2F;" > Update</button>
                <?php else: ?>
                        <button class="btn" type="submit" name="save" >Save</button>
                <?php endif ?>
                </div>
        </form>
</body>

</html>