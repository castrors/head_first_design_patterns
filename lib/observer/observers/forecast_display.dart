import '../display_element.dart';
import '../observer.dart';
import '../subject.dart';

class ForecastDisplay implements Observer, DisplayElement {
  double currentPressure = 29.92;
  double lastPressure;
  Subject _weatherData;

  ForecastDisplay(Subject weatherData) {
    _weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  @override
  update(double temperature, double humidity, double pressure) {
    lastPressure = currentPressure;
    currentPressure = pressure;
    display();
  }

  @override
  String display() {
    var output = 'Forecast: ';
    if (currentPressure > lastPressure) {
      output += 'Improving weather on the way!';
    } else if (currentPressure == lastPressure) {
      output += 'More of the same';
    } else if (currentPressure < lastPressure) {
      output += 'Watch out for cooler, rainy weather';
    }
    return output;
  }
}
