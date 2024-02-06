<?php include("config.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Blog Portal by Sintya Veronica </title>

	<!-- script, js, and css -->
	<link rel="stylesheet" href="portal.css">
	<link rel="stylesheet" href="portal.js">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container-xl">
	<div class="table-responsive">
	<?php if(isset($_GET['status'])): ?>
    <p>
        <?php
            if($_GET['status'] == 'sukses'){
                echo "insert  berhasil!";
            } else {
                echo "insert gagal!";
            }
        ?>
    </p>
<?php endif; ?>


		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>BLOG LIST</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="form-tambah.php" class="btn btn-success"><i class="material-icons">&#xE147;</i> <span>Tambah Artikel Baru</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>no</th>
						<th>Judul </th>
						<th>Gambar</th>
						<th>Isi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					// Ensure $db is a valid mysqli object
                    if ($db->connect_error) {
                        die("Connection failed: " . $db->connect_error);
                    }

					$sql = "SELECT * FROM konten";
					$query = mysqli_query($db, $sql);
			
					while($konten = mysqli_fetch_array($query)) {
						echo "<tr>";
			
						echo "<td>".$konten['id_posting']."</td>";
						echo "<td>".$konten['judul']."</td>";
						echo "<td><img src='data:image/jpeg;base64,".base64_encode($konten['gambar'])."' alt='Image'></td>";
						echo "<td>".$konten['isi']."</td>";
						echo "<td>";
							echo "<a href='form-edit.php?id=".$konten['id_posting']."'><i class='material-icons' data-toggle='tooltip' title='Edit'>&#xE254;</i></a>";
							echo "<a href='hapus.php?id=".$konten['id_posting']."' class='delete'><i class='material-icons' data-toggle='tooltip' title='Delete'>&#xE872;</i></a>"; 
						echo "</td>";
						echo "</tr>";
					}
					//<tr>
					//	<td>Thomas Hardy</td>
					//	<td>89 Chiaroscuro Rd, Portland, USA</td>
					//	<td>(171) 555-2222</td> 
					//	<td>
				?>
				</tbody>
			</table>
		</div>
	</div>        
</div>

<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Add Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Name</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input type="text" class="form-control" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" value="Add">
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Edit Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Name</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input type="text" class="form-control" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-info" value="Save">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Delete Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>