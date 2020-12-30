import 'composite_iterator.dart';
import 'menu_component.dart';

class Menu extends MenuComponent {
  Iterator<MenuComponent> iterator = null;
  List<MenuComponent> menuComponents = <MenuComponent>[];
  String _name;
  String _description;

  Menu(String name, String description) {
    this._name = name;
    this._description = description;
  }

  void add(MenuComponent component) {
    menuComponents.add(component);
  }

  void remove(MenuComponent component) {
    menuComponents.remove(component);
  }

  MenuComponent getChild(int i) {
    return menuComponents[i];
  }

  String getName() => _name;

  String getDescription() => _description;

  @override
  Iterator<MenuComponent> createIterator() {
    if (iterator == null) {
      iterator = CompositeIterator(menuComponents.iterator);
    }
    return iterator;
  }

  @override
  void printMenu() {
    print("\n $_name");
    print(", $_description");
    print("---------------------");

    Iterator<MenuComponent> iterator = menuComponents.iterator;
    while (iterator.moveNext()) {
      MenuComponent menuComponent = iterator.current;
      menuComponent.printMenu();
    }
  }
}
