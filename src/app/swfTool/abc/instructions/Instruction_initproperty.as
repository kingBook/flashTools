package app.swfTool.abc.instructions
{
	
	public class Instruction_initproperty implements IInstruction
	{
		//multiname
		public var index:uint;

		public function Instruction_initproperty(index:uint = 0)
		{
			this.index = index;
		}
	}
}