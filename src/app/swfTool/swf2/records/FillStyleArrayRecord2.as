package app.swfTool.swf2.records
{

	import app.swfTool.swf.records.IRecord;
	import app.swfTool.swf.records.FillStyleRecord;

	public class FillStyleArrayRecord2 implements IRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var fillStyles:Vector.<FillStyleRecord>;
		
		public function toXML():XML{
			var xml:XML=<FillStyleArrayRecord2/>;
			xml.@count=count;
			xml.@countExtended=countExtended;
			for(var i:int=0;i<fillStyles.length;i++){
				xml.appendChild(fillStyles[i].toXML());
			}
			return xml;
		}
	}
	
}