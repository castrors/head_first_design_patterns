import 'package:head_first_design_patterns/decorator/beverage.dart';
import 'package:head_first_design_patterns/decorator/condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Mocha';
  }

  @override
  double cost() {
    return beverage.cost() + 0.20;
  }
}
