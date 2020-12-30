import 'gumball_machine.dart';
import 'state.dart';

class SoldOutState implements State {
  GumballMachine _gumballMachine;

  SoldOutState(GumballMachine gumballMachine) {
    _gumballMachine = gumballMachine;
  }
  @override
  void dispense() {
    print('No gumball dispensed');
  }

  @override
  void ejectQuarter() {
    print('You can\'t eject, you haven\'t inserted a quarter yet');
  }

  @override
  void insertQuarter() {
    print('You can\'t insert a quarter, the machine is sold out');
  }

  @override
  void refill() {
    _gumballMachine.setState(_gumballMachine.noQuarterState);
  }

  @override
  void turnCrank() {
    print('You turned, but there are no gumballs');
  }

  @override
  String toString() => 'sold out';
}
