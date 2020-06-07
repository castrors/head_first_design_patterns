import 'package:flutter/material.dart';
import 'package:head_first_design_patterns/factory/pizza/pizza.dart';

abstract class PizzaStore {
  @protected
  Pizza createPizza(String item);

  Pizza orderPizza(String type) {
    Pizza pizza = createPizza(type);
    print('Making a ${pizza.name} ---');
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }
}
