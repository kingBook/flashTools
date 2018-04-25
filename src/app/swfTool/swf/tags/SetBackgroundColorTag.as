package app.swfTool.swf.tags
{
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.SWF;
	import app.swfTool.swf.records.RGBRecord;
	import app.swfTool.swf.records.TagHeaderRecord;

	public class SetBackgroundColorTag extends SWFTag
	{
		public var backgroundColor:RGBRecord;
		
		public function SetBackgroundColorTag(backgroundColor:RGBRecord = null)
		{
			this.backgroundColor = backgroundColor;
		}
		
		override public function toXMLString():String{
			var xml:XML=<SetBackgroundColorTag/>;
			var r:String=backgroundColor.red.toString(16);
			var g:String=backgroundColor.green.toString(16);
			var b:String=backgroundColor.blue.toString(16);
			xml.@color="#"+r+g+b;
			return xml.toXMLString();
		}
	}
}