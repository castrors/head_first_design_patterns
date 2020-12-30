import 'menu_component.dart';
import 'null_iterator.dart';

class MenuItem extends MenuComponent {
  String _name;
  String _description;
  bool _vegetarian;
  double _price;

  MenuItem(
    String name,
    String description,
    bool vegetarian,
    double price,
  ) {
    _name = name;
    _description = description;
    _vegetarian = vegetarian;
    _price = price;
  }

  @override
  String getName() => _name;

  @override
  String getDescription() => _description;

  @override
  double getPrice() => _price;

  @override
  bool isVegetarian() => _vegetarian;

  Iterator<MenuComponent> createIterator() {
    return NullIterator();
  }

  @override
  void printMenu() {
    print("  $_name");
    if (_vegetarian) {
      print("(v)");
    }
    print(", $_price");
    print("     -- $_description");
  }
}
