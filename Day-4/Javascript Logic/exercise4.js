function isArthmeticProgression(numbers) {
    let selisih = numbers[1] - numbers[0];
  
    for (let i = 1; i < numbers.length - 1; i++) {
      if (numbers[i + 1] - numbers[i] !== selisih) {
        return false;
      }
    }
  
    return true;
}    

console.log(isArthmeticProgression([1, 2, 3, 4, 5, 6])); // true
console.log(isArthmeticProgression([2, 4, 6, 12, 24])); // false
console.log(isArthmeticProgression([2, 4, 6, 8])); // true
console.log(isArthmeticProgression([2, 6, 18, 54])); // false
console.log(isArthmeticProgression([1, 2, 3, 4, 7, 9])); // false