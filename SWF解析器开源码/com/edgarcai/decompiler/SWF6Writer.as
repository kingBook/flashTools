package com.edgarcai.decompiler
{
	import com.edgarcai.decompiler.data.swf.records.ExportAssetRecord;
	import com.edgarcai.decompiler.data.swf.tags.SWFTag;
	import com.edgarcai.decompiler.data.swf6.tags.*;
	
	public class SWF6Writer extends SWF5Writer
	{
		public static const TAG_IDS:Object = {
			64: EnableDebugger2Tag
		};
		
		private static var FILE_VERSION:uint = 6;
		
		public function SWF6Writer()
		{
			version = FILE_VERSION;
			registerTags(TAG_IDS);
		}
		
		override protected function writeTag(context:SWFWriterContext, tag:SWFTag):void
		{
			switch(Object(tag).constructor)
			{
				case EnableDebugger2Tag:
					writeEnableDebugger2Tag(context, EnableDebugger2Tag(tag));
					break;
				default:
					super.writeTag(context, tag);
					break;
			}
		}
		
		protected function writeEnableDebugger2Tag(context:SWFWriterContext, tag:EnableDebugger2Tag):void
		{
			context.bytes.writeUI16(tag.reserved);
			context.bytes.writeString(tag.password);
		}
	}
}