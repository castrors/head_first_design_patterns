import 'package:head_first_design_patterns/adapter/duck.dart';

class WildTurkey implements Duck {
  @override
  String fly() => 'I am flying a shord distance';

  @override
  String quack() => 'Gobble gobble';
}
