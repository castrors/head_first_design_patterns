import 'package:head_first_design_patterns/decorator/beverage.dart';
import 'package:head_first_design_patterns/decorator/beverages/beverages.dart';
import 'package:head_first_design_patterns/decorator/condiments/condiments.dart';
import 'package:head_first_design_patterns/decorator/size.dart';
import 'package:test/test.dart';

void main() {
  group('Decorator tests that', () {
    test('Displays beverage information', () {
      Beverage beverage = Espresso();
      expect('${beverage.getDescription()} \$${beverage.cost()}',
          'Espresso \$1.99');
    });

    test('Displays beverage information with two condiments', () {
      Beverage beverage = Decaf();
      beverage = Soy(beverage);
      beverage = Whip(beverage);
      expect(
          '${beverage.getDescription()} \$${beverage.cost().toStringAsFixed(2)}',
          'Decaf Coffee, Soy, Whip \$1.25');
    });

    test('Displays beverage information with three condiments', () {
      Beverage beverage = HouseBlend();
      beverage = Soy(beverage);
      beverage = Mocha(beverage);
      beverage = Whip(beverage);
      expect(
          '${beverage.getDescription()} \$${beverage.cost().toStringAsFixed(2)}',
          'House Blend Coffee, Soy, Mocha, Whip \$1.29');
    });
    test('Displays beverage information with three condiments and Venti size',
        () {
      Beverage beverage = HouseBlend();
      beverage.setSize(Size.VENTI);
      beverage = Soy(beverage);
      beverage = Mocha(beverage);
      beverage = Whip(beverage);
      expect(
          '${beverage.getDescription()} \$${beverage.cost().toStringAsFixed(2)}',
          'House Blend Coffee, Soy, Mocha, Whip \$1.39');
    });
  });
}
