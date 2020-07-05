
import 'package:test/test.dart';

import '../../lib/singleton/chocolate_boiler.dart';

void main() {
  group('Singleton tests that', () {
    test('check singleton instances', () {
      var boiler = ChocolateBoiler.getInstance();
      boiler.fill();
      boiler.boil();
      boiler.drain();
       
      var boiler2 = ChocolateBoiler.getInstance();

      expect(boiler, boiler2);
    });

  });
}
