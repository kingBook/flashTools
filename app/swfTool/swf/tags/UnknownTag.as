﻿package app.swfTool.swf.tags
{
	import app.swfTool.swf.SWF;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.records.TagHeaderRecord;
	
	import flash.utils.ByteArray;
	
	public class UnknownTag extends SWFTag
	{
		public var content:ByteArray;

		public function UnknownTag(content:ByteArray = null)
		{
			if(content == null)
			{
				content = new ByteArray();
			}

			this.content = content;
		}
		/*
		override public function read(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.read(swf, swfBytes);

			content = new ByteArray();
			if(header.length > 0)
			{
				swfcontext.bytes.readBytes(content, 0, header.length);
			}
		}
		override public function write(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.write(swf, swfBytes);

			if(content.length > 0)
			{
				swfBytes.writeBytes(content);
			}
		}
		*/
	}
}