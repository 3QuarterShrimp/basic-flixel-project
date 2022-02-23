import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class ControllableHero extends FlxSprite
{
	public function new(x:Int, y:Int)
	{
		super(x, y);
		this.makeGraphic(50, 50, FlxColor.WHITE);
	}

	override function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.LEFT)
		{
			this.x--;
		}
		if (FlxG.keys.pressed.RIGHT)
		{
			this.x++;
		}
		if (FlxG.keys.pressed.UP)
		{
			this.y--;
		}
		if (FlxG.keys.pressed.DOWN)
		{
			this.y++;
		}
	}
}
