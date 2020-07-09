import 'duck.dart';
import 'turkey.dart';

class DuckAdapter implements Turkey {
  Duck _duck;

  DuckAdapter(Duck duck) {
    _duck = duck;
  }

  @override
  String fly() {
    return _duck.fly();
  }

  @override
  String gobble() {
    return _duck.quack();
  }
}
