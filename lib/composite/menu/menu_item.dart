import 'menu_component.dart';

class MenuItem extends MenuComponent {
  String _name;
  String _description;
  bool _vegetarian;
  double _price;

  MenuItem(String name, String description, bool vegetarian, double price) {
    _name = name;
    _description = description;
    _vegetarian = vegetarian;
    _price = price;
  }

  @override
  String getName() {
    return _name;
  }

  @override
  String getDescription() {
    return _description;
  }

  @override
  double getPrice() {
    return _price;
  }

  @override
  bool isVegetarian() {
    return _vegetarian;
  }

  @override
  void printMenu() {
    print("  $_name");
    if (isVegetarian()) {
      print("(v)");
    }
    print("\n, $_price");
    print("\n     -- $_description");
  }
}
