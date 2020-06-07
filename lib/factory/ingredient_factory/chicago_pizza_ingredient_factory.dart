import 'package:head_first_design_patterns/factory/ingredient/ingredients.dart';

import 'pizza_ingredient_factory.dart';

class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Cheese createCheese() => MozzarellaCheese();

  @override
  Clams createClam() => FrozenClams();

  @override
  Dough createDough() => ThickCrustDough();

  @override
  Pepperoni createPepperoni() => SlicedPepperoni();

  @override
  Sauce createSauce() => PlumTomatoSauce();

  @override
  List<Veggies> createVeggies() => [BlackOlives(), Spinach(), Eggplant()];
}
