import 'package:head_first_design_patterns/decorator/beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffee';
  }

  @override
  double cost() {
    return 0.89;
  }
}
