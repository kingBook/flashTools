package app.swfTool
{
    import flash.utils.ByteArray;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.SWFHeader;
	import app.swfTool.swf.SWF;
	import app.swfTool.swf.tags.*;
	import app.swfTool.swf.records.*;
	import app.swfTool.swf.structures.*;
	import flash.utils.getQualifiedClassName;
	import app.swfTool.swf10.tags.ProductInfoTag;

	public class SWF10Reader extends SWF9Reader
	{
		private static var FILE_VERSION:uint = 10;
		
		public function SWF10Reader()
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
					case 83: tag = readDefineShape4Tag(context, header);
					case 90: tag = readDefineBitsJPEG4Tag(context, header);
					case 91: tag = readDefineFont4Tag(context, header);
					*/
					case 41:
						tag = readProductInfoTag(context, header);
						break;
					default:
						tag = super.readTag(context, header);
						break;
				}
			}
			return tag;
		}
		
		protected function readProductInfoTag(context:SWFReaderContext, header:TagHeaderRecord):ProductInfoTag
		{
			var tag:ProductInfoTag = new ProductInfoTag();
			tag.product = context.bytes.readUI32();
			tag.edition = context.bytes.readUI32();
			tag.majorVersion = context.bytes.readUI8();
			tag.minorVersion = context.bytes.readUI8();
			tag.buildLow = context.bytes.readUI32();
			tag.buildHigh = context.bytes.readUI32();
			tag.compileDateLow = context.bytes.readUI32();
			tag.compileDateHigh = context.bytes.readUI32();
			return tag;
		}
	}
}