package app.swfTool.swf.tags
{
	import app.swfTool.swf.SWF;
	import app.swfTool.SWFByteArray;
	
	public class RemoveObjectTag extends SWFTag
	{
		
		public var characterId:uint;
		public var depth:uint;
		
		override public function toXMLString():String{
			var xml:XML=createXML();
			xml.@characterId=characterId;
			xml.@depth=depth;
			return xml.toXMLString();
		}
	}
	
}