import 'amplifier.dart';

class Tuner {
  bool _isOn;
  String description;
  Amplifier amplifier;
  double frequency;

  Tuner(String description, Amplifier amplifier) {
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

  void setFrequency(double frequency) {
    print(description + " setting frequency to $frequency");
    this.frequency = frequency;
  }

  void setAm() {
    print(description + " setting AM mode");
  }

  void setFm() {
    print(description + " setting FM mode");
  }

  String toString() {
    return description;
  }
}
