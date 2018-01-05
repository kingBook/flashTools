package app.swfTool.swf8.tags
{
	
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.LanguageCodeRecord;
	import app.swfTool.swf8.records.FontShapeRecord;
	import app.swfTool.swf.records.RectangleRecord;
	import app.swfTool.swf8.records.KerningRecord;

	public class DefineFont3Tag extends SWFTag
	{
		public var fontId:uint;
		public var fontFlagsHasLayout:Boolean;
		public var fontFlagsShiftJIS:Boolean;
		public var fontFlagsSmallText:Boolean;
		public var fontFlagsANSI:Boolean;
		public var fontFlagsWideOffsets:Boolean;
		public var fontFlagsWideCodes:Boolean;
		public var fontFlagsItalic:Boolean;
		public var fontFlagsBold:Boolean;
		public var languageCode:LanguageCodeRecord;
		public var fontNameLen:uint;
		public var fontName:Vector.<uint>;
		public var numGlyphs:uint;
		public var offsetTable:Vector.<uint>;
		public var codeTableOffset:uint;
		public var glyphShapeTable:Vector.<FontShapeRecord>;
		public var codeTable:Vector.<uint>;
		public var fontAscent:int;
		public var fontDescent:int;
		public var fontLeading:int;
		public var fontAdvanceTable:Vector.<int>;
		public var fontBoundsTable:Vector.<RectangleRecord>;
		public var kerningCount:uint;
		public var fontKerningTable:Vector.<KerningRecord>;
	}
}