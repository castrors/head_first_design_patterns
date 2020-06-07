import 'package:head_first_design_patterns/factory/ingredient/ingredients.dart';
import 'package:head_first_design_patterns/factory/store/chicago_pizza_store.dart';
import 'package:head_first_design_patterns/factory/store/ny_pizza_store.dart';
import 'package:test/test.dart';

void main() {
  group('Factory tests that', () {
    test('builds new york style cheese pizza', () {
      var pizzaStore = NyPizzaStore();
      var pizza = pizzaStore.orderPizza('cheese');

      expect(pizza.name, 'New York Style Cheese Pizza');
    });
    test('builds chicago style cheese pizza', () {
      var pizzaStore = ChicagoPizzaStore();
      var pizza = pizzaStore.orderPizza('cheese');

      expect(pizza.name, 'Chicago Style Cheese Pizza');
    });

    test('check that new york style cheese pizza got the right ingredients',
        () {
      var pizzaStore = NyPizzaStore();
      var pizza = pizzaStore.orderPizza('cheese');

      expect(pizza.dough, isA<ThinCrustDough>());
      expect(pizza.sauce, isA<MarinaraSauce>());
      expect(pizza.cheese, isA<ReggianoCheese>());
      expect(pizza.clam, null);
      expect(pizza.pepperoni, null);
      expect(pizza.veggies, null);
    });

    test('check that chicago style cheese pizza got the right ingredients',
        () {
      var pizzaStore = ChicagoPizzaStore();
      var pizza = pizzaStore.orderPizza('cheese');

      expect(pizza.dough, isA<ThickCrustDough>());
      expect(pizza.sauce, isA<PlumTomatoSauce>());
      expect(pizza.cheese, isA<MozzarellaCheese>());
      expect(pizza.clam, null);
      expect(pizza.pepperoni, null);
      expect(pizza.veggies, null);
    });

    test('check that new york style veggie pizza got the right ingredients',
        () {
      var pizzaStore = NyPizzaStore();
      var pizza = pizzaStore.orderPizza('veggie');

      expect(pizza.dough, isA<ThinCrustDough>());
      expect(pizza.sauce, isA<MarinaraSauce>());
      expect(pizza.cheese, isA<ReggianoCheese>());
      expect(pizza.veggies.length, 4);
      expect(pizza.clam, null);
      expect(pizza.pepperoni, null);

    });

     test('check that chicago style veggie pizza got the right ingredients',
        () {
      var pizzaStore = ChicagoPizzaStore();
      var pizza = pizzaStore.orderPizza('veggie');

      expect(pizza.dough, isA<ThickCrustDough>());
      expect(pizza.sauce, isA<PlumTomatoSauce>());
      expect(pizza.cheese, isA<MozzarellaCheese>());
      expect(pizza.veggies.length, 3);
      expect(pizza.clam, null);
      expect(pizza.pepperoni, null);

    });
  });
}
