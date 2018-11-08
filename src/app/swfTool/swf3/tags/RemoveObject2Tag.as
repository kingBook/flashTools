package app.swfTool.swf3.tags
{
	
	
	import app.swfTool.swf.tags.SWFTag;

	public class RemoveObject2Tag extends SWFTag
	{
		
		public var depth:uint;
		
		override public function toXMLString():String{
			var xml:XML=createXML();
			xml.@depth=depth;
			return xml.toXMLString();
		}
		
	}
}