package app.swfTool
{
	import app.swfTool.swf.records.TagHeaderRecord;
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf7.tags.ScriptLimitsTag;

	public class SWF7Reader extends SWF6Reader
	{
		private static var FILE_VERSION:uint = 7;
		
		public function SWF7Reader()
		{
			version = FILE_VERSION;
		}
		
		override protected function readTag(context:SWFReaderContext, header:TagHeaderRecord):SWFTag
		{
			var tag:SWFTag;
			if(context.fileVersion < FILE_VERSION)
			{
				tag = super.readTag(context, header);
			}
			else
			{
				switch(header.type)
				{
					/*
					case 60: tag = readDefineVideoStreamTag(context, header);
					case 66: tag = readSetTabIndexTag(context, header);
					*/
					case 65:
						tag = readScriptLimitsTag(context, header);
						break;
					default:
						tag = super.readTag(context, header);
						break;
				}
			}
			return tag;
		}
		
		protected function readScriptLimitsTag(context:SWFReaderContext, header:TagHeaderRecord):ScriptLimitsTag
		{
			var tag:ScriptLimitsTag = new ScriptLimitsTag();
			tag.maxRecursionDepth = context.bytes.readUI16();
			tag.scriptTimeoutSeconds = context.bytes.readUI16();
			return tag;
		}
	}
}