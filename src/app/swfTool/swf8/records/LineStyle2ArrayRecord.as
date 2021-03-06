package app.swfTool.swf8.records
{
	public class LineStyle2ArrayRecord
	{
		public var count:uint;
		public var countExtended:uint;
		public var lineStyles:Vector.<LineStyle2Record>;

		public function LineStyle2ArrayRecord(count:uint = 0, countExtended:uint = 0, lineStyles:Vector.<LineStyle2Record> = null)
		{
			this.count = count;
			this.countExtended = countExtended;
			this.lineStyles = lineStyles;
		}
		
		public function toXML():XML{
			var xml:XML=<LineStyle2ArrayRecord/>;
			xml.@count=count;
			xml.@countExtended=countExtended;
			for(var i:int=0;i<lineStyles.length;i++){
				xml.appendChild(lineStyles[i].toXML());
			}
			return xml;
		}
	}
}