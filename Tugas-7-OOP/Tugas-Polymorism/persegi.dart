import 'bangun_datar.dart';

class Persegi extends BangunDatar{
  late double sisi;

  Persegi(double sisi){
    this.sisi = sisi;
  }

  @override
  double luas(){
    return sisi * sisi;
  }

  double keliling(){
    return 4 * sisi;
  }
}