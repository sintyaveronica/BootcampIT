function reverseString(text){ 
    let reversedArray = text.split('');
    reversedArray.reverse();
    return reversedArray.join('');
}

console.log(reverseString('Hello world and coders'));
console.log(reverseString('John Doe'));
console.log(reverseString("Im a bookworm"));
