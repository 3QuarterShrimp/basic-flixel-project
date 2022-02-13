package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var mainPlayer = new Hero(300, 300);
		add(mainPlayer);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
