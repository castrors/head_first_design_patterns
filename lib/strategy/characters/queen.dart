import 'package:head_first_design_patterns/strategy/behaviors/bow_and_arrow_behavior.dart';
import 'package:head_first_design_patterns/strategy/character.dart';
import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class Queen extends Character {
  Queen() {
    setWeaponBehavior(BowAndArrowBehavior());
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
