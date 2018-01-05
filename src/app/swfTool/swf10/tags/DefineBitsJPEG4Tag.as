package app.swfTool.swf10.tags
{
	
	import flash.utils.ByteArray;
	import app.swfTool.swf.tags.SWFTag;
	
	public class DefineBitsJPEG4Tag extends SWFTag
	{
		public var characterID:uint;
		public var alphaDataOffset:uint;
		public var deblockParam:uint;
		public var imageData:ByteArray;
		public var bitmapAlphaData:ByteArray;
	}
}