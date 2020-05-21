import 'package:head_first_design_patterns/strategy/behaviors/axe_behavior.dart';
import 'package:head_first_design_patterns/strategy/character.dart';
import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class Troll extends Character {
  Troll() {
    setWeaponBehavior(AxeBehavior());
  }

  @override
  String fight() {
    return weapon.useWeapon();
  }

  @override
  void setWeaponBehavior(WeaponBehavior w) {
    weapon = w;
  }
}
