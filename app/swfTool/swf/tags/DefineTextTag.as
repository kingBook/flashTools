package app.swfTool.swf.tags
{
	import app.swfTool.swf.SWF;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.records.*;
	
	public class DefineTextTag extends SWFTag
	{
		public var characterId:uint;
		public var textBounds:RectangleRecord;
		public var textMatrix:MatrixRecord;
		public var glyphBits:uint;
		public var advanceBits:uint;
		public var textRecords:Vector.<TextRecord>;
	}
}