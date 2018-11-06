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
		 */
		public function toString():String{
			//[scaleX, skewY, tx,
		 	//  skewX, scaleY,ty]
			var str:String="";
			if(scale)str+="scale:"+scale.x+","+scale.y+"\n";
			if(rotate)str+="rotate:"+rotate.skew0+","+rotate.skew1+"\n";
			if(translate)str+="translate:"+translate.x+","+translate.y+";"
			return str;
		}
		
		public function toXML():XML{
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
		}
	}
}