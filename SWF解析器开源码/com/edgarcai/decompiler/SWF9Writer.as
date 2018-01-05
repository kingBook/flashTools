package com.edgarcai.decompiler
{
	import com.edgarcai.decompiler.abc.ABCWriteResult;
	import com.edgarcai.decompiler.abc.ABCWriter;
	import com.edgarcai.decompiler.data.swf.records.SymbolClassRecord;
	import com.edgarcai.decompiler.data.swf.tags.SWFTag;
	import com.edgarcai.decompiler.data.swf9.tags.DefineFontNameTag;
	import com.edgarcai.decompiler.data.swf9.tags.DoABCTag;
	import com.edgarcai.decompiler.data.swf9.tags.SymbolClassTag;
	
	import flash.utils.ByteArray;

	public class SWF9Writer extends SWF8Writer
	{
		private static var FILE_VERSION:uint = 9;
		
		public function SWF9Writer()
		{
			version = FILE_VERSION;
		}
		
		override protected function writeTag(context:SWFWriterContext, tag:SWFTag):void
		{
			switch(Object(tag).constructor)
			{
				case DoABCTag:
					writeDoABCTag(context, DoABCTag(tag));
					break;
				case SymbolClassTag:
					writeSymbolClassTag(context, SymbolClassTag(tag));
					break;
				case DefineFontNameTag:
					writeDefineFontNameTag(context, DefineFontNameTag(tag));
					break;
				default:
					super.writeTag(context, tag);
					break;
			}
		}
		
		protected function writeSymbolClassTag(context:SWFWriterContext, tag:SymbolClassTag):void
		{
			var numSymbols:uint = tag.symbols.length;
			context.bytes.writeUI16(numSymbols);
			for(var iter:uint = 0; iter < numSymbols; iter++)
			{
				writeSymbolClassRecord(context, tag.symbols[iter]);
			}
		}
		
		protected function writeDoABCTag(context:SWFWriterContext, tag:DoABCTag):void
		{
			context.bytes.writeUI32(tag.flags);
			context.bytes.writeString(tag.name);
			
			var abcWriter:ABCWriter = new ABCWriter();
			var writeResult:ABCWriteResult = abcWriter.write(tag.abcFile);
			
			if(context.result.abcMetadata.length <= context.tagId)
			{
				context.result.abcMetadata.length = context.tagId + 1;
			}
			context.result.abcMetadata[context.tagId] = writeResult.metadata;
			
			context.bytes.writeBytes(writeResult.bytes);
		}
		
		protected function writeSymbolClassRecord(context:SWFWriterContext, record:SymbolClassRecord):void
		{
			context.bytes.writeUI16(record.characterId);
			context.bytes.writeString(record.className);
		}
		
		protected function writeDefineFontNameTag(context:SWFWriterContext, tag:DefineFontNameTag):void
		{
			context.bytes.writeUI16(tag.fontId);
			context.bytes.writeString(tag.fontName);
			context.bytes.writeString(tag.fontCopyright);
		}
	}
}