package app.swfTool.swf{
	import app.swfTool.swf.records.RectangleRecord;

	public class SWFHeader{
		public static const UNCOMPRESSED_SIGNATURE:String = 'FWS';
		public static const COMPRESSED_SIGNATURE:String = 'CWS';
		
		public var signature:String;
		public var fileVersion:uint;
		public var uncompressedSize:uint;
		
		public var frameSize:RectangleRecord;
		public var frameRate:Number;
		public var frameCount:uint;

		public function SWFHeader(signature:String = null, fileVersion:uint = 0, uncompressedSize:uint = 0,
								  frameSize:RectangleRecord = null, frameRate:Number = NaN, frameCount:uint = 0)
		{
			this.signature = signature;
			this.fileVersion = fileVersion;
			this.uncompressedSize = uncompressedSize;
			this.frameSize = frameSize;
			this.frameRate = frameRate;
			this.frameCount = frameCount;
		}
        
        public function toString():String{
            var str:String="";
            str+="{\n";
            str+="  signature:"+signature+",\n";
            str+="  fileVersion:"+fileVersion+",\n";
            str+="  uncompressedSize:"+uncompressedSize+",\n";
            str+="  frameSize:"+frameSize.toString()+",\n"
            str+="  frameRate:"+frameRate+",\n";
            str+="  frameCount:"+frameCount+"\n";
            str+="}";
            return str;
        }
	};
}