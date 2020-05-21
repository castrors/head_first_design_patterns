import 'package:head_first_design_patterns/strategy/weapon_behavior.dart';

class BowAndArrowBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'My quiver and bow are ready!';
  }
}
