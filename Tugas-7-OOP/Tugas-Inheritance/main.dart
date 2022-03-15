import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args){
  ArmorTitan art = ArmorTitan();
  AttackTitan att = AttackTitan();
  BeastTitan bst = BeastTitan();
  Human h = Human();
  
  art.powerPoint = 6;
  att.powerPoint = 4;
  bst.powerPoint = 9;

  print("Power Point Armor Titan: ${art.powerPoint}");
  print("Power Poin Attack Titan: ${att.powerPoint}");
  print("Power Poin Beast Titan: ${bst.powerPoint}");
  print("");
  print("Titan Menerjang: "+ art.terjang());
  print("Titan Menyerang: "+ att.punch());
  print("Titan Melempar: "+ bst.lempar());
  print("");
  print("Kill All Titan: "+ h.killAllTitan());
}