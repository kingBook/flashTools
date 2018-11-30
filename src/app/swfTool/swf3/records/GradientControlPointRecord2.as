package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;
	import app.swfTool.swf.records.RGBARecord;

	public class GradientControlPointRecord2 implements IRecord
	{
		public var ratio:uint;
		public var color:RGBARecord;
		
		public function toXML():XML{
			var xml:XML=<GradientControlPointRecord2/>;
			xml.@ratio=ratio;
			xml.@color=color.toString();
			return xml;
		}
	}
}