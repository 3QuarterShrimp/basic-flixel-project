package;

import ScreensaverHero.ScrennsaverHero;
import flixel.FlxObject;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var mainPlayer = new Hero(300, 300);
		add(mainPlayer);
		var hellowWorld = new FlxText(200, 200, 0, "Hello world", 64);
		hellowWorld.setBorderStyle(OUTLINE, 0x00ff00, 20, 20);
		hellowWorld.bold = true;
		hellowWorld.angle = 54;
		hellowWorld.color = 0xff0000;
		add(hellowWorld);
		var screensaverHero = new ScrennsaverHero(200, 200);
		var screensaverHero1 = new ScrennsaverHero(100, 100);
		var screensaverHero2 = new ScrennsaverHero(100, 100);
		var screensaverHero3 = new ScrennsaverHero(100, 100);
		add(screensaverHero);
		add(screensaverHero1);
		add(screensaverHero2);
		add(screensaverHero3);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
