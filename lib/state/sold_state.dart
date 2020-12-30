import 'package:head_first_design_patterns/state/gumball_machine.dart';

import 'state.dart';

class SoldState implements State {
  GumballMachine _gumballMachine;

  SoldState(GumballMachine gumballMachine) {
    _gumballMachine = gumballMachine;
  }

  @override
  void dispense() {
    _gumballMachine.releaseBall();
    if (_gumballMachine.count > 0) {
      _gumballMachine.setState(_gumballMachine.noQuarterState);
    } else {
      print('Oops, out of gumballs!');
      _gumballMachine.setState(_gumballMachine.soldOutState);
    }
  }

  @override
  void ejectQuarter() {
    print('Sorry, you already turned the crank');
  }

  @override
  void insertQuarter() {
    print('Please wait, we\'re already giving you a gumball');
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('Turning twice doesn\'t get you another gumball!');
  }

  @override
  String toString() => 'dispensing a gumball';
}
