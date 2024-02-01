      // Function number.
      function cekGanjilGenap(angka) {
          //  Check type
          if (typeof angka !== 'number' || isNaN(angka)) {
            // Validation
            return "Invalid Data";
          }
        
          // Clause ganjil or genap.
          if (angka % 2 === 0) {
                  return "angka genap";
          } else {
            return "angka ganjil";
          }
        }
       
        
        // Test number angka: 2, 3, 20, 21
        console.log("2:", cekGanjilGenap(2));
        console.log("3:", cekGanjilGenap(3));
        console.log("20:", cekGanjilGenap(20));
        console.log("21:", cekGanjilGenap(21));
        console.log("String:", cekGanjilGenap("hello"));
        console.log("NaN:", cekGanjilGenap(NaN));
      
  
 
