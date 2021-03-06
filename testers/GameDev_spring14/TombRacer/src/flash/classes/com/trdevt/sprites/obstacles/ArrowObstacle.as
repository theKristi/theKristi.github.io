package com.trdevt.sprites.obstacles 
{
	import org.flixel.FlxObject;
	/**
	 * ...
	 * @author Anthony Della Maggiora
	 */
	public class ArrowObstacle extends Obstacle 
	{
		[Embed(source = "../../../../../../images/SpriteSheets/ArrowSprite.png")] private var _arrowSprite:Class;
		private var _speed:Number;
		private var _direction:uint;
		public function ArrowObstacle(X:Number=0, Y:Number=0, direction:uint = FlxObject.NONE, speed:Number = 7) 
		{
			super(X, Y, _arrowSprite);
			
			this._speed = speed;
			this._direction = direction;
			
			this.loadRotatedGraphic(this._spriteSheet, 4, -1, true, true);// , 32, 32);
			this.addAnimation("idle", [1]);
			
			if (_direction == FlxObject.UP)
				this.angle = 270;
			else if (_direction == FlxObject.DOWN)
				this.angle = 90;
			else if (_direction == FlxObject.LEFT)
				this.angle = 180;
			else
				this.angle = 0;

			this.facing = _direction;
		}
		
		override public function update():void
		{
			super.update();
			if (_direction == FlxObject.NONE)
			{
				return;
			}
			else if (_direction == FlxObject.UP)
			{
				this.y -= _speed;
			}
			else if (_direction == FlxObject.DOWN)
			{
				this.y += _speed;
			}
			else if (_direction == FlxObject.LEFT)
			{
				this.x -= _speed;
			}
			else if (_direction == FlxObject.RIGHT)
			{
				this.x += _speed;
			}
		}
		
		override public function onCollision():void
		{
			this.kill();
		}
	}

}