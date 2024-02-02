<html>
<head>
    <title>Cek Grade by Sintya Veronica</title>
</head>
<body>
    <h3>Form Cek Grade</h3>
    <form method="POST">
        <table>
            <tr>
                <td>Masukkan Nilai Anda</td>
                <td>:</td>
                <td><input type="text" name="nilai"></td>
            </tr>      
            <tr>
                <td></td>
                <td></td>
                <td>
                    <input type="submit" name="hitung" value="Hitung">
                    <input type="reset" name="reset" value="Reset">
                </td>
            </tr>
        </table>
    </form>
    <hr />
    <h3>Hasil :</h3>
        <!-- Coding PHP hitung total bayar ketik disini -->
        <?php
    if(isset($_POST['hitung'])){
        $nilai    =$_POST['nilai'];
        
        if($nilai >= 85 && $nilai <= 100){
            echo "A";
        } else if ($nilai >= 75 && $nilai <= 84){
            echo "B";
        } else if ($nilai >= 60 && $nilai <= 74){
            echo "C";
        } else if ($nilai >= 50 && $nilai <= 59){
            echo "D";
        } else if ($nilai >= 0 && $nilai <= 149){
            echo "E";
        } else {
            echo "bego bet";
        }
                  
    }
        ?>
</body>
</html>