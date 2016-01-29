package
{
        import org.flixel.system.*;
		import flash.display.Sprite;
		import flash.display.Shape;
		
	
 
	public class Preloader extends FlxPreloader
	{
		[Embed(source="../../images/background.png")] protected static var prebgPNG:Class;
		
		public function Preloader():void
		{
			className = "Main";
			super();
		}
		override protected function create():void 
		{
				_buffer = new Sprite();

				addChild(_buffer);
		//Add stuff to the buffer..
				_buffer.addChild(new prebgPNG());
				var greenShape:Shape = new Shape();
greenShape.graphics.beginFill(0x00FF00);
// drawRoundRect(x position, y position, width, height, rounding)
greenShape.graphics.drawRoundRect(393, 446, 482, 24, 20);
greenShape.graphics.endFill();
var greenSprite:Sprite = new Sprite();
greenSprite.addChild(greenShape);
_buffer.addChild(greenSprite);
		}

		override protected function update(Percent:Number):void 
		{
			//Update the graphics...
		}
	}
}