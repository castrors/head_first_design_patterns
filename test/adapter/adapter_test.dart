import 'package:head_first_design_patterns/adapter/duck_adapter.dart';
import 'package:head_first_design_patterns/adapter/mallard_duck.dart';
import 'package:test/test.dart';

void main() {
  group('Adapter tests that', () {
    test('Duck and Turkey can be the same object adapted', () {
      var duck = MallardDuck();
      var duckAdapter = DuckAdapter(duck);

      duckAdapter.gobble();
      duckAdapter.fly();

      expect(duckAdapter.gobble(), duck.quack());
      expect(duckAdapter.fly(), duck.fly());
    });
  });
}
