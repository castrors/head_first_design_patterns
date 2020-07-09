import 'package:head_first_design_patterns/adapter/duck.dart';

class MallardDuck implements Duck {
  @override
  String fly() => 'I am flying!';

  @override
  String quack() => 'Quack';
}
