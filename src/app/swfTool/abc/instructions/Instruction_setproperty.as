package app.swfTool.abc.instructions
{
	
	public class Instruction_setproperty implements IInstruction
	{
		public var index:uint;
		
		public function Instruction_setproperty(index:uint = 0)
		{
			this.index = index;
		}
	}
}