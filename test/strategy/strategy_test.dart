import 'package:head_first_design_patterns/strategy/behaviors/behaviors.dart';
import 'package:head_first_design_patterns/strategy/characters/characters.dart';
import 'package:test/test.dart';

void main() {
  group('Strategy tests that', () {
    test('King uses Knife', () {
      final king = King();
      expect(king.fight(), 'I speak softly, but carry a sharp knife.');
    });
    test('Queen uses BowAndArrow', () {
      final queen = Queen();
      expect(queen.fight(), 'My quiver and bow are ready!');
    });
    test('Knight uses Sword', () {
      final knight = Knight();
      expect(knight.fight(), 'Another notch on my sword.');
    });
    test('Troll uses Axe', () {
      final troll = Troll();
      expect(troll.fight(), 'Axe! Taste my blade!');
    });

    test('Knight changes his weapon to Axe', () {
      final knight = Knight();
      expect(knight.fight(), 'Another notch on my sword.');
      knight.setWeaponBehavior(AxeBehavior());
      expect(knight.fight(), 'Axe! Taste my blade!');
    });
  });
}
