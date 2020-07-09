import 'amplifier.dart';

class DvdPlayer {
  bool _isOn;
  String description;
  int currentTrack;
  Amplifier amplifier;
  String movie;

  DvdPlayer(String description, Amplifier amplifier) {
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
    movie = null;
    print(description + " eject");
  }

  void play(String movie) {
    this.movie = movie;
    currentTrack = 0;
    print(description + " playing \"" + movie + "\"");
  }

  void playTrack(int track) {
    if (movie == null) {
      print(description + " can't play track $track no dvd inserted");
    } else {
      currentTrack = track;
      print(description + " playing track $currentTrack of \"$movie\"");
    }
  }

  void stop() {
    currentTrack = 0;
    print(description + " stopped \"$movie \"");
  }

  void pause() {
    print(description + " paused \"" + movie + "\"");
  }

  void setTwoChannelAudio() {
    print(description + " set two channel audio");
  }

  void setSurroundAudio() {
    print(description + " set surround audio");
  }

  String toString() {
    return description;
  }
}
