package app.swfTool.swf5.tags
{
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.ExportAssetRecord;

	public class ExportAssetsTag extends SWFTag
	{
		public var tags:Vector.<ExportAssetRecord>;

		public function ExportAssetsTag(tags:Vector.<ExportAssetRecord> = null)
		{
			if(tags == null)
			{
				tags = new Vector.<ExportAssetRecord>();
			}

			this.tags = tags;
		}
		/*
		override public function read(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.read(swf, swfBytes);

			var iter:uint;
			
			var count:uint = swfcontext.bytes.readUI16();
			tags = new Vector.<ExportAssetRecord>(count);
			for(iter = 0; iter < count; iter++)
			{
				var tag:ExportAssetRecord = new ExportAssetRecord();
				tag.read(swfBytes);
				tags[iter] = tag;
			}
		}
		override public function write(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.write(swf, swfBytes);

			var iter:uint;
		
			swfBytes.writeUI16(tags.length);
			for(iter = 0; iter < tags.length; iter++)
			{
				tags[iter].write(swfBytes);
			}
		}
		*/
	}
}