package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IShapeRecord;

	public class StyleChangeRecord3 implements IShapeRecord
	{
		public var stateNewStyles:Boolean;
		public var stateLineStyle:Boolean;
		public var stateFillStyle1:Boolean;
		public var stateFillStyle0:Boolean;
		public var stateMoveTo:Boolean;
		public var moveBits:uint;
		public var moveDeltaX:int;
		public var moveDeltaY:int;
		public var fillStyle0:uint;
		public var fillStyle1:uint;
		public var lineStyle:uint;
		public var fillStyles:FillStyleArrayRecord3;
		public var lineStyles:LineStyleArrayRecord2;
		public var numFillBits:uint;
		public var numLineBits:uint;
	}
}