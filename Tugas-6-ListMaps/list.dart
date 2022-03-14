// Jawaban Untuk Nomor 1
// void main(){
//   print(range(1, 10));
//   print(range(11, 18));
//   print(range(9, 1));
// }

// range(start, finish) {
//   var output = [];
//   var startNum = start;
//   var finishNum = finish;

//   if (finishNum > startNum) {
//     for (var i = startNum; i <= finishNum; i++) {
//       output.add(i);
//     }
//   } else {
//     for (var i = startNum; i >= finishNum; i--) {
//       output.add(i);
//     }
//   }
//   return output;
// }

// Jawaban Untuk Nomor 2
// void main(){
//   print(rangeWithStep(1, 10, 2));
//   print(rangeWithStep(11, 23, 3));
//   print(rangeWithStep(5, 2, 1));
// }

// rangeWithStep(start, finish, step) {
//   var output = [];

//   var startNum = start;
//   var finishNum = finish;
//   var stepNum = step;

//   if (finishNum < startNum) {
//     stepNum *= -1;
//     for (var i = startNum; i >= finishNum; i += stepNum) {
//       output.add(i);
//     }
//   } else {
//     for (var i = startNum; i <= finishNum; i += stepNum) {
//       output.add(i);
//     }
//   }

//   return output;
// }

// Jawaban Untuk Nomor 3
// void main(){
//   var input = [
//       ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
//       ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
//       ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
//       ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
//     ];

//     dataHandling(input);
// }

// dataHandling(data){
//   for (var i = 0; i < data.length; i++) {
//     var person = data[i];
//       print("Nomor ID: ${person[0]}");
//       print("Nama Lengkap: ${person[1]}");
//       print("TTL: ${person[2]} ${person[3]}");
//       print("Hobi: ${person[4]}");
//       print("");
//   }
// }

// Jawaban Untuk Nomor 4
// void main(){
//   print(balikKata("Kasur"));
//   print(balikKata("SanberCode"));
//   print(balikKata("Haji"));
//   print(balikKata("racecar"));
//   print(balikKata("SanberS"));
// }

// balikKata(input){
//   var output = "";
//   // looping secara descending mulai dari karakter string paling terakhir
//   for (var i = input.length - 1; i >= 0; i--) {
//     output += input[i];
//   }
//   return output.split(",").join(" ");
// }