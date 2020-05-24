import 'observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  List<Observer> _observers;
  double _temperature;
  double _humidity;
  double _pressure;

  WeatherData() {
    _observers = [];
  }

  @override
  notifyObservers() {
    for (var observer in _observers) {
      observer.update(_temperature, _humidity, _pressure);
    }
  }

  measurementsChanged() {
    notifyObservers();
  }

  @override
  registerObserver(observer) {
    _observers.add(observer);
  }

  @override
  removeObserver(observer) {
    int index = _observers.indexOf(observer);
    if (index >= 0) {
      _observers.removeAt(index);
    }
  }

  setMeasureMents({double temperature, double humidity, double pressure}) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    measurementsChanged();
  }
}
