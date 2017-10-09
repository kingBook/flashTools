package app.swfTool.swf.tags
{
	import app.swfTool.swf.SWF;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.records.RectangleRecord;
	import app.swfTool.swf.records.ShapeWithStyleRecord;
	
	public class DefineShapeTag extends SWFTag
	{
		public var shapeId:uint;
		public var shapeBounds:RectangleRecord;
		public var shapes:ShapeWithStyleRecord;
	}
}