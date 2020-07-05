enum Level { OFF, LOW, MEDIUM, HIGH }

class CeilingFan {
  String _location;
  Level _level;

  CeilingFan(String location) {
    _location = location;
  }

  Level get getSpeed => _level;

  void high() {
    _level = Level.HIGH;
    print('$_location ceiling fan is on high');
  }

  void medium() {
    _level = Level.MEDIUM;
    print('$_location ceiling fan is on medium');
  }

  void low() {
    _level = Level.LOW;
    print('$_location ceiling fan is on low');
  }

  void off() {
    _level = Level.OFF;
    print('$_location ceiling fan is off');
  }
}
