import 'package:head_first_design_patterns/decorator/beverage.dart';

class Decaf extends Beverage {
  Decaf() {
    description = 'Decaf Coffee';
  }

  @override
  double cost() {
    return 1.05;
  }
}
