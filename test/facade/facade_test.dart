import 'package:head_first_design_patterns/facade/amplifier.dart';
import 'package:head_first_design_patterns/facade/cd_player.dart';
import 'package:head_first_design_patterns/facade/dvd_player.dart';
import 'package:head_first_design_patterns/facade/home_teater_facade.dart';
import 'package:head_first_design_patterns/facade/popcorn_popper.dart';
import 'package:head_first_design_patterns/facade/projector.dart';
import 'package:head_first_design_patterns/facade/screen.dart';
import 'package:head_first_design_patterns/facade/theater_lights.dart';
import 'package:head_first_design_patterns/facade/tuner.dart';
import 'package:test/test.dart';

void main() {
  group('Facade tests that', () {
    test('setup home theater to watch a movie', () {
      var amplifier = Amplifier('Top-O-Line Amplifier');
      var tuner = Tuner('Top-O-Line AM/FM Tuner', amplifier);
      var dvdPlayer = DvdPlayer('Top-O-Line DVD Player', amplifier);
      var cdPlayer = CdPlayer('Top-O-Line CD Player', amplifier);
      var projector = Projector('Top-O-Line Projector', dvdPlayer);
      var lights = TheaterLights('Theater Ceiling Lights');
      var screen = Screen('Theater Screen');
      var popper = PopcornPopper('Popcorn Popper');

      var homeTheater = HomeTheaterFacade(amplifier, tuner, dvdPlayer, cdPlayer,
          projector, screen, lights, popper);

      homeTheater.watchMovie('Scott Pilgrim vs. the World');
      expect(amplifier.isOn, true);
      expect(dvdPlayer.isOn, true);
      expect(projector.isOn, true);
      expect(lights.getLevel, 10);
      expect(screen.isPreparedToWatch, true);
      expect(popper.isOn, true);

      homeTheater.endMovie();
      expect(amplifier.isOn, false);
      expect(dvdPlayer.isOn, false);
      expect(projector.isOn, false);
      expect(lights.getLevel, 100);
      expect(screen.isPreparedToWatch, false);
      expect(popper.isOn, false);
    });
  });
}
