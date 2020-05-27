import 'package:head_first_design_patterns/decorator/beverage.dart';

import 'size.dart';

abstract class CondimentDecorator extends Beverage {
  Beverage beverage;
  String getDescription();

  Size getSize() {
    return beverage.getSize();
  }
}
