import 'lingkaran.dart';

void main(List<String> args){
  Lingkaran lingkaran;
  double luasLingkaran;

  lingkaran = new Lingkaran();
  lingkaran.phi = 3.14;
  lingkaran.r = 15.00;

  luasLingkaran = lingkaran.getLuas();
  print(luasLingkaran);
}