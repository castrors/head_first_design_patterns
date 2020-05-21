import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

abstract class Character {
  WeaponBehavior weapon;
  String fight();
  void setWeaponBehavior(WeaponBehavior w);
}