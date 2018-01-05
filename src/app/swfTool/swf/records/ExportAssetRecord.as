package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class ExportAssetRecord
	{
		public var tag:uint;
		public var name:String;

		public function ExportAssetRecord(tag:uint = 0, name:String = '')
		{
			this.tag = tag;
			this.name = name;
		}
	}
}