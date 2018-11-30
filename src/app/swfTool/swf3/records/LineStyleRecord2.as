package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;
	import app.swfTool.swf.records.RGBARecord;

	public class LineStyleRecord2 implements IRecord
	{
		public var width:uint;
		public var color:RGBARecord;
		
		public function toXML():XML{
			var xml:XML=<LineStyleRecord2/>;
			xml.@width=width;
			xml.@color=color.toString();
			return xml;
		}
	}
}