import '../display_element.dart';
import '../subject.dart';
import '../observer.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  double _temperature;
  double _humidity;
  Subject _weatherData;

  CurrentConditionsDisplay(Subject weatherData) {
    _weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  String display() {
    return 'Current conditions: ${_temperature}F degrees and $_humidity% humidity';
  }

  @override
  update(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    display();
  }
}
