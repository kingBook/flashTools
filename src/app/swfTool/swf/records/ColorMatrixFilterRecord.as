package app.swfTool.swf.records
{
	public class ColorMatrixFilterRecord
	{
		public var matrix:Vector.<Number>;

		public function ColorMatrixFilterRecord(matrix:Vector.<Number> = null)
		{
			if(matrix == null)
			{
				matrix = new Vector.<Number>();
			}

			this.matrix = matrix;
		}
		
		public function mergeToXML(xml:XML):void{
			var strMatrix:String="";
			for(var i:int=0;i<matrix.length;i++){
				strMatrix+=matrix[i];
				if(i<matrix.length-1)strMatrix+=",";
			}
			xml.@matrix=strMatrix;
		}
	}
}