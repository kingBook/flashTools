package app.swfTool.swf3.tags
{
	
	import app.swfTool.swf.tags.SWFTag;

	public class DefineSpriteTag extends SWFTag
	{
		public var spriteId:uint;
		public var frameCount:uint;
		public var controlTags:Vector.<SWFTag>;
	}
}