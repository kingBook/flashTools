package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;
	
	public class GradRecordRGB implements IRecord
	{
		public var ratio:uint;
		public var color:RGBRecord;

		public function GradRecordRGB(ratio:uint = 0, color:RGBRecord = null)
		{
			if(color == null)
			{
				color = new RGBRecord();
			}

			this.ratio = ratio;
			this.color = color;
		}
	}
}