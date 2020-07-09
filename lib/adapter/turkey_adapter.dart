import 'duck.dart';
import 'turkey.dart';

class TurkeyAdapter implements Duck {
  Turkey _turkey;

  TurkeyAdapter(Turkey turkey) {
    _turkey = turkey;
  }

  @override
  String fly() {
    return _turkey.fly();
  }

  @override
  String quack() {
    return _turkey.gobble();
  }
}
