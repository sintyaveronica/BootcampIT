<!DOCTYPE html>
<html>
<head>
    <title> Page Tambah Artikel </title>
</head>

<body>
    <header>
        <h3>Tambah Artikel </h3>
    </header>

    <form action="proses-tambah.php" method="POST">
        <fieldset>
        <p>
            <label for="judul">Judul: </label>
            <input type="text" name="judul" placeholder="Judul Artikel" />
        </p>
        <p>
            <label for="gambar"> Gambar: </label>
            <input type="file" name="gambar"></input>
        </p>
        <p>
            <label for="isi_artikel">Isi Artikel: </label>
            <textarea name="artikel"></textarea>
        </p>
        <p>
            <input type="submit" value="Tambah Artikel" name="tambah_artikel" />
        </p>
        </fieldset>
    </form>
    </body>
</html>