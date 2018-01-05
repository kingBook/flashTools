package com.edgarcai.decompiler.data.swf.records
{
	import com.edgarcai.decompiler.SWFReader;
	import com.edgarcai.decompiler.SWFByteArray;

	public class FillStyleArrayRecord implements IRecord
	{
		public var count:uint;
		public var fillStyles:Vector.<FillStyleRecord>;

		public function FillStyleArrayRecord(count:uint = 0, fillStyles:Vector.<FillStyleRecord> = null)
		{
			if(fillStyles == null)
			{
				fillStyles = new Vector.<FillStyleRecord>();
			}

			this.count = count;
			this.fillStyles = fillStyles;
		}
	}
}