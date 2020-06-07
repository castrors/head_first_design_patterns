import 'package:flutter/foundation.dart';
import 'package:head_first_design_patterns/factory/ingredient_factory/ny_pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns/factory/ingredient_factory/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns/factory/pizza/pizza.dart';
import 'package:head_first_design_patterns/factory/pizza/pizzas.dart';

import 'pizza_store.dart';

class NyPizzaStore extends PizzaStore {

  @protected
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
    PizzaIngredientFactory ingredientFactory = NyPizzaIngredientFactory();

    if (item == 'cheese') {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName('New York Style Cheese Pizza');
    } else if (item == 'veggie') {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName('New York Style Veggie Pizza');
    } else if (item == 'clam') {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName('New York Style Clam Pizza');
    } else if (item == 'pepperoni') {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName('New York Style Pepperoni Pizza');
    }

    return pizza;
  }
}
