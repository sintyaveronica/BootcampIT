function gcd (firstNumber,secondNumber){
        if (secondNumber === 0) {
            return firstNumber;
        }
        
        return gcd(secondNumber, firstNumber % secondNumber);
}

//test cases 
console.log(gcd(12, 16));
console.log(gcd(50, 40));
console.log(gcd(22,99));
console.log(gcd(24,36));
console.log(gcd(17,23));