package app.swfTool.abc.instructions
{
	
	public class Instruction_pushuint implements IInstruction
	{
		public var index:uint;
		
		public function Instruction_pushuint(index:uint = 0)
		{
			this.index = index;
		}
	}
}