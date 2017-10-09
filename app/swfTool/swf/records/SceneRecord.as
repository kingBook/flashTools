package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class SceneRecord implements IRecord
	{
		public var offset:uint;
		public var name:String;
		
		public function SceneRecord(offset:uint = 0, name:String = '')
		{
			this.offset = offset;
			this.name = name;
		}
	}
}