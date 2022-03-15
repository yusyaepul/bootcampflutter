import 'employee.dart';

void main(List<String> args){
  var myData01 = new Employee.id(123);
  var myData02 = new Employee.name("Yusyaepul");
  var myData03 = new Employee.departement("Pemeliharaan");

  print(myData01.id);
  print(myData02.name);
  print(myData03.departrement);

}