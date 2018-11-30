package app.swfTool.swf3.records
{	
	import app.swfTool.swf.records.IGradientRecord;

	public class GradientRecord2 implements IGradientRecord
	{
		public var spreadMode:uint;
		public var interpolationMode:uint;
		public var numGradients:uint;
		public var gradientRecords:Vector.<GradientControlPointRecord2>;
		
		public function toXML():XML{
			var xml:XML=<GradientRecord2/>;
			xml.@spreadMode=spreadMode;
			xml.@interpolationMode=interpolationMode;
			xml.@numGradients=numGradients;
			for(var i:int=0;i<gradientRecords.length;i++){
				xml.appendChild(gradientRecords[i].toXML());
			}
			return xml;
		}
	}
}