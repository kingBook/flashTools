package app.swfTool.swf8.tags
{
	
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.MatrixRecord;
	import app.swfTool.swf3.records.CXFormWithAlphaRecord;
	import app.swfTool.swf.records.ClipActionsRecord;
	import app.swfTool.swf.records.FilterListRecord;
	import app.swfTool.swf.records.RGBARecord;

	public class PlaceObject3Tag extends SWFTag
	{
		public var depth:uint;
		public var className:Object;
		public var characterId:Object;
		public var matrix:MatrixRecord;
		public var colorTransform:CXFormWithAlphaRecord;
		public var ratio:Object;
		public var name:Object;
		public var clipDepth:Object;
		public var surfaceFilterList:FilterListRecord;
		public var blendMode:Object;
		public var bitmapCache:Object;
		public var visible:Object;
		public var backgroundColor:RGBARecord;
		public var clipActions:ClipActionsRecord;
		
		override public function toXMLString():String{
			var xml:XML=createXML();
			xml.@depth=depth;
			if(className){
				xml.@className=className;
			}
			if(characterId){
				xml.@characterId=characterId;
			}
			if(matrix){
				xml.appendChild(matrix.toXML());
			}
			if(colorTransform){
				xml.appendChild(colorTransform.toXML());
			}
			if(ratio){
				xml.@ratio=ratio;
			}
			if(name){
				xml.@name=name;
			}
			if(clipDepth){
				xml.@clipDepth=clipDepth;
			}
			if(surfaceFilterList){
				xml.appendChild(surfaceFilterList.toXML());
			}
			if(blendMode){
				xml.@blendMode=blendMode;
			}
			if(bitmapCache){
				xml.@bitmapCache=bitmapCache;
			}
			if(visible){
				xml.@visible=visible;
				xml.@backgroundColor=backgroundColor.toString();
			}
			if(clipActions){
				xml.@clipActions="...";
			}
            return xml.toXMLString();
        }
	}
	
	
}