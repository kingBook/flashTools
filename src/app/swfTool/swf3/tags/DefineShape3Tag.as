package app.swfTool.swf3.tags
{
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.RectangleRecord;
	import app.swfTool.swf3.records.ShapeWithStyleRecord3;

	public class DefineShape3Tag extends SWFTag
	{
		public var shapeId:uint;
		public var shapeBounds:RectangleRecord;
		public var shapes:ShapeWithStyleRecord3;
	}
}