package com.edgarcai.decompiler.data.swf3.tags
{
	import com.edgarcai.decompiler.data.swf.SWF;
	import com.edgarcai.decompiler.SWFByteArray;
	import com.edgarcai.decompiler.data.swf3.records.CXFormWithAlphaRecord;
	import com.edgarcai.decompiler.data.swf.records.ClipActionsRecord;
	import com.edgarcai.decompiler.data.swf.records.MatrixRecord;
	import com.edgarcai.decompiler.data.swf.tags.SWFTag;

	public class PlaceObject2Tag extends SWFTag
	{
		public var move:Boolean;
		public var depth:uint;
		public var characterId:Object;
		public var matrix:MatrixRecord;
		public var colorTransform:CXFormWithAlphaRecord;
		public var ratio:Object;
		public var name:String;
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
	}
}