function urutHuruf(text) {
    // Built-in sort test    
    //    return text.split('').sort().join('');
    let arr = text.toLowerCase().split('');
    
    for (let i = 0; i < arr.length - 1; i++) {
        for (let j = 0; j < arr.length - i - 1; j++) {
          if (arr[j] > arr[j + 1]) {
    
            let temp = arr[j];
            arr[j] = arr[j + 1];
            arr[j + 1] = temp;
          }
        }
      }
    
      // return arry to string
      return arr.join('');
    }
    
    console.log(urutHuruf('Halo')); 
    console.log(urutHuruf('qwerty')); 
    console.log(urutHuruf('qwertyuiopasdfghjklzxcvbnm')); 