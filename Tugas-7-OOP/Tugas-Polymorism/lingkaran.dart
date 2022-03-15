import 'bangun_datar.dart';

class Lingkaran extends BangunDatar{
  late double r;

  Lingkaran(double r){
    this.r = r;
  }

  @override
  double luas(){
    return 3.14 * r * r;
  }

  double keliling(){
    return 2 * 3.14 * r;
  }
}