import 'dvd_player.dart';

class Projector {
  bool _isOn;
  String description;
  DvdPlayer dvdPlayer;

  Projector(String description, DvdPlayer dvdPlayer) {
    this.description = description;
    this.dvdPlayer = dvdPlayer;
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

  void wideScreenMode() {
    print(description + " in widescreen mode (16x9 aspect ratio)");
  }

  void tvMode() {
    print(description + " in tv mode (4x3 aspect ratio)");
  }

  String toString() {
    return description;
  }
}
