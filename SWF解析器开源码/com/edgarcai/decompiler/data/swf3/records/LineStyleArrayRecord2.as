package com.edgarcai.decompiler.data.swf3.records
{
	import com.edgarcai.decompiler.data.swf.records.IRecord;

	public class LineStyleArrayRecord2 implements IRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var lineStyles:Vector.<LineStyleRecord2>;
	}
}