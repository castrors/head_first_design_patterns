import 'package:head_first_design_patterns/command/ceiling_fan.dart';
import 'package:head_first_design_patterns/command/garage_door.dart';
import 'package:head_first_design_patterns/command/light.dart';
import 'package:head_first_design_patterns/command/remote_control.dart';
import 'package:head_first_design_patterns/command/stereo.dart';
import 'package:test/test.dart';

void main() {
  group('Command tests that', () {
    test('load remote controll', () {
      RemoteControl remoteControl = RemoteControl();

      Light livingRoomLight = Light('Living Room');
      Light kitchenLight = Light('Kitchen Room');
      CeilingFan ceilingFan = CeilingFan('Living Room');
      GarageDoor garageDoor = GarageDoor('Main house');
      Stereo stereo = Stereo('Living Room');

      remoteControl.setCommand(0, () {
        livingRoomLight.on();
      }, livingRoomLight.off);
      remoteControl.setCommand(1, kitchenLight.on, kitchenLight.off);
      remoteControl.setCommand(2, ceilingFan.high, ceilingFan.off);

      Function stereoOnWithCD = () {
        stereo.on();
        stereo.setCD();
        stereo.setVolume(11);
      };

      remoteControl.setCommand(3, stereoOnWithCD, stereo.off);
      remoteControl.setCommand(4, garageDoor.up, garageDoor.down);

      print(remoteControl);

      remoteControl.onButtonWasPushed(0);
      expect(livingRoomLight.isOn, true);
      remoteControl.offButtonWasPushed(0);
      expect(livingRoomLight.isOn, false);
      remoteControl.onButtonWasPushed(1);
      expect(kitchenLight.isOn, true);
      remoteControl.offButtonWasPushed(1);
      expect(kitchenLight.isOn, false);
      remoteControl.onButtonWasPushed(2);
      expect(ceilingFan.getSpeed, Level.HIGH);
      remoteControl.offButtonWasPushed(2);
      expect(ceilingFan.getSpeed, Level.OFF);
      remoteControl.onButtonWasPushed(3);
      expect(stereo.getVolume, 11);
      remoteControl.offButtonWasPushed(3);
      expect(stereo.getVolume, 0);
      remoteControl.onButtonWasPushed(4);
      expect(garageDoor.isOpen, true);
      remoteControl.offButtonWasPushed(4);
      expect(garageDoor.isOpen, false);
      remoteControl.onButtonWasPushed(5);
    });
  });
}
