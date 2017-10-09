package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class FrameLabelRecord implements IRecord
	{
		public var frameNum:uint;
		public var frameLabel:String;
		
		public function FrameLabelRecord(frameNum:uint = 0, frameLabel:String = '')
		{
			this.frameNum = frameNum;
			this.frameLabel = frameLabel;
		}
	}
}