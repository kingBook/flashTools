package app.swfTool.abc.instructions
{
	public class UnknownInstruction implements IInstruction
	{
		public var type:uint;
		
		public function UnknownInstruction(type:uint)
		{
			this.type = type;
		}
	}
}