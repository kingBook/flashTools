package app.swfTool.swf.tags{
	import app.swfTool.swf.records.TagHeaderRecord;
	
	public class SWFTag{
		public var header:TagHeaderRecord;
		
		public function SWFTag(header:TagHeaderRecord = null){
			if(!header) header = new TagHeaderRecord();
			
			this.header = header;
		}
	};
}