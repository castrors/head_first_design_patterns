import 'amplifier.dart';

class CdPlayer {
  bool _isOn;
  String description;
  int currentTrack;
  Amplifier amplifier;
  String title;

  CdPlayer(String description, Amplifier amplifier) {
    this.description = description;
    this.amplifier = amplifier;
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

  void eject() {
    title = null;
    print(description + " eject");
  }

  void playTitle(String title) {
    this.title = title;
    currentTrack = 0;
    print(description + " playing \"" + title + "\"");
  }

  void playTrack(int track) {
    if (title == null) {
      print(description + " can't play track $currentTrack, no cd inserted");
    } else {
      currentTrack = track;
      print(description + " playing track $currentTrack");
    }
  }

  void stop() {
    currentTrack = 0;
    print(description + " stopped");
  }

  void pause() {
    print(description + " paused \"" + title + "\"");
  }

  String toString() {
    return description;
  }
}
