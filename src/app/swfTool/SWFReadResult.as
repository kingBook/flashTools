package app.swfTool{
	import flash.utils.ByteArray;
	import app.swfTool.swf.SWF;
	import app.swfTool.abc.ABCReaderMetadata;
	public class SWFReadResult{
		public var swf:SWF;
		public var tagMetadata:Array = [];
        public var abcMetadata:Vector.<ABCReaderMetadata> = new Vector.<ABCReaderMetadata>;
	};
}