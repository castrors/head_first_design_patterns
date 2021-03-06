import 'package:head_first_design_patterns/factory/ingredient_factory/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns/factory/pizza/pizza.dart';

class PepperoniPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  PepperoniPizza(PizzaIngredientFactory ingredientFactory) {
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('preparing ' + name);
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    veggies = ingredientFactory.createVeggies();
    pepperoni = ingredientFactory.createPepperoni();
  }
}
