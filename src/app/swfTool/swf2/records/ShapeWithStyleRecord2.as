package app.swfTool.swf2.records
{

	import app.swfTool.swf.records.LineStyleArrayRecord;
	import app.swfTool.swf.records.IShapeRecord;

	public class ShapeWithStyleRecord2
	{
		public var fillStyles:FillStyleArrayRecord2;
		public var lineStyles:LineStyleArrayRecord;
		public var numFillBits:uint;
		public var numLineBits:uint;
		public var shapeRecords:Vector.<IShapeRecord>;
	}
}