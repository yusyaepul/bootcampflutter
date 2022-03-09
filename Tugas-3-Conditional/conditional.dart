import "dart:io";

// Jawaban Tugas No 1
// void main(List<String> args){
//   print("Apakah mau di install aplikasi? Y/T");
//   String inputYorT = stdin.readLineSync()!;

//   if(inputYorT == "y"){
//     print("Anda akan menginstall aplikasi dart");
//   } else {
//     print("Aborted");
//   }
// }
// Batas Jawaban Tugas No 1

// Jawaban Soal No 2
// void main(List<String> args){
//   print("Silakan masukkan Nama anda");
//   String inputNama = stdin.readLineSync()!;
//   print("Silakan masukkan inputPeran anda?\n inputPeran yang tersedia: Penyihir, Guard, dan Warewolf!");
//   String inputPeran = stdin.readLineSync()!;

//   if(inputNama == ""){
//       print("Nama harus diisi!");
//   } else if(inputPeran == ""){
//       print("Halo ${inputNama}, Pilih inputPeranmu untuk memulai game!");
//   } else if(inputPeran == "Penyihir"){
//       print("Selamat datang di Dunia Werewolf, ${inputNama}");
//       print("Halo Penyihir ${inputNama}, kamu dapat melihat siapa yang menjadi werewolf!");
//   } else if(inputPeran == "Guard"){
//       print("Selamat datang di Dunia Werewolf, ${inputNama}");
//       print("Halo Guard ${inputNama}, kamu akan membantu melindungi temanmu dari serangan werewolf.");
//   } else {
//       print("Selamat datang di Dunia Werewolf, ${inputNama}");
//       print("Halo Werewolf ${inputNama}, Kamu akan memakan mangsa setiap malam!");
//   }

// }
// Batas Jawaban No 2

// Jawaban Tugas No 3
// void main(List<String> args){
//   print("Hari apa sekarang?");
//   String inputHari = stdin.readLineSync()!;

//   switch (inputHari.toLowerCase()) {
//     case "senin":
//       print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
//       break;
//     case "selasa":
//       print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
//       break;
//     case "rabu":
//       print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
//       break;
//     case "kamis":
//       print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
//       break;
//     case "jumat":
//       print("Hidup tak selamanya tentang pacar.");
//       break;
//     case "sabtu":
//       print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
//       break;
//     case "minggu":
//       print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
//       break;
//   }
// }
// Batas Jawaban Tugas No 3

// Jawaban Tugas No 4
// void main(){
//   var hari = 1;
//   var bulan = 12;
//   var tahun = 2000;

//   if(hari > 31 || hari < 1) {
//     print("Masukkan tanggal antara 1 - 31");
//   } else if(bulan > 12 || bulan < 1) {
//     print("Masukkan bulan antara 1 - 12");
//   } else if(tahun > 2200 || tahun < 1900) {
//     print("Masukkan tahun antara 1900 - 2200");
//   } else {
//     switch(bulan){
//       case 1:
//           print("${hari} Januari ${tahun}");
//           break;
//       case 2:
//           print("${hari} Februari ${tahun}");
//           break;
//       case 3:
//           print("${hari} Maret ${tahun}");
//           break;
//       case 4:
//           print("${hari} April ${tahun}");
//           break;
//       case 5:
//           print("${hari} Mei ${tahun}");
//           break;
//       case 6:
//           print("${hari} Juni ${tahun}");
//           break;
//       case 7:
//           print("${hari} Juli ${tahun}");
//           break;
//       case 8:
//           print("${hari} Agustus ${tahun}");
//           break;
//       case 9:
//           print("${hari} September ${tahun}");
//           break;
//       case 10:
//           print("${hari} Oktober ${tahun}");
//           break;
//       case 11:
//           print("${hari} November ${tahun}");
//           break;
//       case 12:
//           bulan.toString();
//           print("${hari} Desember ${tahun}");
//           break;
//     }
//   }

// /* 
// Output : 1 Desember 2000
// Jika bulan lebih besar dari 13 atau kurang dari 1 Output bulan jadi : Masukkan bulan anatara 1 - 12
// Jika tahun lebih besar dari 2200 atau kurang dari 1900 Output tahun jadi : Masukkan tahun antara 1900 - 2200
// */
// }
// Batas Jawaban Tugas No 4