package app.swfTool.swf3.tags
{
	
	import app.swfTool.swf.tags.SWFTag;

	public class FrameLabelTag extends SWFTag
	{
		public var name:String;

		public function FrameLabelTag(name:String = '')
		{
			this.name = name;
		}
		/*
		override public function read(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.read(swf, swfBytes);

			name = swfcontext.bytes.readString();
		}
		override public function write(swf:SWF, swfBytes:SWFByteArray):void
		{
			super.write(swf, swfBytes);

			swfBytes.writeString(name);
		}
		*/
	}
}