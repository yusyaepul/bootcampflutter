import 'bangun_datar.dart';
import 'persegi.dart';
import 'segitiga.dart';
import 'lingkaran.dart';

void main(List<String> args){
  BangunDatar bangunDatar = new BangunDatar();
  Persegi persegi = new Persegi(6.00);
  Segitiga segitiga = new Segitiga(3.00, 6.00);
  Lingkaran lingkaran = new Lingkaran(5.00);

  bangunDatar.luas();
  bangunDatar.keliling();

  print("Luas persegi: ${persegi.luas()}");
  print("Keliling persegi: ${persegi.keliling()}");
  print("");
  print("Luas segitiga: ${segitiga.luas()}");
  print("Keliling segitiga: ${segitiga.keliling()}");
  print("");
  print("Luas lingkaran: ${lingkaran.luas()}");
  print("Keliling lingkaran: ${lingkaran.keliling().toStringAsFixed(2)}");
}