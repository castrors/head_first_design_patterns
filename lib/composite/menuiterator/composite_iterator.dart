import 'package:stack/stack.dart';

import 'menu_component.dart';

class CompositeIterator implements Iterator<MenuComponent> {
  Stack<Iterator<MenuComponent>> stack = Stack<Iterator<MenuComponent>>();

  CompositeIterator(Iterator<MenuComponent> iterator) {
    stack.push(iterator);
  }

  @override
  MenuComponent get current {
    if (moveNext()) {
      Iterator<MenuComponent> iterator = stack.top();
      MenuComponent component = iterator.current;
      stack.push(component.createIterator());
      return component;
    } else {
      return null;
    }
  }

  @override
  bool moveNext() {
    if (stack.isEmpty) {
      return false;
    } else {
      Iterator<MenuComponent> iterator = stack.top();
      if (!iterator.moveNext()) {
        stack.pop();
        return moveNext();
      } else {
        return true;
      }
    }
  }
}
