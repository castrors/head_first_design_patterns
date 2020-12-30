import 'gumball_machine.dart';
import 'state.dart';

class NoQuarterState implements State {
  GumballMachine _gumballMachine;

  NoQuarterState(GumballMachine gumballMachine) {
    _gumballMachine = gumballMachine;
  }

  @override
  void dispense() {
    print('You need to pay first');
  }

  @override
  void ejectQuarter() {
    print('You haven\'t inserted a quarter');
  }

  @override
  void insertQuarter() {
    print('You inserted a quarter');
    _gumballMachine.setState(_gumballMachine.hasQuarterState);
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('You turned, but there\'s no quarter');
  }

  @override
  String toString() {
    return 'waiting for quarter';
  }
}
