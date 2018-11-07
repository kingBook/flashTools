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
			var xml:XML=createXML();
			xml.@color=backgroundColor.toString();
			return xml.toXMLString();
		}
	}
}