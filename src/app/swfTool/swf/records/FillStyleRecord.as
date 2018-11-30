package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;
	
	public class FillStyleRecord implements IRecord
	{
		public var type:uint;
		public var color:RGBRecord;
		public var gradientMatrix:MatrixRecord;
		public var gradient:GradientRecord;
		public var bitmapId:uint;
		public var bitmapMatrix:MatrixRecord;
		
		public function FillStyleRecord(type:uint = 0, color:RGBRecord = null, gradientMatrix:MatrixRecord = null, gradient:GradientRecord = null, bitmapId:uint = 0, bitmapMatrix:MatrixRecord = null)
		{
			if(color == null)
			{
				color = new RGBRecord();
			}
			if(gradientMatrix == null)
			{
				gradientMatrix = new MatrixRecord();
			}
			if(gradient == null)
			{
				gradient = new GradientRecord();
			}
			if(bitmapMatrix == null)
			{
				bitmapMatrix = new MatrixRecord();
			}
			
			this.type = type;
			this.color = color;
			this.gradientMatrix = gradientMatrix;
			this.gradient = gradient;
			this.bitmapId = bitmapId;
			this.bitmapMatrix = bitmapMatrix;
		}
		
		public function toXML():XML{
			var xml:XML=<FillStyleRecord/>;
			xml.@type="0x"+type.toString(16);
			xml.@color=color.toString();
			xml.@gradientMatrix=gradientMatrix.toString();
			xml.appendChild(gradient.toXML());
			xml.@bitmapId="0x"+bitmapId.toString(16);
			xml.@bitmapMatrix=bitmapMatrix.toString();
			return xml;
		}
		
	}
}
