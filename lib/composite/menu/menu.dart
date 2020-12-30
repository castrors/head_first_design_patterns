import 'package:head_first_design_patterns/composite/menuiterator/menu_item.dart';

import 'menu_component.dart';

class Menu extends MenuComponent {
  List<MenuComponent> menuComponents = <MenuComponent>[];
  String _name;
  String _description;

  Menu(String name, String description) {
    _name = name;
    _description = description;
  }

  @override
  void add(MenuComponent menuComponent) {
    menuComponents.add(menuComponent);
  }

  @override
  void remove(MenuComponent menuComponent) {
    menuComponents.remove(menuComponent);
  }

  @override
  MenuComponent getChild(int i) {
    return menuComponents[i];
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
  void printMenu() {
    print("\n$_name");
    print(", $_description");
    print("---------------------");

    Iterator<MenuComponent> iterator = menuComponents.iterator;
    while (iterator.moveNext()) {
      final menuComponent = iterator.current;
      menuComponent.printMenu();
    }
  }
}
