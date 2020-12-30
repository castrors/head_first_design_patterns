abstract class MenuComponent {
  void add(MenuComponent menuComponent) {
    throw new UnsupportedError('Not supported');
  }

  void remove(MenuComponent menuComponent) {
    throw new UnsupportedError('Not supported');
  }

  MenuComponent getChild(int i) {
    throw new UnsupportedError('Not supported');
  }

  String getName() {
    throw new UnsupportedError('Not supported');
  }

  String getDescription() {
    throw new UnsupportedError('Not supported');
  }

  double getPrice() {
    throw new UnsupportedError('Not supported');
  }

  bool isVegetarian() {
    throw new UnsupportedError('Not supported');
  }

  Iterator<MenuComponent> createIterator();

  void printMenu() {
    throw new UnsupportedError('Not supported');
  }
}
