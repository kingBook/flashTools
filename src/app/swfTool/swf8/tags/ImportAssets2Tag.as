package app.swfTool.swf8.tags
{
	
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.ImportAssets2Record;

	public class ImportAssets2Tag extends SWFTag
	{
		public var url:String;
		public var tags:Vector.<ImportAssets2Record>;

		public function ImportAssets2Tag(url:String = '', tags:Vector.<ImportAssets2Record> = null)
		{
			if(tags == null)
			{
				tags = new Vector.<ImportAssets2Record>();
			}

			this.url = url;
			this.tags = tags;
		}
	}
}