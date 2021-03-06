package app.swfTool.swf3.tags
{
	

	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf.records.MatrixRecord;
	import app.swfTool.swf3.records.CXFormWithAlphaRecord;
	import app.swfTool.swf.records.ClipActionsRecord;

	public class PlaceObject2Tag extends SWFTag
	{
		public var move:Boolean;
		public var depth:uint;
		public var characterId:Object;
		public var matrix:MatrixRecord;
		public var colorTransform:CXFormWithAlphaRecord;
		public var ratio:Object;
		public var name:Object;
		public var clipDepth:Object;
		public var clipActions:ClipActionsRecord;

		public function PlaceObject2Tag(move:Boolean = false, depth:uint = 0, characterId:Object = null, matrix:MatrixRecord = null, colorTransform:CXFormWithAlphaRecord = null, ratio:Object = null, name:String = null, clipDepth:Object = null, clipActions:ClipActionsRecord = null)
		{
			this.move = move;
			this.depth = depth;
			this.characterId = characterId;
			this.matrix = matrix;
			this.colorTransform = colorTransform;
			this.ratio = ratio;
			this.name = name;
			this.clipDepth = clipDepth;
			this.clipActions = clipActions;
		}
		
		override public function toXMLString():String{
			var xml:XML=createXML();
			xml.@move=move;
			xml.@depth=depth;
			if(characterId){
				xml.@characterId=characterId;
			}
			if(matrix){
				xml.@matrix=matrix.toString();
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
			if(clipActions){
				xml.@clipActions="...";
			}
            return xml.toXMLString();
        }
	}
}