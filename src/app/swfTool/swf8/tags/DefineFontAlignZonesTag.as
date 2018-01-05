package app.swfTool.swf8.tags
{
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf8.records.ZoneRecord;

	public class DefineFontAlignZonesTag extends SWFTag
	{
		public var fontId:uint;
		public var csmTableHint:uint;
		public var reserved:uint;
		public var zoneTable:Vector.<ZoneRecord>;
	}
}