import 'package:head_first_design_patterns/strategy/behaviors/knife_behavior.dart';
import 'package:head_first_design_patterns/strategy/character.dart';
import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class King extends Character {
  King() {
    setWeaponBehavior(KnifeBehavior());
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
