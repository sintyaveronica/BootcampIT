const arr1 = ["Nurul", "Siregar"];
const arr2 = ["Kapal", "Laut"];

//menggabungkan array dgn concat
const merge = arr1.concat(arr2); 

//menggabungkan array merge jd satu string dengan delimiter ,
let merge2 = merge.join(",");

console.log(merge2);
