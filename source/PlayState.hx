package;

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
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
