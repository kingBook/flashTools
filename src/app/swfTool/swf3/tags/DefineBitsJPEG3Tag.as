package app.swfTool.swf3.tags
{
	import flash.utils.ByteArray;
	import app.swfTool.swf.tags.SWFTag;
	
	public class DefineBitsJPEG3Tag extends SWFTag
	{
		public var characterID:uint;
		public var alphaDataOffset:uint;
		public var imageData:ByteArray;
		public var bitmapAlphaData:ByteArray;
	}
}