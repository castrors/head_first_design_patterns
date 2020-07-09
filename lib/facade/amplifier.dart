import 'cd_player.dart';
import 'dvd_player.dart';
import 'tuner.dart';

class Amplifier {
  bool _isOn;
  String description;
  Tuner tuner;
  DvdPlayer dvd;
  CdPlayer cd;

  Amplifier(String description) {
    this.description = description;
  }

  bool get isOn => _isOn;

  void on() {
    _isOn = true;
    print(description + " on");
  }

  void off() {
    _isOn = false;
    print(description + " off");
  }

  void setStereoSound() {
    print(description + " stereo mode on");
  }

  void setSurroundSound() {
    print(description + " surround sound on (5 speakers, 1 subwoofer)");
  }

  void setVolume(int level) {
    print(description + " setting volume to $level");
  }

  void setTuner(Tuner tuner) {
    print(description + " setting tuner to $dvd");
    this.tuner = tuner;
  }

  void setDvd(DvdPlayer dvd) {
    print(description + " setting DVD player to $dvd");
    this.dvd = dvd;
  }

  void setCd(CdPlayer cd) {
    print(description + " setting CD player to $cd");
    this.cd = cd;
  }

  String toString() {
    return description;
  }
}
