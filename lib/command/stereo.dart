class Stereo {
  String _location;
  int _volume;

  Stereo(String location) {
    _location = location;
  }

  int get getVolume => _volume;

  void on() {
    print('$_location stereo is on');
  }

  void off() {
    _volume = 0;
    print('$_location stereo is off');
  }

  void setCD() {
    print('$_location stereo is set for CD input');
  }

  void setDVD() {
    print('$_location stereo is set for DVD input');
  }

  void setRadio() {
    print('$_location stereo is set for Radio');
  }

  void setVolume(int volume) {
    _volume = volume;
    //valid range: 1-11 (after all 11 is better than 10, right?)
    print('$_location stereo volume set to $volume');
  }
}
