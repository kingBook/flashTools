package app.swfTool.swf2.records
{

	import app.swfTool.swf.records.IRecord;
	import app.swfTool.swf.records.FillStyleRecord;

	public class FillStyleArrayRecord2 implements IRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var fillStyles:Vector.<FillStyleRecord>;
	}
}