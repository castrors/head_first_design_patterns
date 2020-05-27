import 'package:head_first_design_patterns/decorator/beverage.dart';
import 'package:head_first_design_patterns/decorator/condiment_decorator.dart';

class Milk extends CondimentDecorator {
  Milk(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Milk';
  }

  @override
  double cost() {
    return beverage.cost() + 0.10;
  }
}
