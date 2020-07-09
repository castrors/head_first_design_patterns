class PopcornPopper {
  bool _isOn;
  String description;

  PopcornPopper(String description) {
    this.description = description;
  }

  bool get isOn => _isOn;

  void on() {
    print(description + " on");
    _isOn = true;
  }

  void off() {
    print(description + " off");
    _isOn = false;
  }

  void pop() {
    print(description + " popping popcorn!");
  }

  String toString() {
    return description;
  }
}
