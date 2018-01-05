package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;

	public class LineStyleArrayRecord2 implements IRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var lineStyles:Vector.<LineStyleRecord2>;
	}
}