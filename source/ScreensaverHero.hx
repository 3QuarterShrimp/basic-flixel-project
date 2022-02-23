package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxRandom;
import flixel.util.FlxSpriteUtil;

class ScreensaverHero extends FlxSprite
{
	public var direction:Int;

	public function new(x:Int, y:Int)
	{
		super(x, y);
		var randomDirection:FlxRandom = new FlxRandom();
		this.direction = randomDirection.int(0, 7);
	}

	override function update(elapsed:Float)
	{
		if (this.x < 500)
		{
			this.color = 0xff0000;
		}
		if (this.x > 500)
		{
			this.color = 0x00ff00;
		}
		if (this.direction == 0)
		{
			this.x--;
		}
		else if (this.direction == 1)
		{
			this.x--;
			this.y--;
		}
		else if (this.direction == 2)
		{
			this.y--;
		}
		else if (this.direction == 3)
		{
			this.x++;
		}
		else if (this.direction == 4)
		{
			this.x++;
			this.y++;
		}
		else if (this.direction == 5)
		{
			this.y++;
		}
		else if (this.direction == 6)
		{
			this.x--;
			this.y++;
		}
		else
		{
			this.x++;
			this.y--;
		}
		if (FlxG.mouse.pressed)
		{
			this.direction++;
			if (this.direction == 8)
			{
				this.direction = 0;
			}
		}
		if (this.x <= 0)
		{
			this.x = 1000;
		}
		else if (this.x >= FlxG.width)
		{
			this.x = 0;
		}
		if (this.y <= 0)
		{
			this.y = 500;
		}
		else if (this.y >= FlxG.height)
		{
			this.y = 0;
		}

		super.update(elapsed);
	}
}
