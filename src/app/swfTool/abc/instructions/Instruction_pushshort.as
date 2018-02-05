package app.swfTool.abc.instructions
{
	
	public class Instruction_pushshort implements IInstruction
	{
		public var value:uint;
		
		public function Instruction_pushshort(value:uint = 0)
		{
			this.value = value;
		}
	}
}