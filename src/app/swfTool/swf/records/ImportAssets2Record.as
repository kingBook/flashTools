package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;
	
	public class ImportAssets2Record implements IRecord
	{
		public var tag:uint;
		public var name:String;

		public function ImportAssets2Record(tag:uint = 0, name:String = '')
		{
			this.tag = tag;
			this.name = name;
		}
	}
}