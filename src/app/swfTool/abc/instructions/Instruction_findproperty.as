package app.swfTool.abc.instructions
{
	
	public class Instruction_findproperty implements IInstruction
	{
		public var index:uint;

		public function Instruction_findproperty(index:uint = 0)
		{
			this.index = index;
		}
	}
}