<?php include('server.php'); ?>
<!-- <?php 
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
        ?> -->
<?php $results = mysqli_query($db, "SELECT * FROM info"); ?>
<head>
        <title>Manajemen Kontak</title>
        <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
                <?php if (isset($_SESSION['message'])): ?>
                        <div class="msg">
                                <?php 
                                        echo $_SESSION['message']; 
                                        unset($_SESSION['message']);
                                ?>
                        </div>
                <?php endif ?>
</body>
<table>
        <thead>
                <tr>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>No Telepon</th>
                        <th colspan="2">Action</th>
                </tr>
        </thead>
        
        <?php while ($row = mysqli_fetch_array($results)) { ?>
                <tr>
                        <td><?php echo $row['nama']; ?></td>
                        <td><?php echo $row['email']; ?></td>
                        <td><?php echo $row['nomor_telp']; ?></td>
                        <td>
                                <a href="index.php?edit=<?php echo $row['id_info']; ?>" class="edit_btn" name="edit" >Edit</a>
                        </td>
                        <td>
                                <a href="server.php?del=<?php echo $row['id_info']; ?>" class="del_btn" name="del">Delete</a>
                        </td>
                </tr>
        <?php } ?>

</table>

<form>