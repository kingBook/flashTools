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
		
		/**
		 * [a,c,tx,
		 *  b,d,ty]
		 * [scaleX, skewX, tx,
		 *  skewY, scaleY, ty]
		 */
		public function toString():String{
			//[scaleX, skewX, tx,
		 	//  skewY, scaleY,ty]
			
			var scaleX:Number=scale?scale.x:1;
			var scaleY:Number=scale?scale.y:1;
			var skewX:Number=rotate?rotate.skew0:0;
			var skewY:Number=rotate?rotate.skew1:0;
			var tx:Number=translate?translate.x:0;
			var ty:Number=translate?translate.y:0;
			return scaleX+","+skewX+","+tx+","+skewY+","+scaleY+","+ty;
		}
		
		/*public function toXML():XML{
			var xml:XML=<Matrix/>;
			if(scale){
				xml.@scaleX=scale.x;
				xml.@scaleY=scale.y;
			}
			if(rotate){
				xml.@rotateSkew0=rotate.skew0;
				xml.@rotateSkew1=rotate.skew1;
			}
			if(translate){
				xml.@translateX=translate.x;
				xml.@translateY=translate.y;
			}
			return xml;
		}*/
	}
}