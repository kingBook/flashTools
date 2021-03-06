﻿package app.swfTool.swf.records
{
	public class RectangleRecord implements IRecord
	{
		public var xMin:int;
		public var xMax:int;
		public var yMin:int;
		public var yMax:int;
		
		public function RectangleRecord(xMin:int = 0, xMax:int = 0, yMin:int = 0, yMax:int = 0)
		{
			this.xMin = xMin;
			this.xMax = xMax;
			this.yMin = yMin;
			this.yMax = yMax;
		}
        
        public function toString():String{
            return xMin+","+yMin+","+xMax+","+yMax;
        }
	}
}