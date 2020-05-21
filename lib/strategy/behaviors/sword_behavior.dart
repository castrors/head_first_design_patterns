import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class SwordBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'Another notch on my sword.';
  }
}
