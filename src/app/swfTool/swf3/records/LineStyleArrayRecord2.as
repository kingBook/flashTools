package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;

	public class LineStyleArrayRecord2 implements IRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var lineStyles:Vector.<LineStyleRecord2>;
		
		public function toXML():XML{
			var xml:XML=<LineStyleArrayRecord2/>;
			xml.@count=count;
			xml.@countExtended=countExtended;
			for(var i:int=0;i<lineStyles.length;i++){
				xml.appendChild(lineStyles[i].toXML());
			}
			return xml;
		}
	}
}