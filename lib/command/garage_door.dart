class GarageDoor {
  String _location;
  bool _isOpen;

  GarageDoor(String location) {
    _location = location;
  }

  bool get isOpen => _isOpen;

  void up() {
    _isOpen = true;
    print("$_location garage door is Up");
  }

  void down() {
    _isOpen = false;
    print("$_location garage door is Down");
  }

  void stop() {
    print("$_location garage door is Stopped");
  }

  void lightOn() {
    print("$_location garage light is on");
  }

  void lightOff() {
    print("$_location garage light is off");
  }
}
