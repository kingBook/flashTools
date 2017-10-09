﻿package app.swfTool.swf.records{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class TagHeaderRecord implements IRecord{
		public static var SHORT_HEADER_MAX_LENGTH:uint = 0x3F;
		
		public var type:uint;
		public var length:uint;
		public var forceLong:Boolean;
		
		public function TagHeaderRecord(type:uint = 0, length:uint = 0, forceLong:Boolean = false){
			this.type = type;
			this.length = length;
			this.forceLong = forceLong;
		}
		
		public function isLong():Boolean{
			return length >= SHORT_HEADER_MAX_LENGTH;
		}
	};
}