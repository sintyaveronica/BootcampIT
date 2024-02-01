function isPrime(number) {
    if (number <= 1) return false;
    
    for (let i = 2; i <= Math.sqrt(number); i++) {
      if (number % i === 0) return false;
    }
    
    return true;
  }
  
  function findPrimes(angkaPertama, angkaKedua) {
    let primes = [];
  
    for (let i = angkaPertama; i <= angkaKedua; i++) {
      if (isPrime(i)) {
        primes.push(i);
      }
    }
  
    return primes;
  }
  
  // Test Case
  console.log(findPrimes(1, 10)); // [2, 3, 5, 7]
  console.log(findPrimes(5, 10)); // [5, 7]
  console.log(findPrimes(10, 20)); // [11, 13, 17, 19]