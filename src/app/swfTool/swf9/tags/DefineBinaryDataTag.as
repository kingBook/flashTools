package app.swfTool.swf9.tags
{	
	import flash.utils.ByteArray;
	import app.swfTool.swf.tags.SWFTag;

	public class DefineBinaryDataTag extends SWFTag
	{
		public var characterId:uint;
		public var reserved:uint;
		public var data:ByteArray;
	}
}