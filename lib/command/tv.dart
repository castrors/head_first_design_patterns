class TV{
  String _location;
  int _channel;

  TV(String location){
    _location = location;
  }

  void on(){
    print('$_location TV is on');
  }

  void off(){
    print('$_location TV is off');   
  }

  void setInputChannel(){
    _channel = 3;
    print('Channel is set for VCR');
  }
}