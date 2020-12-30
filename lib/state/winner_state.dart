import 'package:head_first_design_patterns/state/gumball_machine.dart';

import 'state.dart';

class WinnerState implements State {
  GumballMachine _gumballMachine;

  WinnerState(GumballMachine gumballMachine) {
    _gumballMachine = gumballMachine;
  }

  @override
  void dispense() {
    _gumballMachine.releaseBall();
    if (_gumballMachine.count == 0) {
      _gumballMachine.setState(_gumballMachine.soldOutState);
    } else {
      _gumballMachine.releaseBall();
      print('YOU\'RE A WINNER! You got two gumballs for your quarter');
      if (_gumballMachine.count > 0) {
        _gumballMachine.setState(_gumballMachine.noQuarterState);
      } else {
        print('Oops, out of gumballs!');
        _gumballMachine.setState(_gumballMachine.soldOutState);
      }
    }
  }

  @override
  void ejectQuarter() {
    print('Please wait, we\'re already giving you a Gumball');
  }

  @override
  void insertQuarter() {
    print('Please wait, we\'re already giving you a Gumball');
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('Turning again doesn\'t get you another gumball!');
  }

  @override
  String toString() =>
      'despensing two gumballs for your quarter, because YOU\'RE A WINNER!';
}
