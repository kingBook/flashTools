package app.swfTool.swf8.records
{

	import app.swfTool.swf3.records.FillStyleArrayRecord3;
	import app.swfTool.swf.records.IShapeRecord;

	public class ShapeWithStyleRecord4
	{
		public var fillStyles:FillStyleArrayRecord3;
		public var lineStyles:LineStyle2ArrayRecord;
		public var numFillBits:uint;
		public var numLineBits:uint;
		public var shapeRecords:Vector.<IShapeRecord>;

		public function ShapeWithStyleRecord4(fillStyles:FillStyleArrayRecord3 = null,
											  lineStyles:LineStyle2ArrayRecord = null,
											  numFillBits:uint = 0, numLineBits:uint = 0,
											  shapeRecords:Vector.<IShapeRecord> = null)
		{
			this.fillStyles = fillStyles;
			this.lineStyles = lineStyles;
			this.numFillBits = numFillBits;
			this.numLineBits = numLineBits;
			this.shapeRecords = shapeRecords;
		}
		
		public function toXML():XML{
			var xml:XML=<ShapeWithStyleRecord4/>;
			xml.appendChild(fillStyles.toXML());
			xml.appendChild(lineStyles.toXML());
			xml.@numFillBits=numFillBits;
			xml.@numLineBits=numLineBits;
			for(var i:int=0;i<shapeRecords.length;i++){
				xml.appendChild(shapeRecords[i].toXML());
			}
			return xml;
		}
	}
}