class Screen {
  bool _isUp;
  String description;

  Screen(String description) {
    this.description = description;
  }

  bool get isPreparedToWatch => _isUp == false;

  void up() {
    print(description + " going up");
    _isUp = true;
  }

  void down() {
    print(description + " going down");
    _isUp = false;
  }

  String toString() {
    return description;
  }
}
