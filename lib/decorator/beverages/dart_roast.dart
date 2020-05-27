import 'package:head_first_design_patterns/decorator/beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = 'Dark Roast Coffee';
  }

  @override
  double cost() {
    return 0.99;
  }
}
