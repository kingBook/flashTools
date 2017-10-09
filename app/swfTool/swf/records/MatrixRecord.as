package app.swfTool.swf.records
{
	import app.swfTool.SWFByteArray;
	import app.swfTool.SWFReader;
	import app.swfTool.swf.structures.MatrixRotateStructure;
	import app.swfTool.swf.structures.MatrixScaleStructure;
	import app.swfTool.swf.structures.MatrixTranslateStructure;
	
	public class MatrixRecord implements IRecord
	{
		public var scale:MatrixScaleStructure;
		public var rotate:MatrixRotateStructure;
		public var translate:MatrixTranslateStructure;
		
		public function MatrixRecord(scale:MatrixScaleStructure = null, rotate:MatrixRotateStructure = null,
									 translate:MatrixTranslateStructure = null)
		{
			this.scale = scale;
			this.rotate = rotate;
			this.translate = translate;
		}
	}
}