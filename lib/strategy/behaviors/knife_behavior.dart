import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class KnifeBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'I speak softly, but carry a sharp knife.';
  }
}
