package app.swfTool.swf8.tags
{
	
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.RectangleRecord;
	import app.swfTool.swf8.records.ShapeWithStyleRecord4;

	public class DefineShape4Tag extends SWFTag
	{
		public var shapeId:uint;
		public var shapeBounds:RectangleRecord;
		public var edgeBounds:RectangleRecord;
		public var reserved:uint;
		public var usesFillWindingRule:Boolean;
		public var usesNonScalingStrokes:Boolean;
		public var usesScalingStrokes:Boolean;
		public var shapes:ShapeWithStyleRecord4;

		public function DefineShape4Tag(shapeId:uint = 0, shapeBounds:RectangleRecord = null, edgeBounds:RectangleRecord = null, reserved:uint = 0, usesFillWindingRule:Boolean = false, usesNonScalingStrokes:Boolean = false, usesScalingStrokes:Boolean = false, shapes:ShapeWithStyleRecord4 = null)
		{
			
			this.shapeId = shapeId;
			this.shapeBounds = shapeBounds;
			this.edgeBounds = edgeBounds;
			this.reserved = reserved;
			this.usesFillWindingRule = usesFillWindingRule;
			this.usesNonScalingStrokes = usesNonScalingStrokes;
			this.usesScalingStrokes = usesScalingStrokes;
			this.shapes = shapes;
		}
	}
}