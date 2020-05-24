import '../display_element.dart';
import '../observer.dart';
import '../subject.dart';

class StatisticsDisplay implements Observer, DisplayElement {
  double _maxTemperature = 0.0;
  double _minTemperature = 200;
  double _temperatureSum = 0.0;
  int _numReadings = 0;
  Subject _weatherData;

  StatisticsDisplay(Subject weatherData) {
    _weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  update(double temperature, double humidity, double pressure) {
    _temperatureSum += temperature;
    _numReadings++;

    if (temperature > _maxTemperature) {
      _maxTemperature = temperature;
    }

    if (temperature < _minTemperature) {
      _minTemperature = temperature;
    }

    display();
  }

  @override
  String display() {
    return 'Avg/Max/Min temperature = ${_temperatureSum / _numReadings}/$_maxTemperature/$_minTemperature';
  }
}
