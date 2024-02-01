const person = {
    nama_depan : "Sintya Veronica Rotua",
    nama_belakang : "Munthe",
    hobi : ["Membaca", "Basket", "Nonton", "Makan"],
    memakai_kacamata : 0,
    umur : 23,
    angka_favorit : 24
};

person.nama_lengkap = person.nama_depan + " " + person.nama_belakang;
console.log(person.nama_lengkap);

person.hobi.push("coding");
console.log(person);

person.angka_favorit = 8;
console.log(person);

person.lulusan = "Hacktiv8";
console.log(person);

let hobby = Object.values(person.hobi);
hobby.forEach((hobbi) => console.log(hobbi));

let personArr = Object.entries(person);
for (array of personArr){
    console.log(array)
}


