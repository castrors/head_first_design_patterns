import 'observer.dart';

abstract class Subject {
  registerObserver(Observer observer);
  removeObserver(Observer observer);
  notifyObservers();
}