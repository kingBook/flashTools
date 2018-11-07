package app.swfTool.swf.records
{
	import app.swfTool.SWFByteArray;
	import app.swfTool.SWFReader;

	public class RGBARecord implements IRGBRecord
	{
		public var red:uint;
		public var green:uint;
		public var blue:uint;
		public var alpha:uint;
		
		public function RGBARecord(red:uint = 0, green:uint = 0, blue:uint = 0, alpha:uint = 0xFF)
		{
			this.red = red;
			this.green = green;
			this.blue = blue;
			this.alpha = alpha;
		}
		
		public function toString():String{
			var r:String=red.toString(16);
			var g:String=green.toString(16);
			var b:String=blue.toString(16);
			var a:String=alpha.toString(16);
			return r+g+b+a;
		}
	}
}