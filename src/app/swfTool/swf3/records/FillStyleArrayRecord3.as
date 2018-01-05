package app.swfTool.swf3.records
{

	import app.swfTool.swf.records.IRecord;

	public class FillStyleArrayRecord3 implements IRecord
	{
		public var fillStyles:Vector.<FillStyleRecord2>;

		public function FillStyleArrayRecord3(count:uint = 0, countExtended:uint = 0, fillStyles:Vector.<FillStyleRecord2> = null)
		{
			this.fillStyles = fillStyles;
		}
	}
}