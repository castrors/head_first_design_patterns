import 'package:head_first_design_patterns/factory/ingredient/ingredients.dart';

import 'pizza_ingredient_factory.dart';

class NyPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Cheese createCheese() => ReggianoCheese();

  @override
  Clams createClam() => FreshClams();

  @override
  Dough createDough() => ThinCrustDough();

  @override
  Pepperoni createPepperoni() => SlicedPepperoni();

  @override
  Sauce createSauce() => MarinaraSauce();

  @override
  List<Veggies> createVeggies() => [Garlic(), Onion(), Mushroom(), RedPepper()];
}
