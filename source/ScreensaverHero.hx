package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxRandom;
import flixel.math.FlxVelocity;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;

class ScreensaverHero extends FlxSprite
{
	public var direction:Float;
	public var randomDirection:FlxRandom = new FlxRandom();

	public function new(x:Int, y:Int)
	{
		super(x, y);
		var randomDirection:FlxRandom = new FlxRandom();
		this.makeGraphic(25, 25, FlxColor.WHITE);
		this.direction = randomDirection.float(0, 6.28318530718);
		randDirectionMove(this.direction);
	}

	public function randDirectionMove(direction)
	{
		FlxVelocity.accelerateFromAngle(this, direction, 25, 50, true);
	}

	public function colorChange(x:Float, y:Float)
	{
		if (x > y)
		{
			this.color = 0xff0000;
		}
		if (x < y)
		{
			this.color = 0x0000ff;
		}
		else
		{
			this.color = 0x00ff00;
		}
	}

	override function update(elapsed:Float)
	{
		colorChange(this.x / FlxG.width, this.y / FlxG.height);
		if (FlxG.mouse.pressed)
		{
			var randomDirection:FlxRandom = new FlxRandom();
			randDirectionMove(randomDirection.float(0, 6.28318530718));
		}
		if (this.x <= 0)
		{
			this.x = FlxG.width;
		}
		else if (this.x >= FlxG.width)
		{
			this.x = 0;
		}
		if (this.y <= 0)
		{
			this.y = FlxG.height;
		}
		else if (this.y >= FlxG.height)
		{
			this.y = 0;
		}

		super.update(elapsed);
	}
}
