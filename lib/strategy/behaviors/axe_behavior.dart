import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class AxeBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'Axe! Taste my blade!';
  }
}
