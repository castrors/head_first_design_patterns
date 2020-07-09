 import 'amplifier.dart';
import 'cd_player.dart';
import 'dvd_player.dart';
import 'popcorn_popper.dart';
import 'projector.dart';
import 'screen.dart';
import 'theater_lights.dart';
import 'tuner.dart';

class HomeTheaterFacade {
	Amplifier amp;
	Tuner tuner;
	DvdPlayer dvd;
	CdPlayer cd;
	Projector projector;
	TheaterLights lights;
	Screen screen;
	PopcornPopper popper;
 
	 HomeTheaterFacade(Amplifier amp, 
				 Tuner tuner, 
				 DvdPlayer dvd, 
				 CdPlayer cd, 
				 Projector projector, 
				 Screen screen,
				 TheaterLights lights,
				 PopcornPopper popper) {
 
		this.amp = amp;
		this.tuner = tuner;
		this.dvd = dvd;
		this.cd = cd;
		this.projector = projector;
		this.screen = screen;
		this.lights = lights;
		this.popper = popper;
	}
 
	 void watchMovie(String movie) {
		print("Get ready to watch a movie...");
		popper.on();
		popper.pop();
		lights.dim(10);
		screen.down();
		projector.on();
		projector.wideScreenMode();
		amp.on();
		amp.setDvd(dvd);
		amp.setSurroundSound();
		amp.setVolume(5);
		dvd.on();
		dvd.play(movie);
	}
 
 
	 void endMovie() {
		print("Shutting movie theater down...");
		popper.off();
		lights.on();
		screen.up();
		projector.off();
		amp.off();
		dvd.stop();
		dvd.eject();
		dvd.off();
	}

	 void listenToCd(String cdTitle) {
		print("Get ready for an audiopile experence...");
		lights.on();
		amp.on();
		amp.setVolume(5);
		amp.setCd(cd);
		amp.setStereoSound();
		cd.on();
		cd.playTitle(cdTitle);
	}

	 void endCd() {
		print("Shutting down CD...");
		amp.off();
		amp.setCd(cd);
		cd.eject();
		cd.off();
	}

	 void listenToRadio(double frequency) {
		print("Tuning in the airwaves...");
		tuner.on();
		tuner.setFrequency(frequency);
		amp.on();
		amp.setVolume(5);
		amp.setTuner(tuner);
	}

	 void endRadio() {
		print("Shutting down the tuner...");
		tuner.off();
		amp.off();
	}
}