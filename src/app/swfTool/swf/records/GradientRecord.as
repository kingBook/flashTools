package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;
	
	public class GradientRecord implements IGradientRecord
	{
		public var reserved:uint;
		public var numGradients:uint;
		public var gradientRecords:Vector.<GradientControlPointRecord>;

		public function GradientRecord(reserved:uint = 0, numGradients:uint = 0, gradientRecords:Vector.<GradientControlPointRecord> = null)
		{
			if(gradientRecords == null)
			{
				gradientRecords = new Vector.<GradientControlPointRecord>();
			}

			this.reserved = reserved;
			this.numGradients = numGradients;
			this.gradientRecords = gradientRecords;
		}
	}
}