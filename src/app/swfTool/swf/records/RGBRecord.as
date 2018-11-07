package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class RGBRecord implements IRGBRecord
	{
		public var red:uint;
		public var green:uint;
		public var blue:uint;
		
		public function RGBRecord(red:uint = 0, green:uint = 0, blue:uint = 0)
		{
			this.red = red;
			this.green = green;
			this.blue = blue;
		}
		
		public function toString():String{
			var r:String=red.toString(16);
			var g:String=green.toString(16);
			var b:String=blue.toString(16);
			return r+g+b;
		}
	}
}