import 'package:head_first_design_patterns/state/gumball_machine.dart';
import 'package:head_first_design_patterns/state/has_quarter_state.dart';
import 'package:head_first_design_patterns/state/no_quarter_state.dart';
import 'package:head_first_design_patterns/state/sold_out_state.dart';
import 'package:test/test.dart';

void main() {
  group('State tests that', () {
    test('check initial state', () {
      GumballMachine gumballMachine = GumballMachine(10);

      expect(gumballMachine.state.toString(),
          NoQuarterState(gumballMachine).toString());
    });

    test('check put quarter', () {
      GumballMachine gumballMachine = GumballMachine(10);

      gumballMachine.insertQuarter();

      expect(gumballMachine.state.toString(),
          HasQuarterState(gumballMachine).toString());
    });

    test('check insert and eject quarter', () {
      GumballMachine gumballMachine = GumballMachine(10);

      gumballMachine.insertQuarter();
      gumballMachine.ejectQuarter();

      expect(gumballMachine.state.toString(),
          NoQuarterState(gumballMachine).toString());
    });

    test('check insert quarter and turn crank', () {
      GumballMachine gumballMachine = GumballMachine(10);

      gumballMachine.insertQuarter();
      gumballMachine.turnCrank();

      expect(gumballMachine.state.toString(),
          NoQuarterState(gumballMachine).toString());
    });

    test('check insert quarter and turn crank and is the last gumball', () {
      GumballMachine gumballMachine = GumballMachine(1);

      gumballMachine.insertQuarter();
      gumballMachine.turnCrank();

      expect(gumballMachine.state.toString(),
          SoldOutState(gumballMachine).toString());
    });
  });
}
