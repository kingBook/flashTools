package app.swfTool.swf.records
{
	public class CurvedEdgeRecord implements IShapeRecord
	{
		public var controlDeltaX:int;
		public var controlDeltaY:int;
		public var anchorDeltaX:int;
		public var anchorDeltaY:int;

		public function CurvedEdgeRecord(controlDeltaX:int = 0, controlDeltaY:int = 0, anchorDeltaX:int = 0, anchorDeltaY:int = 0)
		{
			this.controlDeltaX = controlDeltaX;
			this.controlDeltaY = controlDeltaY;
			this.anchorDeltaX = anchorDeltaX;
			this.anchorDeltaY = anchorDeltaY;
		}
		
		public function toXML():XML{
			var xml:XML=<CurvedEdgeRecord/>;
			xml.@controlDeltaX=controlDeltaX;
			xml.@controlDeltaY=controlDeltaY;
			xml.@anchorDeltaX=anchorDeltaX;
			xml.@anchorDeltaY=anchorDeltaY;
			return xml;
		}
	}
}