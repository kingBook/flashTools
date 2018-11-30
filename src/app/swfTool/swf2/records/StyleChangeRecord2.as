package app.swfTool.swf2.records
{

	import app.swfTool.swf.records.IShapeRecord;
	import app.swfTool.swf.records.LineStyleArrayRecord;

	public class StyleChangeRecord2 implements IShapeRecord
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
		public var fillStyles:FillStyleArrayRecord2;
		public var lineStyles:LineStyleArrayRecord;
		public var numFillBits:uint;
		public var numLineBits:uint;
		
		public function toXML():XML{
			var xml:XML=<StyleChangeRecord2/>;
			xml.@stateNewStyles=stateNewStyles;
			xml.@stateLineStyle=stateLineStyle;
			xml.@stateFillStyle1=stateFillStyle1;
			xml.@stateFillStyle0=stateFillStyle0;
			xml.@stateMoveTo=stateMoveTo;
			xml.@moveBits=moveBits;
			xml.@moveDeltaX=moveDeltaX;
			xml.@moveDeltaY=moveDeltaY;
			xml.@fillStyle0=fillStyle0;
			xml.@fillStyle1=fillStyle1;
			xml.@lineStyle=lineStyle;
			xml.appendChild(fillStyles.toXML());
			xml.appendChild(lineStyles.toXML());
			xml.@numFillBits=numFillBits;
			xml.@numLineBits=numLineBits;
			return xml;
		}
		
	}
	
	
}