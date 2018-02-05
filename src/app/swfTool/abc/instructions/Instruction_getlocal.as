package app.swfTool.abc.instructions
{
	
	public class Instruction_getlocal implements IInstruction
	{
		public var index:uint;

		public function Instruction_getlocal(index:uint = 0)
		{
			this.index = index;
		}
	}
}