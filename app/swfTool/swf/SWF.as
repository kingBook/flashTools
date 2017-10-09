package app.swfTool.swf{
	import flash.utils.ByteArray;
	import app.swfTool.swf.tags.SWFTag;

	public class SWF{
		public var header:SWFHeader;
		public var tags:Vector.<SWFTag>;
		public function SWF(header:SWFHeader=null, tags:Vector.<SWFTag>=null){
			this.header=header;
			this.tags=tags;
		}
	};
}