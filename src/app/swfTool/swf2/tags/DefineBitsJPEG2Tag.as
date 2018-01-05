package app.swfTool.swf2.tags
{
	
	import flash.utils.ByteArray;
	import app.swfTool.swf.tags.SWFTag;
	
	public class DefineBitsJPEG2Tag extends SWFTag
	{
		private static const PNG_SIGNATURE:Array = [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A];
		private static const GIF_SIGNATURE:Array = [0x47, 0x49, 0x46, 0x38, 0x39, 0x61];
		
		public var characterID:uint;
		public var imageData:ByteArray;

		public function DefineBitsJPEG2Tag(characterID:uint = 0, imageData:ByteArray = null)
		{
			this.characterID = characterID;
			this.imageData = imageData;
		}
	}
}