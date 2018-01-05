package app.swfTool.swf2.tags
{
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf2.records.BitmapDataRecord;

	public class DefineBitsLosslessTag extends SWFTag
	{
		public var characterId:uint;
		public var bitmapFormat:uint;
		public var bitmapWidth:uint;
		public var bitmapHeight:uint;
		public var bitmapColorTableSize:uint;
		public var zlibBitmapData:BitmapDataRecord;
	}
}