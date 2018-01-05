package app.swfTool.swf2.tags
{
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.RectangleRecord;
	import app.swfTool.swf2.records.ShapeWithStyleRecord2;

	public class DefineShape2Tag extends SWFTag
	{
		public var shapeId:uint;
		public var shapeBounds:RectangleRecord;
		public var shapes:ShapeWithStyleRecord2;
	}
}