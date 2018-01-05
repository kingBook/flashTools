﻿package app.swfTool.swf.records
{
	public class GradientControlPointRecord implements IRecord
	{
		public var ratio:uint;
		public var color:RGBRecord;

		public function GradientControlPointRecord(ratio:uint = 0, color:RGBRecord = null)
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