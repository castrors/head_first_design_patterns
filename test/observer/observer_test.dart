import 'package:head_first_design_patterns/observer/observers/current_conditions_display.dart';
import 'package:head_first_design_patterns/observer/observers/forecast_display.dart';
import 'package:head_first_design_patterns/observer/observers/statistics_display.dart';
import 'package:head_first_design_patterns/observer/weather_data.dart';
import 'package:test/test.dart';

void main() {
  group('Observer tests that', () {
    test('Displays observes one change of weatherData', () {
      final weatherData = WeatherData();
      final currentDisplay = CurrentConditionsDisplay(weatherData);
      final statisticsDisplay = StatisticsDisplay(weatherData);
      final forecastDisplay = ForecastDisplay(weatherData);
      weatherData.setMeasureMents(temperature: 80, humidity: 65, pressure: 30.4);
       
      expect(currentDisplay.display(), 'Current conditions: 80.0F degrees and 65.0% humidity');
      expect(statisticsDisplay.display(), 'Avg/Max/Min temperature = 80.0/80.0/80.0');
      expect(forecastDisplay.display(), 'Forecast: Improving weather on the way!');
    });

    test('Displays observes three changes of weatherData', () {
      final weatherData = WeatherData();
      final currentDisplay = CurrentConditionsDisplay(weatherData);
      final statisticsDisplay = StatisticsDisplay(weatherData);
      final forecastDisplay = ForecastDisplay(weatherData);
      weatherData.setMeasureMents(temperature: 80, humidity: 65, pressure: 30.4);
      weatherData.setMeasureMents(temperature: 82, humidity: 70, pressure: 29.2);
      weatherData.setMeasureMents(temperature: 78, humidity: 90, pressure: 29.2);
       
      expect(currentDisplay.display(), 'Current conditions: 78.0F degrees and 90.0% humidity');
      expect(statisticsDisplay.display(), 'Avg/Max/Min temperature = 80.0/82.0/78.0');
      expect(forecastDisplay.display(), 'Forecast: More of the same');
    });
  });
}
