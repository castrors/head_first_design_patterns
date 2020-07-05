class Light{
  bool _isOn;
  String _location;

  bool get isOn => _isOn;

  Light(String location){
    _location = location;
    _isOn = false;
  }

  void on() {
    _isOn = true;
    print("$_location light is on");
  }
  
  void off(){
    _isOn = false;
    print("$_location light is off");
  }
}