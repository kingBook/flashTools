package app.swfTool.swf3.tags
{
	import app.swfTool.swf.tags.SWFTag;

	public class DefineBitsLossless2Tag extends SWFTag
	{
		public var characterId:uint;
		public var bitmapFormat:uint;
		public var bitmapWidth:uint;
		public var bitmapHeight:uint;
		public var bitmapColorTableSize:uint;
		public var zlibBitmapData:*;
	}
}