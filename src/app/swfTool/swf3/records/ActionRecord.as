package app.swfTool.swf3.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;
	import app.swfTool.swf.records.IRecord;
	
	import flash.utils.ByteArray;

	public class ActionRecord implements IRecord
	{
		public var actionCode:uint;
		public var length:uint;
		//TODO: IActionRecord
		public var action:ByteArray;
	}
}