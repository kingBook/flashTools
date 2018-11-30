package app.swfTool.swf.records
{
	public class EndShapeRecord implements IShapeRecord {
		public function toXML():XML{
			var xml:XML=<EndShapeRecord/>;
			return xml;
		}
	}
}