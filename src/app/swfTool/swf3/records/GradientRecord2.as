package app.swfTool.swf3.records
{	
	import app.swfTool.swf.records.IGradientRecord;

	public class GradientRecord2 implements IGradientRecord
	{
		public var spreadMode:uint;
		public var interpolationMode:uint;
		public var numGradients:uint;
		public var gradientRecords:Vector.<GradientControlPointRecord2>;
	}
}