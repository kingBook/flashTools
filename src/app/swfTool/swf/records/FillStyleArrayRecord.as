package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

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
		
		public function toXML():XML{
			var xml:XML=<FillStyleArrayRecord/>;
			xml.@count=count;
			for(var i:int=0;i<fillStyles.length;i++){
				xml.appendChild(fillStyles[i].toXML());
			}
			return xml;
		}
	}
}