package app.swfTool.swf3.tags
{
	
	import app.swfTool.swf.tags.SWFTag;

	public class DefineSpriteTag extends SWFTag
	{
		public var spriteId:uint;
		public var frameCount:uint;
		public var controlTags:Vector.<SWFTag>;
		
		
		override public function toXMLString():String{
			var xml:XML=createXML();
			xml.@spriteId=spriteId;
			xml.@frameCount=frameCount;
			for(var i:int=0;i<controlTags.length;i++){
				var tag:SWFTag=controlTags[i];
				var tagXML:XML=XML(tag.toXMLString());
				xml.appendChild(tagXML);
			}
			return xml.toXMLString();
		}
	}
}