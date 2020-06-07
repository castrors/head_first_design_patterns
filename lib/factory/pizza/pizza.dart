import 'package:head_first_design_patterns/factory/ingredient/ingredients.dart';

abstract class Pizza {
  String name;
  Dough dough;
  Sauce sauce;
  List<Veggies> veggies;
  Cheese cheese;
  Pepperoni pepperoni;
  Clams clam;

  void prepare();

  void bake() {
    print('Bake for 25 minutes at 350');
  }

  void cut() {
    print('Cutting the piza into diagonal slices');
  }

  void box() {
    print('Place pizza in official PizzaStore box');
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  @override
  String toString() {
    StringBuffer result = StringBuffer();
    if (dough != null) {
      result.write('$dough\n');
    }
    if (sauce != null) {
      result.write('$sauce\n');
    }
    if (cheese != null) {
      result.write('$cheese\n');
    }
    if (veggies != null) {
      result.write('${veggies.join(', ')}\n');
    }
    if (clam != null) {
      result.write('$clam\n');
    }
    if (pepperoni != null) {
      result.write('$pepperoni\n');
    }

    return result.toString();
  }
}
