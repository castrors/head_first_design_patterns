import 'package:head_first_design_patterns/decorator/beverage.dart';
import 'package:head_first_design_patterns/decorator/condiment_decorator.dart';

import '../size.dart';

class Soy extends CondimentDecorator {
  Soy(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Soy';
  }

  @override
  double cost() {
    double cost = beverage.cost();
    if (beverage.getSize() == Size.TALL) {
			cost += .10;
		} else if (beverage.getSize() == Size.GRANDE) {
			cost += .15;
		} else if (beverage.getSize() == Size.VENTI) {
			cost += .20;
		}
    return cost;
  }
}
