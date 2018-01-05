package app.swfTool.swf3.tags
{
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.swf3.records.ButtonRecord2;
	import app.swfTool.swf3.actions.ButtonCondAction;
	
	public class DefineButton2Tag extends SWFTag
	{
		public var buttonId:uint;
		public var reserved:uint;
		public var trackAsMenu:Boolean;
		public var actionOffset:uint;
		public var characters:Vector.<ButtonRecord2>;
		public var actions:ButtonCondAction;
	}
}