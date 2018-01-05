package app.swfTool.swf6.tags
{	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf3.records.ActionRecord;

	public class DoInitActionTag extends SWFTag
	{
		public var spriteId:uint;
		public var actions:Vector.<ActionRecord>;
	}
}