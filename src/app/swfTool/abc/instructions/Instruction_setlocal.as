package app.swfTool.abc.instructions
{
	
	public class Instruction_setlocal implements IInstruction
	{
		public var index:uint;

		public function Instruction_setlocal(index:uint = 0)
		{
			this.index = index;
		}
	}
}