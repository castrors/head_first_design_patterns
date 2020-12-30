import 'dart:math';

import 'gumball_machine.dart';
import 'state.dart';

class HasQuarterState implements State {
  Random randomWinner = Random();

  GumballMachine _gumballMachine;

  HasQuarterState(GumballMachine gumballMachine) {
    _gumballMachine = gumballMachine;
  }

  @override
  void dispense() {
    print('No gumball dispensed');
  }

  @override
  void ejectQuarter() {
    print('Quarter returned');
    _gumballMachine.setState(_gumballMachine.noQuarterState);
  }

  @override
  void insertQuarter() {
    print('You can\'t insert another quarter');
  }

  @override
  void refill() {}

  @override
  void turnCrank() {
    print('You turned...');
    // int winner = randomWinner.nextInt(10);
    // if (winner == 0 && _gumballMachine.count > 1) {
      // _gumballMachine.setState(_gumballMachine.winnerState);
    // } else {
      _gumballMachine.setState(_gumballMachine.soldState);
    // }
  }

  @override
  String toString() {
    return 'waiting for turn of crank';
  }
}
