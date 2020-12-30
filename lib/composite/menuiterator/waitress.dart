import 'menu_component.dart';

class Waitress {
  MenuComponent allMenus;

  Waitress(MenuComponent allMenus) {
    this.allMenus = allMenus;
  }

  void printMenu() {
    return allMenus.printMenu();
  }

  void printVegetarianMenu() {
    Iterator<MenuComponent> iterator = allMenus.createIterator();

    print("\nVEGETARIAN MENU\n----");

    while (iterator.moveNext()) {
      final menuComponent = iterator.current;
      try {
        if (menuComponent.isVegetarian()) {
          menuComponent.printMenu();
        }
      } catch (e) {
      }
    }
  }
}
