function threeStepAB(text) {
    text = text.toLowerCase();

    for (let i = 0; i < text.length - 4; i++) {
      if (text[i] === 'a' && text[i + 4] === 'b') {
        return true;
      }
      else if (text[i] === 'b' && text[i + 4] === 'a') {
        return true;
      }
    }

    return false;
}

console.log(threeStepAB('lane borrowed')); // true
console.log(threeStepAB('i am sick')); // false
console.log(threeStepAB('you are boring')); // true
console.log(threeStepAB('barbarian')); // true
console.log(threeStepAB('bacon and meat')); // false