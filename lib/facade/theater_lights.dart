class TheaterLights {
  int _level;
  String description;

  TheaterLights(String description) {
    this.description = description;
  }

  int get getLevel => _level;

  void on() {
    print(description + " on");
    _level = 100;
  }

  void off() {
    print(description + " off");
    _level = 0;
  }

  void dim(int level) {
    print(description + " dimming to $level%");
    _level = level;
  }

  String toString() {
    return description;
  }
}
