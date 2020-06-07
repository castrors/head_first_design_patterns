import 'package:head_first_design_patterns/factory/ingredient_factory/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns/factory/pizza/pizza.dart';

class CheesePizza extends Pizza{
  PizzaIngredientFactory ingredientFactory;

  CheesePizza(PizzaIngredientFactory ingredientFactory){
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('preparing '+ name);
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
  }

}