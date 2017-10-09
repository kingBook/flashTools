package app.swfTool.swf.tags
{
	import app.swfTool.swf.SWF;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.records.TagHeaderRecord;
	import app.swfTool.utils.ByteArrayUtil;
	
	public class MetadataTag extends SWFTag
	{
		public var metadata:String;

		public function MetadataTag(metadata:String = '')
		{
			this.metadata = metadata;
		}
		/*
		override public function read(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.read(swf, swfBytes);

			metadata = swfcontext.bytes.readString();
		}
		override public function write(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.write(swf, swfBytes);

			swfBytes.writeString(metadata);
		}
		*/
	}
}