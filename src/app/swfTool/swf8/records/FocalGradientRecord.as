package app.swfTool.swf8.records
{
	import app.swfTool.swf.records.IGradientRecord;
	import app.swfTool.swf3.records.GradientControlPointRecord2;

	public class FocalGradientRecord implements IGradientRecord
	{
		public var spreadMode:uint;
		public var interpolationMode:uint;
		public var numGradients:uint;
		public var gradientRecords:Vector.<GradientControlPointRecord2>;
		public var focalPoint:Number;
		
		public function toXML():XML{
			var xml:XML=<FocalGradientRecord/>;
			xml.@spreadMode=spreadMode;
			xml.@interpolationMode=interpolationMode;
			xml.@numGradients=numGradients;
			for(var i:int=0;i<gradientRecords.length;i++){
				xml.appendChild(gradientRecords[i].toXML());
			}
			xml.@focalPoint=focalPoint;
			return xml;
		}
		
	}
}