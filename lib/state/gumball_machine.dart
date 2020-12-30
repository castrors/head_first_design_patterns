import 'package:head_first_design_patterns/state/has_quarter_state.dart';

import 'no_quarter_state.dart';
import 'sold_out_state.dart';
import 'sold_state.dart';
import 'state.dart';
import 'winner_state.dart';

class GumballMachine {
  State _soldOutState;
  State _noQuarterState;
  State _hasQuarterState;
  State _soldState;
  // State _winnerState;

  State _state;
  int _count = 0;

  GumballMachine(int numberGumballs) {
    _soldOutState = SoldOutState(this);
    _noQuarterState = NoQuarterState(this);
    _hasQuarterState = HasQuarterState(this);
    _soldState = SoldState(this);
    // _winnerState = WinnerState(this);

    _count = numberGumballs;
    if (numberGumballs > 0) {
      _state = _noQuarterState;
    } else {
      _state = _soldOutState;
    }
  }

  void insertQuarter() {
    _state.insertQuarter();
  }

  void ejectQuarter() {
    _state.ejectQuarter();
  }

  void turnCrank() {
    _state.turnCrank();
    _state.dispense();
  }

  void setState(State state) {
    _state = state;
  }

  void releaseBall() {
    print('A gumball comes rolling out the slot...');
    if (_count != 0) {
      _count = _count - 1;
    }
  }

  int get count => _count;

  void refill(int count) {
    _count += count;
    print('The gumball machine was just refilled; It\'s new count is: $_count');
    _state.refill();
  }

  State get state => _state;

  State get soldOutState => _soldOutState;

  State get noQuarterState => _noQuarterState;

  State get hasQuarterState => _hasQuarterState;

  State get soldState => _soldState;

  // State get winnerState => _winnerState;

  @override
  String toString() {
    var result = '';
    result += "\nMighty Gumball, Inc.";
    result += "\nJava-enabled Standing Gumball Model #2004";
    result += "\nInventory: $_count gumball";
    if (count != 1) {
      result += "s";
    }
    result += "\n";
    result += "Machine is _state\n";
    return result.toString();
  }
}
