import 'menu_component.dart';

class NullIterator implements Iterator<MenuComponent> {
  @override
  MenuComponent get current => null;

  @override
  bool moveNext() => false;
}
