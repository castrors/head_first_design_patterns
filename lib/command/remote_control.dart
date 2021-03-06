import 'command.dart';

class RemoteControl{

  //You can use Function instead of Command :)
  List<Command> onCommands;
  List<Command> offCommands;
  Command undoCommand;

  RemoteControl(){
    onCommands = List<Command>(7);
    offCommands = List<Command>(7);

    for(var i = 0; i< 7; i++){
      onCommands[i] = (){} ;
      offCommands[i] = (){};
    }

    undoCommand = (){};
  }

  void setCommand(int slot, Command onCommand, Command offCommand){
    onCommands[slot] = onCommand;
    offCommands[slot] = offCommand;
  }

  void onButtonWasPushed(int slot){
    onCommands[slot].call();
    undoCommand = offCommands[slot];
  }

  void offButtonWasPushed(int slot){
    offCommands[slot].call();
    undoCommand = onCommands[slot];
  }

  void undoButtonWasPushed() {
    undoCommand.call();
  }

  @override
  String toString() {
    var stringBuff = StringBuffer();
    stringBuff.write('\n------ Remote Control -------\n');
		for (int i = 0; i < onCommands.length; i++) {
			stringBuff.write('[slot $i] ${onCommands[i]}    ${offCommands[i]}\n');
		}
		return stringBuff.toString();
  }
}