import 'menu_component.dart';

class Waitress {
  MenuComponent allMenus;

  Waitress(MenuComponent allMenus) {
    this.allMenus = allMenus;
  }

  void printMenu() {
    allMenus.printMenu();
  }
}
