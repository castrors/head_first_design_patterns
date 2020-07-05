class ChocolateBoiler {
  bool _empty;
  bool _boiled;
  static ChocolateBoiler _uniqueInstance;

  ChocolateBoiler() {
    _empty = true;
    _boiled = false;
  }

  static ChocolateBoiler getInstance() {
    if (_uniqueInstance == null) {
      print("Creating unique instance of Chocolate Boiler");
      _uniqueInstance = ChocolateBoiler();
    }
    print("Returning instance of Chocolate Boiler");
    return _uniqueInstance;
  }

  void fill() {
    _empty = false;
    _boiled = false;
    // fill the boiler with a milk/chocolate mixture
  }

  void drain() {
    if (!isEmpty() && isBoiled()) {
      _empty = true;
    }
  }

  void boil() {
    if (!isEmpty() && !isBoiled()) {
      _boiled = true;
    }
  }

  bool isEmpty() => _empty;

  bool isBoiled() => _boiled;
}
