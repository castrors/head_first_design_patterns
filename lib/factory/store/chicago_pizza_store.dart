import 'package:head_first_design_patterns/factory/ingredient_factory/chicago_pizza_ingredient_factory.dart';

import 'package:head_first_design_patterns/factory/ingredient_factory/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns/factory/pizza/pizza.dart';
import 'package:head_first_design_patterns/factory/pizza/pizzas.dart';

import 'pizza_store.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
    PizzaIngredientFactory ingredientFactory = ChicagoPizzaIngredientFactory();

    if (item == 'cheese') {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName('Chicago Style Cheese Pizza');
    } else if (item == 'veggie') {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName('Chicago Style Veggie Pizza');
    } else if (item == 'clam') {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName('Chicago Style Clam Pizza');
    } else if (item == 'pepperoni') {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName('Chicago Style Pepperoni Pizza');
    }

    return pizza;
  }
}
