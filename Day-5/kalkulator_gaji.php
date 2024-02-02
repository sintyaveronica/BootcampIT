<html>
<head>
    <title>Tutorial Menghitung Total Bayar dengan Script PHP</title>
</head>
<body>
    <h3>Form Hitung Total Bayar</h3>
    <form method="POST">
        <table>
            <tr>
                <td>Gaji Pokok</td>
                <td>:</td>
                <td><input type="number" name="pokok"></td>
            </tr>
            <tr>
                <td>Tunjangan</td>
                <td>:</td>
                <td><input type="number" name="tunjangan"></td>
            </tr>
            <tr>
                <td>Potongan</td>
                <td>:</td>
                <td><input type="number" name="potongan"></td>
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
            $pokok    =$_POST['pokok'];
            $tunjangan    =$_POST['tunjangan'];
            $potongan    =$_POST['potongan'];

            $bruto = $pokok + $tunjangan;
            $pajak = $bruto*0.1;
            $asuransi = $bruto * 0.05;
            $bersih    = $bruto - ($pajak+$asuransi);
            
            echo "gaji bruto anda: " . $bruto ."<br>"; 
            echo "pajak penghasilan anda: " . $pajak . "<br>"; 
            echo "asuransi kesehatan anda: " . $asuransi . "<br>"; 
            echo "take home pay anda:  " .  $bersih;
        }
    ?> 
</body>
</html>