class Hottub {
  bool _on;
  int _temperature;

  void on() {
    _on = true;
  }

  void off() {
    _on = false;
  }

  void bubblesOn() {
    if (_on) {
      print('Hottub is bubbling!');
    }
  }

  void bubblesOff() {
    if (_on) {
      print('Hottub is not bubbling');
    }
  }

  void jetsOn() {
    if (_on) {
      print('Hottub jets are on');
    }
  }

  void jetsOff() {
    if (_on) {
      print('Hottub jets are off');
    }
  }

  void setTemperature(int temperature) {
    _temperature = temperature;
  }

  void heat() {
    _temperature = 105;
    print('Hottub is heating to a streaming 105 degrees');
  }

  void cool() {
    _temperature = 98;
    print('Hottub is cooling to 98 degrees');
  }
}
